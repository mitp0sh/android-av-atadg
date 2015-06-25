.class final Lde/gdata/mobilesecurity/updateserverconnection/structs/a;
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
        "Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;-><init>(Landroid/os/Parcel;Lde/gdata/mobilesecurity/updateserverconnection/structs/a;)V

    return-object v0
.end method

.method public a(I)[Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;
    .locals 1

    .prologue
    .line 188
    new-array v0, p1, [Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/structs/a;->a(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/structs/a;->a(I)[Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    move-result-object v0

    return-object v0
.end method
