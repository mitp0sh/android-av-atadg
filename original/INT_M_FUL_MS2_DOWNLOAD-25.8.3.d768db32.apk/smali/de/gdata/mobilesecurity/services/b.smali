.class Lde/gdata/mobilesecurity/services/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/GpsSender;


# direct methods
.method private constructor <init>(Lde/gdata/mobilesecurity/services/GpsSender;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/gdata/mobilesecurity/services/GpsSender;Lde/gdata/mobilesecurity/services/a;)V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/services/b;-><init>(Lde/gdata/mobilesecurity/services/GpsSender;)V

    return-void
.end method

.method private a()Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kept accuracy for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    invoke-static {v3}, Lde/gdata/mobilesecurity/services/GpsSender;->b(Lde/gdata/mobilesecurity/services/GpsSender;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " times."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network status: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    iget v0, v0, Lde/gdata/mobilesecurity/services/GpsSender;->networkProviderStatus:I

    if-ne v0, v8, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS Status: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    iget v0, v0, Lde/gdata/mobilesecurity/services/GpsSender;->gpsProviderStatus:I

    if-ne v0, v8, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GpsSender;->b(Lde/gdata/mobilesecurity/services/GpsSender;)I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x5

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    iget v0, v0, Lde/gdata/mobilesecurity/services/GpsSender;->networkProviderStatus:I

    if-eq v0, v8, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    iget v0, v0, Lde/gdata/mobilesecurity/services/GpsSender;->gpsProviderStatus:I

    if-eq v0, v8, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 459
    goto :goto_0

    :cond_3
    move v0, v2

    .line 460
    goto :goto_1
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/services/GpsSender;->isMoreAccurate(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/services/GpsSender;->a(Lde/gdata/mobilesecurity/services/GpsSender;Landroid/location/Location;)Landroid/location/Location;

    .line 471
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/GpsSender;->a(Lde/gdata/mobilesecurity/services/GpsSender;I)I

    .line 475
    :goto_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GpsSender;->a(Lde/gdata/mobilesecurity/services/GpsSender;)V

    .line 476
    :cond_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GpsSender;->c(Lde/gdata/mobilesecurity/services/GpsSender;)I

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 492
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    iput v1, v0, Lde/gdata/mobilesecurity/services/GpsSender;->networkProviderStatus:I

    .line 497
    :goto_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GpsSender;->a(Lde/gdata/mobilesecurity/services/GpsSender;)V

    .line 498
    :cond_0
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    iput v1, v0, Lde/gdata/mobilesecurity/services/GpsSender;->gpsProviderStatus:I

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProviderEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 504
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    iput v2, v0, Lde/gdata/mobilesecurity/services/GpsSender;->networkProviderStatus:I

    .line 508
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    iput v2, v0, Lde/gdata/mobilesecurity/services/GpsSender;->gpsProviderStatus:I

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 482
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    iput p2, v0, Lde/gdata/mobilesecurity/services/GpsSender;->networkProviderStatus:I

    .line 487
    :goto_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GpsSender;->a(Lde/gdata/mobilesecurity/services/GpsSender;)V

    .line 488
    :cond_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/b;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    iput p2, v0, Lde/gdata/mobilesecurity/services/GpsSender;->gpsProviderStatus:I

    goto :goto_0
.end method
