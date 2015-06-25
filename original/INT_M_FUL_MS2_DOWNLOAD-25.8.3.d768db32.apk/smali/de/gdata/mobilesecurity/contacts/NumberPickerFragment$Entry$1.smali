.class final Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry$1;
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
        "Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;-><init>(Landroid/os/Parcel;Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry$1;->createFromParcel(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;
    .locals 1

    .prologue
    .line 67
    new-array v0, p1, [Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry$1;->newArray(I)[Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;

    move-result-object v0

    return-object v0
.end method
