.class final Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry$1;
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
        "Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;-><init>(Landroid/os/Parcel;Lde/gdata/mobilesecurity/contacts/CalllogFragment$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry$1;->createFromParcel(Landroid/os/Parcel;)Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;
    .locals 1

    .prologue
    .line 235
    new-array v0, p1, [Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry$1;->newArray(I)[Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;

    move-result-object v0

    return-object v0
.end method
