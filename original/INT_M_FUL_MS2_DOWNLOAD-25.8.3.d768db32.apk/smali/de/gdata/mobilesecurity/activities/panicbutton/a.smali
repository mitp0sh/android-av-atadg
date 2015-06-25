.class final Lde/gdata/mobilesecurity/activities/panicbutton/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;
    .locals 1

    .prologue
    .line 106
    new-array v0, p1, [Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/a;->a(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/a;->a(I)[Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    move-result-object v0

    return-object v0
.end method
