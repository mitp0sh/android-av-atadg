.class Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CONTACT:I = 0x1

.field public static final TYPE_NUMBER:I


# instance fields
.field m_id:Ljava/lang/Long;

.field m_name:Ljava/lang/String;

.field m_numbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry$1;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry$1;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_id:Ljava/lang/Long;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_name:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_numbers:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_numbers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_type:I

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$1;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_id:Ljava/lang/Long;

    .line 94
    iput-object p2, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_numbers:Ljava/util/List;

    .line 95
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_name:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_type:I

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p3, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_id:Ljava/lang/Long;

    .line 87
    iput-object p2, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_numbers:Ljava/util/List;

    .line 88
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_name:Ljava/lang/String;

    .line 89
    iput p4, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_type:I

    .line 90
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_numbers:Ljava/util/List;

    return-object v0
.end method

.method public isContact()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 116
    iget v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_numbers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 129
    iget v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;->m_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return-void
.end method
