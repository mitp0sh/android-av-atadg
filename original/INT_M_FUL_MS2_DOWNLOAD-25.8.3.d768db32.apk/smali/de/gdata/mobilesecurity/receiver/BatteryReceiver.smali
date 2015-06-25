.class public Lde/gdata/mobilesecurity/receiver/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 24
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v4, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v4, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isSignalFlareEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 29
    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRemotePasswordResetSender()Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasSignalFlareFired()Z

    move-result v6

    if-nez v6, :cond_0

    .line 33
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lde/gdata/mobilesecurity/services/RemoteCommandService;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    const-string v7, "command"

    const-string v8, "locate"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v7, "sender"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 38
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSignalFlareFired(Z)V

    .line 42
    :cond_0
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasSignalFlareFired()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSignalFlareFired(Z)V

    .line 49
    :cond_1
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v4, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setBatteryLow(Z)V

    .line 53
    :cond_2
    const-string v0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    invoke-virtual {v4, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setBatteryLow(Z)V

    .line 56
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->wasScanPostponed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 57
    invoke-virtual {v4, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setScanPostponed(Z)V

    move v0, v1

    .line 62
    :goto_0
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    invoke-virtual {v4, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPowerConnected(Z)V

    .line 65
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->wasScanPostponed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 66
    invoke-virtual {v4, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setScanPostponed(Z)V

    move v0, v1

    .line 71
    :cond_3
    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/scan/ScanService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    :cond_4
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    invoke-virtual {v4, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPowerConnected(Z)V

    .line 77
    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto :goto_0
.end method
