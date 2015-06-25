.class public Lde/gdata/mobilesecurity/receiver/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 23
    const-string v0, "BootCompletedReceiver invoked"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isOrangeOemVersion()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 28
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 29
    const v1, 0x7f0d03c6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 31
    new-instance v0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->enable()J

    .line 33
    new-instance v0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->enable()J

    .line 37
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setNotifyOnSimChange(Z)V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWaitForReboot(Z)V

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/services/SimChangeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    invoke-static {p1}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->checkUnreadState(Landroid/content/Context;)V

    goto :goto_0
.end method
