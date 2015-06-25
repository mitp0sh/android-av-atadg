.class public Lde/gdata/mobilesecurity/services/SimChangeService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final SIM_CHANGE_DETECTED:I = 0x7ea76

.field private static a:Lde/gdata/mobilesecurity/services/f; = null

.field public static final mServiceName:Ljava/lang/String; = "SimChangeService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/services/SimChangeService;->a:Lde/gdata/mobilesecurity/services/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    const-string v0, "SimChangeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/SimChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/SimChangeService;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/SimChangeService;->a()Z

    move-result v0

    return v0
.end method

.method public static addSimChangedLogEntry(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 225
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 227
    monitor-enter v1

    .line 228
    :try_start_0
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getWaitForReboot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWaitForReboot(Z)V

    .line 231
    const/16 v0, 0x15

    const v2, 0x7f0d00c8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v0, v2, v3, v4}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 234
    :cond_0
    monitor-exit v1

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addSimChangedNotification(Landroid/content/Context;)V
    .locals 6

    .prologue
    const v2, 0x7f0d00c8

    .line 216
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 217
    const/16 v1, 0x8

    const v3, 0x7f02013a

    const v4, 0x7f02012f

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(IIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 222
    :cond_0
    return-void
.end method

.method public static triggerSimChangeAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 137
    new-instance v6, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->notifyOnSimChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getWaitForReboot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setNotifyOnSimChange(Z)V

    .line 145
    invoke-static {p0}, Lde/gdata/mobilesecurity/services/SimChangeService;->addSimChangedNotification(Landroid/content/Context;)V

    .line 146
    invoke-static {p0}, Lde/gdata/mobilesecurity/services/SimChangeService;->addSimChangedLogEntry(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRemotePasswordResetSender()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 151
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    const v4, 0x7f0d04d4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 157
    const v5, 0x7f0d04d5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send sms to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 164
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 165
    :cond_4
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->locateOnSimChange()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lde/gdata/mobilesecurity/services/RemoteCommandService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    const-string v2, "command"

    const-string v3, "locate"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v2, "sender"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 173
    :cond_5
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->lockOnSimChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->lockPhone(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static triggerSimUpdateAction(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 179
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getStoredIMSI()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 185
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update: stored imsi empty, current imsi:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->storeIMSI(Ljava/lang/String;)V

    move-object v0, v1

    .line 191
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post: stored imsi != current imsi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->storeIMSI(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated imsi stored imsi: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 208
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 209
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->removeCustomNotification(I)V

    .line 210
    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 211
    const v0, 0x7f0d00e7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    return-void

    .line 200
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pre: stored imsi == current imsi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 201
    const-string v0, ""

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->storeIMSI(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWaitForReboot(Z)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted imsi stored imsi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getStoredIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 243
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 245
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isEulaAccepted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    sget-object v1, Lde/gdata/mobilesecurity/services/SimChangeService;->a:Lde/gdata/mobilesecurity/services/f;

    if-nez v1, :cond_0

    new-instance v1, Lde/gdata/mobilesecurity/services/f;

    invoke-direct {v1, p0, v0, p0}, Lde/gdata/mobilesecurity/services/f;-><init>(Lde/gdata/mobilesecurity/services/SimChangeService;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Landroid/content/Context;)V

    sput-object v1, Lde/gdata/mobilesecurity/services/SimChangeService;->a:Lde/gdata/mobilesecurity/services/f;

    .line 248
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/SimChangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 252
    sget-object v1, Lde/gdata/mobilesecurity/services/SimChangeService;->a:Lde/gdata/mobilesecurity/services/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 254
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 255
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 256
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setState(I)V

    .line 257
    sget-object v1, Lde/gdata/mobilesecurity/services/SimChangeService;->a:Lde/gdata/mobilesecurity/services/f;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/services/f;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 248
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching phone state listener failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
