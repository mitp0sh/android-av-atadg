.class final Lde/gdata/mobilesecurity/privacy/v;
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
        "Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;-><init>(Landroid/os/Parcel;Lde/gdata/mobilesecurity/privacy/v;)V

    return-object v0
.end method

.method public a(I)[Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;
    .locals 1

    .prologue
    .line 203
    new-array v0, p1, [Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/privacy/v;->a(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/privacy/v;->a(I)[Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    move-result-object v0

    return-object v0
.end method
