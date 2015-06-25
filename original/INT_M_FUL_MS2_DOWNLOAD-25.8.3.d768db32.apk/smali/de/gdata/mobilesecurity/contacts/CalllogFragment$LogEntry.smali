.class public Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field name:Ljava/lang/String;

.field number:Ljava/lang/String;

.field rowId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry$1;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry$1;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->number:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->name:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->rowId:J

    .line 216
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/gdata/mobilesecurity/contacts/CalllogFragment$1;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->number:Ljava/lang/String;

    .line 200
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->name:Ljava/lang/String;

    .line 205
    :goto_0
    iput-wide p3, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->rowId:J

    .line 206
    return-void

    .line 203
    :cond_1
    iput-object p2, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-wide v0, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->rowId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    return-void
.end method
