.class Lde/gdata/mobilesecurity/services/s;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/p;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/p;)V
    .locals 0

    .prologue
    .line 2624
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v6, 0x0

    .line 2628
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->l(Lde/gdata/mobilesecurity/services/WatcherService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2629
    const-string v0, "Locationlistener added"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2630
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v1, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    const-string v4, "location"

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/services/WatcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 2631
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->m(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2632
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    new-instance v1, Lde/gdata/mobilesecurity/services/m;

    iget-object v4, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v4, v4, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-direct {v1, v4, v6}, Lde/gdata/mobilesecurity/services/m;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;Lde/gdata/mobilesecurity/services/g;)V

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;Lde/gdata/mobilesecurity/services/m;)Lde/gdata/mobilesecurity/services/m;

    .line 2634
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->n(Lde/gdata/mobilesecurity/services/WatcherService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v5, v5, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v5}, Lde/gdata/mobilesecurity/services/WatcherService;->m(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/m;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 2637
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->networkLocationServicesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2638
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->o(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/m;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2639
    const-string v0, "Locationlistener added gps"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2640
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    new-instance v1, Lde/gdata/mobilesecurity/services/m;

    iget-object v4, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v4, v4, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-direct {v1, v4, v6}, Lde/gdata/mobilesecurity/services/m;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;Lde/gdata/mobilesecurity/services/g;)V

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->b(Lde/gdata/mobilesecurity/services/WatcherService;Lde/gdata/mobilesecurity/services/m;)Lde/gdata/mobilesecurity/services/m;

    .line 2643
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gps enabled  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v1, v1, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/services/WatcherService;->n(Lde/gdata/mobilesecurity/services/WatcherService;)Landroid/location/LocationManager;

    move-result-object v1

    const-string v4, "gps"

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2644
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->n(Lde/gdata/mobilesecurity/services/WatcherService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v5, v5, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v5}, Lde/gdata/mobilesecurity/services/WatcherService;->o(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/m;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 2646
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->n(Lde/gdata/mobilesecurity/services/WatcherService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 2647
    if-eqz v0, :cond_2

    .line 2648
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v1, v1, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {v1, v2, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->checkLocationForRestriction(FF)V

    .line 2652
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/s;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;Z)Z

    .line 2654
    :cond_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2655
    return-void
.end method
