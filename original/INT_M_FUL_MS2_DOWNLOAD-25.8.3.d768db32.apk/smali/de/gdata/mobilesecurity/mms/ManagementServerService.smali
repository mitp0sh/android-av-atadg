.class public Lde/gdata/mobilesecurity/mms/ManagementServerService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "MMS"

    sput-object v0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->a:Ljava/lang/String;

    .line 27
    const-string v0, "mms.status_update"

    sput-object v0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private a()J
    .locals 7

    .prologue
    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastMMSSyncTime()J

    move-result-wide v0

    .line 66
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSyncIntervalWlan()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    .line 67
    iget-object v4, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSyncInterval()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    .line 71
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isConnectedViaWiFi(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    add-long/2addr v0, v2

    .line 77
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 78
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 79
    sub-long/2addr v0, v2

    .line 81
    :goto_1
    return-wide v0

    .line 74
    :cond_0
    add-long/2addr v0, v4

    goto :goto_0

    .line 81
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private a(J)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 166
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 167
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lde/gdata/mobilesecurity/mms/ManagementServerService;->b:Ljava/lang/String;

    const/4 v6, 0x0

    const-class v7, Lde/gdata/mobilesecurity/mms/ManagementServerService;

    invoke-direct {v4, v5, v6, p0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v8, v4, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 170
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->d:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSLogDetails()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->d:Landroid/content/Context;

    const/16 v1, 0x29

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 91
    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 95
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSyncInterval()I

    move-result v0

    if-nez v0, :cond_2

    .line 99
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isConnectedViaWiFi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :cond_2
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->a()J

    move-result-wide v0

    .line 106
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-wide v0, v2

    .line 110
    :cond_3
    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 111
    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->a(J)V

    goto :goto_0

    .line 115
    :cond_4
    new-instance v1, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->updateCommonSettings()Z

    move-result v0

    .line 119
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSLastConnectSucceeded(Z)V

    .line 121
    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->ALL:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->updateMDMSettings(I)Z

    move-result v2

    and-int/2addr v0, v2

    .line 122
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->provideAppList()Z

    move-result v2

    and-int/2addr v2, v0

    .line 124
    invoke-static {p0}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->getArrayListDevicePolicies(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;

    .line 126
    new-instance v4, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->getPolicyID()I

    move-result v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->loadDevicePolicyReactionItemFromDB(I)V

    .line 128
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->addStorageEncryptionReport()V

    goto :goto_1

    .line 131
    :cond_5
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->flagItemsToSend(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 132
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->sendFileScanReports()Z

    move-result v0

    and-int/2addr v0, v2

    .line 133
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->sendCommonReports()Z

    move-result v2

    and-int/2addr v0, v2

    .line 134
    if-eqz v0, :cond_6

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->flagSuccess(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 136
    :cond_6
    invoke-static {p0}, Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;->flagItemsToSend(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->requestUnblockApps()Z

    move-result v2

    and-int/2addr v0, v2

    .line 138
    if-eqz v0, :cond_7

    invoke-static {p0}, Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;->flagSuccess(Landroid/content/Context;)V

    .line 140
    :cond_7
    invoke-static {p0}, Lde/gdata/mobilesecurity/mms/json/UnblockCallRequest;->flagItemsToSend(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->requestUnblockCalls()Z

    move-result v2

    and-int/2addr v0, v2

    .line 142
    if-eqz v0, :cond_8

    invoke-static {p0}, Lde/gdata/mobilesecurity/mms/json/UnblockCallRequest;->flagSuccess(Landroid/content/Context;)V

    .line 144
    :cond_8
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->updateEula()Z

    move-result v2

    and-int/2addr v0, v2

    .line 146
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->getLogMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->a(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->isDataModified()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 149
    const-string v1, "Private"

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "Toddler"

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "Teenager"

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 152
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "PROFILE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 154
    :cond_9
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLastMMSSyncTime(J)V

    .line 156
    if-eqz v0, :cond_a

    .line 157
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->a()J

    move-result-wide v0

    .line 162
    :goto_2
    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->a(J)V

    goto/16 :goto_0

    .line 159
    :cond_a
    const-wide/32 v0, 0x36ee80

    goto :goto_2
.end method

.method public static scheduleUpdate(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/mms/ManagementServerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    sget-object v1, Lde/gdata/mobilesecurity/mms/ManagementServerService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x7530

    .line 45
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 46
    iput-object p0, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->d:Landroid/content/Context;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ManagementServerService;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastMMSSyncTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 50
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v1, Lde/gdata/mobilesecurity/mms/ManagementServerService;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "RECEIVE_SHOW_PROGRESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->b()V

    .line 62
    :cond_1
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
