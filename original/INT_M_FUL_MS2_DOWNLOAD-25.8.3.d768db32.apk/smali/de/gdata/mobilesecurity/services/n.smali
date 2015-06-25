.class Lde/gdata/mobilesecurity/services/n;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/WatcherService;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 2098
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    .line 2099
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2100
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2104
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2106
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardFixVolumeKeys()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2108
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 2110
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2111
    const/4 v2, 0x2

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v3, v3, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardVolumeRing()I

    move-result v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2112
    const/4 v2, 0x3

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v3, v3, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardVolumeMedia()I

    move-result v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2113
    const/4 v2, 0x5

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v3, v3, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardVolumeNotification()I

    move-result v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2114
    const/4 v2, 0x1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v3, v3, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardVolumeSystem()I

    move-result v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2115
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/n;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardRingerMode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2117
    new-instance v0, Lde/gdata/mobilesecurity/services/o;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/services/o;-><init>(Lde/gdata/mobilesecurity/services/n;)V

    .line 2131
    const-wide/16 v2, 0x200

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 2132
    const-wide/16 v2, 0x400

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 2133
    const-wide/16 v2, 0x1000

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 2135
    :cond_1
    return-void
.end method
