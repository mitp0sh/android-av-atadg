.class public Lde/gdata/mobilesecurity/receiver/ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:I

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->a:Z

    .line 35
    const/4 v0, -0x1

    sput v0, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->b:I

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 10

    .prologue
    const-wide/32 v8, 0x5265c00

    .line 41
    invoke-static {p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->getArrayListDevicePolicies(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 43
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;

    .line 46
    new-instance v3, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;

    invoke-direct {v3, p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->getPolicyID()I

    move-result v0

    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->loadDevicePolicyReactionItemFromDB(I)V

    .line 49
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->getRequireEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEncryptionSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastDeviceAdminRedirect()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    .line 51
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->triggerEncryptionReaction()V

    .line 53
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastEncryptionLog()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-lez v0, :cond_0

    .line 54
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->addStorageEncryptionReport()V

    goto :goto_0

    .line 57
    :cond_2
    return-void
.end method

.method public static registerScreenReceiver(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 129
    sget-boolean v0, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->a:Z

    if-nez v0, :cond_0

    .line 131
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    new-instance v1, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;-><init>()V

    .line 135
    const/4 v2, 0x1

    sput-boolean v2, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->a:Z

    .line 137
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while registering ScreenReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 61
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    const-string v0, "Display turned on"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->a(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->startTaskWatchDog()V

    .line 67
    invoke-static {p1}, Lde/gdata/mobilesecurity/services/WatcherService;->startSpoofChecker(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 72
    sget-object v0, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->connectToWifi(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->c:Ljava/lang/String;

    .line 74
    const/4 v0, -0x1

    sput v0, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->b:I

    .line 77
    :cond_0
    const-string v0, ""

    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAllowTelemetry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 87
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 89
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_4

    .line 90
    const-string v0, "Phone not in use"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "Display turned off"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->clearUnlockedAppList()V

    .line 101
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->stopTaskWatchDog()V

    .line 103
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isSpoofDetectionActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->doAutoDisconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 107
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^\"(.*)\"$"

    const-string v5, "$1"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTrustedNetworks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    .line 113
    sput-object v3, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->c:Ljava/lang/String;

    .line 114
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    sput v1, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->b:I

    .line 116
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 117
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto/16 :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 94
    :cond_4
    const-string v0, "Phone in use"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
