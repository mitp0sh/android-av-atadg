.class final Lde/gdata/mobilesecurity/scan/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lde/gdata/mobilesecurity/scan/LogEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/scan/LogEntry;
    .locals 2

    .prologue
    .line 534
    new-instance v0, Lde/gdata/mobilesecurity/scan/LogEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/os/Parcel;Lde/gdata/mobilesecurity/scan/a;)V

    return-object v0
.end method

.method public a(I)[Lde/gdata/mobilesecurity/scan/LogEntry;
    .locals 1

    .prologue
    .line 539
    new-array v0, p1, [Lde/gdata/mobilesecurity/scan/LogEntry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/scan/a;->a(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/scan/LogEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/scan/a;->a(I)[Lde/gdata/mobilesecurity/scan/LogEntry;

    move-result-object v0

    return-object v0
.end method
