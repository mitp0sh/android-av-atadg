.class public Lde/gdata/mobilesecurity/util/BasePreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BATTERY_LOW:Ljava/lang/String; = "BATTERY_LOW"

.field public static final ENABLE_PERIODIC_SCAN:Ljava/lang/String; = "ENABLE_TIMED_SCAN"

.field public static final ENABLE_PERIODIC_UPDATE:Ljava/lang/String; = "ENABLE_PERIODIC_UPDATE"

.field public static final LOGIN_LIMIT:Ljava/lang/String; = "LOGIN_LIMIT"

.field public static final PERIODIC_SCAN_FREQ:Ljava/lang/String; = "PERIODIC_SCAN_FREQ"

.field public static final PERIODIC_SCAN_TYPE:Ljava/lang/String; = "PERIODIC_SCAN_TYPE"

.field public static final PERIODIC_UPDATE_FREQ:Ljava/lang/String; = "PERIODIC_UPDATE_FREQ"

.field public static final PERIODIC_UPDATE_WIFI_ONLY:Ljava/lang/String; = "PERIODIC_UPDATE_WIFI_ONLY"

.field public static final POWER_CONNECTED:Ljava/lang/String; = "POWER_CONNECTED"

.field public static final SCANTYPE_APPS:I = 0x1

.field public static final SCANTYPE_SYSTEM:I = 0x2

.field public static final SCAN_ON_INSTALL:Ljava/lang/String; = "SCAN_ON_INSTALL"

.field public static final SCAN_ON_POWER_CONNECTED:Ljava/lang/String; = "SCAN_POWER_CONNECTED"

.field public static final SCAN_POSTPONED:Ljava/lang/String; = "SCAN_POSTPONED"

.field public static final SHOW_TRAY_ICON:Ljava/lang/String; = "SHOW_TRAY_ICON"

.field public static final SKIP_ON_LOW_BATTERY:Ljava/lang/String; = "BATTERY_SKIP"

.field public static final TRAY_ICON_TYPE:Ljava/lang/String; = "TRAY_ICON_TYPE"

.field public static final TRIAL_FREE_TRIAL_REGISTRATION_DATE:Ljava/lang/String; = "TRIAL_REGDATE"

.field public static final TRIAL_GENERATION:Ljava/lang/String; = "TRIAL_GENERATION"

.field public static final TRIAL_REGNO:Ljava/lang/String; = "TRIAL_REGNO"

.field public static final TRIAL_STATE:Ljava/lang/String; = "TRIAL_STATE"

.field public static final USERNAME:Ljava/lang/String; = "USERNAME"

.field private static volatile c:Ljava/lang/String;

.field public static volatile oemUpdateUserName:Ljava/lang/String;

.field public static volatile useOemUpdateLogin:Z


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/util/BasePreferences;->useOemUpdateLogin:Z

    .line 133
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/util/BasePreferences;->oemUpdateUserName:Ljava/lang/String;

    .line 134
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/util/BasePreferences;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->b:Landroid/content/Context;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    .line 144
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TRIAL_APP_NAME"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 728
    return-void
.end method


