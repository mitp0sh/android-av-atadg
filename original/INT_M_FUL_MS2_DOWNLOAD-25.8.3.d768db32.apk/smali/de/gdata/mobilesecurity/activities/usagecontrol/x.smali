.class final Lde/gdata/mobilesecurity/activities/usagecontrol/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;
    .locals 1

    .prologue
    .line 407
    new-instance v0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;
    .locals 1

    .prologue
    .line 411
    new-array v0, p1, [Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/x;->a(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/x;->a(I)[Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    move-result-object v0

    return-object v0
.end method
