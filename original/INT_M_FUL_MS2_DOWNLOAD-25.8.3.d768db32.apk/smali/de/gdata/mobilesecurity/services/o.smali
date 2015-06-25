.class Lde/gdata/mobilesecurity/services/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/n;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/n;)V
    .locals 0

    .prologue
    .line 2117
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/o;->a:Lde/gdata/mobilesecurity/services/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2119
    const-string v0, "Reset in worker ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2121
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/o;->a:Lde/gdata/mobilesecurity/services/n;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2122
    const/4 v1, 0x2

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/o;->a:Lde/gdata/mobilesecurity/services/n;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardVolumeRing()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2123
    const/4 v1, 0x3

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/o;->a:Lde/gdata/mobilesecurity/services/n;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardVolumeMedia()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2124
    const/4 v1, 0x5

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/o;->a:Lde/gdata/mobilesecurity/services/n;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardVolumeNotification()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2126
    const/4 v1, 0x1

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/o;->a:Lde/gdata/mobilesecurity/services/n;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardVolumeSystem()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2127
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/o;->a:Lde/gdata/mobilesecurity/services/n;

    iget-object v1, v1, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v1, v1, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardRingerMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2128
    return-void
.end method