# virtual methods
.method public getAllowRemoteLocate()Z
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "ALLOW_REMOTE_LOCATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowRemoteLock()Z
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "ALLOW_REMOTE_LOCK"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowRemotePasswordReset()Z
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "ALLOW_REMOTE_PASSWORD_RESET"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowRemoteWipe()Z
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "ALLOW_REMOTE_WIPE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowTelemetry()Ljava/lang/String;
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "ALLOW_TELEMETRY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationFont()Ljava/lang/String;
    .locals 3

    .prologue
    .line 743
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "APPLICATION_FONT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvFreeDefaultPwd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    new-instance v0, Ljava/lang/String;

    const-string v1, "WjhKOVkx"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getAvFreeDefaultUser()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    new-instance v0, Ljava/lang/String;

    const-string v1, "R0RhdGE1OTQw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getDebugPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 779
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "DEBUG_PACKAGE_NAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptedPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 248
    sget-boolean v0, Lde/gdata/mobilesecurity/util/BasePreferences;->useOemUpdateLogin:Z

    if-eqz v0, :cond_1

    sget-object v0, Lde/gdata/mobilesecurity/util/BasePreferences;->c:Ljava/lang/String;

    .line 258
    :cond_0
    :goto_0
    return-object v0

    .line 250
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "PASSWORD"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->decodeAndDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public getDecryptedUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    sget-boolean v0, Lde/gdata/mobilesecurity/util/BasePreferences;->useOemUpdateLogin:Z

    if-eqz v0, :cond_1

    sget-object v0, Lde/gdata/mobilesecurity/util/BasePreferences;->oemUpdateUserName:Ljava/lang/String;

    .line 243
    :cond_0
    :goto_0
    return-object v0

    .line 235
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "USERNAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->decodeAndDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public getDeviceInfected()I
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "DEVICE_INFECTED_STATE"

    sget v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_NONE:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGlobalIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "GLOBAL_IDENTIFIER"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleAdditionalInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "GOOGLE_ADDITIONAL_INFO"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastInfectedNotificationShown()J
    .locals 4

    .prologue
    .line 771
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "LAST_INFECTED_NOTIFICATION_SHOWN"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastNewsNotificationShown()J
    .locals 4

    .prologue
    .line 763
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "LAST_NEWS_NOTIFICATION_SHOWN"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastProcessedSoftwareUpdateVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "PROCESSED_SOFTWARE_UPDATE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastScanNotificationShown()J
    .locals 4

    .prologue
    .line 747
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "LAST_SCAN_NOTIFICATION_SHOWN"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastScanWasSystemScan()Z
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "LAST_SCAN_WAS_SYSTEM_SCAN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastSignatureUpdate()J
    .locals 4

    .prologue
    .line 440
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "LAST_SIGNATURE_UPDATE"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSigsNotificationShown()J
    .locals 4

    .prologue
    .line 755
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "LAST_SIGS_NOTIFICATION_SHOWN"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastVersionCode()I
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "LAST_VERSION_CODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLicensedGoogleAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "GACCOUNT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginLimit()Ljava/util/Date;
    .locals 5

    .prologue
    const/16 v3, 0x8

    .line 346
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "LOGIN_LIMIT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 348
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 349
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 350
    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 351
    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 352
    new-instance v3, Ljava/util/GregorianCalendar;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v3, v1, v2, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 354
    :catch_0
    move-exception v0

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNewsCounter()I
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "NEWS_COUNTER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNewsUnread()I
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "NEWS_UNREAD"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOemDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "OEMOPTION_DISPLAYNAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOemPartner()Ljava/lang/String;
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "OEMOPTION_PARTNER"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodicScanInterval()Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "PERIODIC_SCAN_FREQ"

    const-string v2, "7"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodicScanIntervalDays()I
    .locals 1

    .prologue
    .line 275
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getPeriodicScanInterval()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 278
    :goto_0
    return v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPeriodicScanIsSystemScan()Z
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getPeriodicScanType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeriodicScanType()I
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "PERIODIC_SCAN_TYPE"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPeriodicUpdateInterval()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "PERIODIC_UPDATE_FREQ"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodicUpdateIntervalDays()I
    .locals 1

    .prologue
    .line 296
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getPeriodicUpdateInterval()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 299
    :goto_0
    return v0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    .line 299
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPurchaseData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "INAPP_DATA"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePasswordResetSender()Ljava/lang/String;
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "REMOTE_PASSWORD_RESET_SENDER"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSMSCommandPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "SMS_COMMAND_PASSWORD"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "SIGNATURE_VERSION"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemScanEstimateFiles()J
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "SYSTEM_SCAN_ESTIMATE_FILES"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeOfLastLoginLimitUpdate()J
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TIME_OF_LAST_LOGIN_LIMIT_UPDATE"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeOfLastManualScan()J
    .locals 4

    .prologue
    .line 518
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TIME_OF_LAST_MANUAL_SCAN"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeOfLastNewsCounterCheck()J
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "NEWS_COUNTER_CHECK"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeOfLastPeriodicScan()J
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TIME_OF_LAST_PERIODIC_SCAN"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeOfLastPeriodicUpdate()J
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TIME_OF_LAST_PERIODIC_UPDATE"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeOfScan()J
    .locals 4

    .prologue
    .line 857
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTimeOfLastManualScan()J

    move-result-wide v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTimeOfLastPeriodicScan()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrayIconType()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 207
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "SHOW_TRAY_ICON"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SHOW_TRAY_ICON"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TRAY_ICON_TYPE"

    const-string v2, "never"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TRAY_ICON_TYPE"

    const-string v2, "always"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrialData(Lde/gdata/mobilesecurity/util/Trial;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TRIAL_STATE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/Trial;->setTrialState(I)V

    .line 330
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TRIAL_GENERATION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lde/gdata/mobilesecurity/util/Trial;->setGeneration(IZ)V

    .line 331
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TRIAL_REGNO"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/Trial;->setRegNoEnc(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TRIAL_REGDATE"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lde/gdata/mobilesecurity/util/Trial;->setFreeTrialRegistrationDate(J)V

    .line 333
    return-void
.end method

.method public getUiOptionBus()Z
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "UI_BUS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUiOptionNoNews()Z
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "UI_NO_NEWS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUiOptionNoUpdateOffer()Z
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "UI_NO_UPDATE_OFFER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUpdateServerRegion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "UPDATE_SERVER_REGION"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActionCenterEnabled()Z
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "ACTION_CENTER_ENABLED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBatteryLow()Z
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "BATTERY_LOW"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEulaAccepted()Z
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "EULA_ACCEPTED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFreeVersionRegistered()Z
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "FREE_VERSION_REGISTERED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGoogleBillingSupported()Z
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "GBILLING"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHutchinsonOemVersion()Z
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getOemPartner()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hutchinson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInstalledFromMarket()Z
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLicensedGoogleAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrangeOemVersion()Z
    .locals 2

    .prologue
    .line 472
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getOemPartner()Ljava/lang/String;

    move-result-object v0

    const-string v1, "orange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPeriodicScan()Z
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "ENABLE_TIMED_SCAN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPeriodicUpdate()Z
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "ENABLE_PERIODIC_UPDATE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPeriodicUpdateWifiOnly()Z
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "PERIODIC_UPDATE_WIFI_ONLY"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPowerConnected()Z
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "POWER_CONNECTED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isScanAppOnInstall()Z
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "SCAN_ON_INSTALL"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSendErrorReports()Z
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "SEND_ERROR_REPORTS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSendUsageData()Z
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "SEND_USER_DATA"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowTrayIcon()Z
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTrayIconType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "never"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSignatureUpdateInProgress()Z
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "SIGUPDT_IN_PROGRESS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public oldTrialExisted()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 336
    .line 337
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v2, "TRIAL_STATE"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v2, "TRIAL_GENERATION"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v2, "TRIAL_REGNO"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v2, "TRIAL_REGDATE"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 340
    :cond_0
    const/4 v0, 0x1

    .line 342
    :cond_1
    return v0
.end method

.method public printAllToInfo()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 153
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_3
    return-void
.end method

.method public scanOnPowerConnected()Z
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "SCAN_POWER_CONNECTED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected setActionCenterEnabled(Z)V
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ACTION_CENTER_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 844
    return-void
.end method

.method public setAllowRemoteLocate(Z)V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ALLOW_REMOTE_LOCATE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 635
    return-void
.end method

.method public setAllowRemoteLock(Z)V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ALLOW_REMOTE_LOCK"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 627
    return-void
.end method

.method public setAllowRemotePasswordReset(Z)V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ALLOW_REMOTE_PASSWORD_RESET"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 639
    return-void
.end method

.method public setAllowRemoteWipe(Z)V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ALLOW_REMOTE_WIPE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 631
    return-void
.end method

.method public setAllowTelemetry(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ALLOW_TELEMETRY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 716
    return-void
.end method

.method public setAndEncryptUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 597
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/MyUtil;->encryptAndEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-static {p2}, Lde/gdata/mobilesecurity/util/MyUtil;->encryptAndEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    new-instance v2, Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v3, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setUsername(Landroid/content/Context;Ljava/lang/String;)V

    .line 600
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "USERNAME"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 601
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "PASSWORD"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 602
    return-void
.end method

.method public setApplicationFont(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "APPLICATION_FONT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 740
    return-void
.end method

.method public setBatteryLow(Z)V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BATTERY_LOW"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 495
    return-void
.end method

.method public setCustomizedSetupOptions(Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 792
    if-nez p2, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 796
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 797
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 798
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 799
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 800
    const-string v1, ""

    .line 801
    const-string v0, ""

    .line 802
    :goto_1
    if-eq v2, v6, :cond_0

    .line 803
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 804
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 805
    const-string v0, ""

    .line 806
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 807
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 808
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 811
    :cond_2
    if-ne v2, v7, :cond_5

    .line 812
    const-string v4, "uioption"

    invoke-static {v1, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 813
    const-string v4, "noUpdateOffer"

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 814
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->setUiOptionNoUpdateOffer(Z)V

    .line 815
    :cond_3
    const-string v4, "noNews"

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 816
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->setUiOptionNoNews(Z)V

    .line 817
    :cond_4
    const-string v4, "business"

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 818
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->setUiOptionBus(Z)V

    .line 821
    :cond_5
    if-ne v2, v7, :cond_6

    .line 822
    const-string v4, "trialoption"

    invoke-static {v1, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 823
    const-string v4, "usetrialappname"

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 824
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 825
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 826
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->a(Z)V

    .line 832
    :cond_6
    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    .line 833
    const-string v1, ""

    .line 834
    const-string v0, ""

    .line 836
    :cond_7
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto/16 :goto_1

    .line 838
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public setDebugPackageName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DEBUG_PACKAGE_NAME"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 784
    return-void
.end method

.method public setDeviceInfected(Landroid/content/Context;I)V
    .locals 8

    .prologue
    const v5, 0x7f0d03bb

    const v3, 0x7f02013a

    const v4, 0x7f02012f

    const/4 v7, 0x2

    const/4 v1, 0x1

    .line 526
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "DEVICE_INFECTED_STATE"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 529
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 531
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->hasCustomNotification(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v7}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->hasCustomNotification(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v1

    .line 533
    :goto_0
    if-eqz v2, :cond_1

    .line 534
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->removeCustomNotification(I)V

    .line 535
    invoke-virtual {v0, v7}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->removeCustomNotification(I)V

    .line 538
    :cond_1
    sget v6, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_NONE:I

    if-eq p2, v6, :cond_5

    .line 539
    sget v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_MALWARE:I

    if-ne p2, v2, :cond_4

    .line 540
    const v2, 0x7f0d03b9

    const v5, 0x7f0d03bc

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(IIIII)Z

    .line 543
    const v1, 0x7f0d03bc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 553
    :cond_2
    :goto_1
    return-void

    .line 531
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 545
    :cond_4
    const v2, 0x7f0d03ba

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(IIIII)Z

    .line 548
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    goto :goto_1

    .line 551
    :cond_5
    if-eqz v2, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public setEmptyUsernameAndPassword()V
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "USERNAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 606
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PASSWORD"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 607
    return-void
.end method

.method public setEulaAccepted(Z)V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EULA_ACCEPTED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 523
    return-void
.end method

.method public setFreeVersionRegistered(Z)V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FREE_VERSION_REGISTERED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 696
    return-void
.end method

.method public setGlobalIdentifier(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GLOBAL_IDENTIFIER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 720
    return-void
.end method

.method public setGoogleAdditionalInfo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GOOGLE_ADDITIONAL_INFO"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 712
    return-void
.end method

.method public setGoogleBillingSupported(Z)V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GBILLING"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 724
    return-void
.end method

.method public setLastInfectedNotificationShown(J)V
    .locals 3

    .prologue
    .line 775
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_INFECTED_NOTIFICATION_SHOWN"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 776
    return-void
.end method

.method public setLastNewsNotificationShown(J)V
    .locals 3

    .prologue
    .line 767
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_NEWS_NOTIFICATION_SHOWN"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 768
    return-void
.end method

.method public setLastProcessedSoftwareUpdateVersion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PROCESSED_SOFTWARE_UPDATE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 692
    return-void
.end method

.method public setLastScanNotificationShown(J)V
    .locals 3

    .prologue
    .line 751
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_SCAN_NOTIFICATION_SHOWN"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 752
    return-void
.end method

.method public setLastScanWasSystemScan(Z)V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_SCAN_WAS_SYSTEM_SCAN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 664
    return-void
.end method

.method public setLastSignatureUpdate(J)V
    .locals 3

    .prologue
    .line 703
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_SIGNATURE_UPDATE"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 704
    return-void
.end method

.method public setLastSigsNotificationShown(J)V
    .locals 3

    .prologue
    .line 759
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_SIGS_NOTIFICATION_SHOWN"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 760
    return-void
.end method

.method public setLastVersionCode(I)V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_VERSION_CODE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 732
    return-void
.end method

.method public setLicensedGoogleAccount(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GACCOUNT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 708
    return-void
.end method

.method public setLocaleChanged(Z)V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCAL_CHANGED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 736
    return-void
.end method

.method public setLoginLimit(Landroid/content/Context;Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 614
    if-nez p2, :cond_0

    .line 615
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOGIN_LIMIT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 618
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setLoginLimit(Landroid/content/Context;Ljava/util/Date;)V

    .line 619
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOGIN_LIMIT"

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setNewsCounter(I)V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NEWS_COUNTER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 672
    return-void
.end method

.method public setNewsUnread(I)V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NEWS_UNREAD"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 676
    return-void
.end method

.method public setPeriodicScan(Z)V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ENABLE_TIMED_SCAN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 589
    return-void
.end method

.method public setPeriodicScanInterval(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PERIODIC_SCAN_FREQ"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 573
    return-void
.end method

.method public setPeriodicScanIsAppScan(Z)V
    .locals 1

    .prologue
    .line 580
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPeriodicScanType(I)V

    .line 581
    return-void

    .line 580
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setPeriodicScanIsSystemScan(Z)V
    .locals 1

    .prologue
    .line 576
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPeriodicScanType(I)V

    .line 577
    return-void

    .line 576
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPeriodicScanType(I)V
    .locals 3

    .prologue
    .line 584
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PERIODIC_SCAN_TYPE"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    return-void
.end method

.method public setPeriodicUpdate(Z)V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ENABLE_PERIODIC_UPDATE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 565
    return-void
.end method

.method public setPeriodicUpdateInterval(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PERIODIC_UPDATE_FREQ"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 561
    return-void
.end method

.method public setPeriodicUpdateWifiOnly(Z)V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PERIODIC_UPDATE_WIFI_ONLY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 569
    return-void
.end method

.method public setPowerConnected(Z)V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "POWER_CONNECTED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 503
    return-void
.end method

.method public setPurchaseData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "INAPP_DATA"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 684
    return-void
.end method

.method public setRemotePasswordResetSender(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "REMOTE_PASSWORD_RESET_SENDER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 648
    return-void
.end method

.method public setSMSCommandPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SMS_COMMAND_PASSWORD"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 643
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setSMSCommandPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method public setScanAppOnInstall(Z)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SCAN_ON_INSTALL"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    return-void
.end method

.method public setScanOnPowerConnected(Z)V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SCAN_POWER_CONNECTED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 499
    return-void
.end method

.method public setScanPostponed(Z)V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SCAN_POSTPONED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 507
    return-void
.end method

.method public setSendUsageData(Z)V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SEND_USER_DATA"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 611
    return-void
.end method

.method public setSignatureUpdateInProgress(Z)V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SIGUPDT_IN_PROGRESS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 700
    return-void
.end method

.method public setSignatureVersion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SIGNATURE_VERSION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 593
    return-void
.end method

.method public setSkipOnBatteryLow(Z)V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BATTERY_SKIP"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 491
    return-void
.end method

.method public setSystemScanEstimateFiles(J)V
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SYSTEM_SCAN_ESTIMATE_FILES"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 668
    return-void
.end method

.method public setTimeOfLastLoginLimitUpdate(J)V
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TIME_OF_LAST_LOGIN_LIMIT_UPDATE"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 623
    return-void
.end method

.method public setTimeOfLastManualScan(J)V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TIME_OF_LAST_MANUAL_SCAN"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 515
    return-void
.end method

.method public setTimeOfLastNewsCounterCheck(J)V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NEWS_COUNTER_CHECK"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 680
    return-void
.end method

.method public setTimeOfLastPeriodicScan(J)V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TIME_OF_LAST_PERIODIC_SCAN"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 557
    return-void
.end method

.method public setTimeOfLastPeriodicUpdate(J)V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TIME_OF_LAST_PERIODIC_UPDATE"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 511
    return-void
.end method

.method public setUiOptionBus(Z)V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UI_BUS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    return-void
.end method

.method public setUiOptionNoNews(Z)V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UI_NO_NEWS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 656
    return-void
.end method

.method public setUiOptionNoUpdateOffer(Z)V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UI_NO_UPDATE_OFFER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 652
    return-void
.end method

.method public setUpdateServerRegion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UPDATE_SERVER_REGION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 688
    return-void
.end method

.method public skipOnBatteryLow()Z
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "BATTERY_SKIP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useOemUpdateLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/util/BasePreferences;->useOemUpdateLogin:Z

    .line 852
    sput-object p1, Lde/gdata/mobilesecurity/util/BasePreferences;->oemUpdateUserName:Ljava/lang/String;

    .line 853
    sput-object p2, Lde/gdata/mobilesecurity/util/BasePreferences;->c:Ljava/lang/String;

    .line 854
    return-void
.end method

.method public wasLocaleChanged()Z
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "LOCAL_CHANGED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public wasScanPostponed()Z
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/BasePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "SCAN_POSTPONED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
