.class Lde/gdata/mobilesecurity/services/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/WatcherService;


# direct methods
.method private constructor <init>(Lde/gdata/mobilesecurity/services/WatcherService;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/m;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/gdata/mobilesecurity/services/WatcherService;Lde/gdata/mobilesecurity/services/g;)V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/services/m;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 673
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-float v0, v0

    .line 674
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v1, v2

    .line 676
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/m;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2, v1, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->checkLocationForRestriction(FF)V

    .line 678
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 687
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 692
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 682
    return-void
.end method
