.class Lde/gdata/mobilesecurity/services/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/WatcherService;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/WatcherService;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/g;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 394
    const-string v0, "bundle"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 395
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 397
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lde/gdata/webportal/android/Preferences;

    invoke-direct {v1, p1}, Lde/gdata/webportal/android/Preferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/webportal/android/Preferences;->isWebPortalEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 398
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/g;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v1, v1, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRemotePasswordResetSender()Ljava/lang/String;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/g;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    const-string v3, "Action"

    const-string v4, "null"

    invoke-static {v2, v0, v3, v4}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/g;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    const-string v4, "AllowRooted"

    const-string v5, "0"

    invoke-static {v3, v0, v4, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 401
    iget-object v4, p0, Lde/gdata/mobilesecurity/services/g;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    const-string v5, "Pin"

    iget-object v6, p0, Lde/gdata/mobilesecurity/services/g;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v6, v6, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v0, v5, v6}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lde/gdata/mobilesecurity/services/g;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v4, p1, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    :cond_1
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1, v1}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->ringNow(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    :cond_2
    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->muteTone(Landroid/content/Context;)V

    .line 406
    :cond_3
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p1, v1}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->sendLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 407
    :cond_4
    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p1, v1}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->lockPhone(Landroid/content/Context;Ljava/lang/String;)V

    .line 408
    :cond_5
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p1, v1}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->wipeData(Landroid/content/Context;Ljava/lang/String;)V

    .line 409
    :cond_6
    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->setDevicePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_7
    return-void
.end method
