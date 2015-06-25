.class Lde/gdata/mobilesecurity/services/t;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/p;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/p;)V
    .locals 0

    .prologue
    .line 2657
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/t;->a:Lde/gdata/mobilesecurity/services/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 2660
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/t;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->l(Lde/gdata/mobilesecurity/services/WatcherService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2661
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/t;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v1, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/t;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 2663
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/t;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->o(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2664
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/t;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->n(Lde/gdata/mobilesecurity/services/WatcherService;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/t;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v1, v1, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/services/WatcherService;->o(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2666
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/t;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->m(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2667
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/t;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->n(Lde/gdata/mobilesecurity/services/WatcherService;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/t;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v1, v1, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/services/WatcherService;->m(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2669
    :cond_1
    const-string v0, "Locationlistener removed"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2670
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/t;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;Z)Z

    .line 2673
    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2674
    return-void
.end method
