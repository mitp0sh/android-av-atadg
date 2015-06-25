.class public Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;
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
            "Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_REQUEST_EXTENSION_DATA:Ljava/lang/String; = "red"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/a;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/a;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->a:I

    .line 19
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->b:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->c:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->d:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->e:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->f:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->g:Ljava/lang/String;

    .line 28
    iput p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->a:I

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->a:I

    .line 19
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->b:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->c:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->d:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->e:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->f:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->g:Ljava/lang/String;

    .line 34
    iput p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->a:I

    .line 35
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->b:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->c:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->d:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->e:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->g:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->f:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->a()V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->a:I

    .line 19
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->b:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->c:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->d:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->e:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->f:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->g:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->a:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->b:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->e:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->c:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->d:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->g:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->f:Ljava/lang/String;

    .line 200
    invoke-direct {p0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->a()V

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/gdata/mobilesecurity/updateserverconnection/structs/a;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    new-instance v0, Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 85
    :goto_1
    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const-string v1, "||"

    const-string v2, "| |"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_2
    const-string v1, "|"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, "#"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 116
    array-length v1, v0

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->h:Z

    .line 118
    const/16 v1, 0x9

    aget-object v1, v0, v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->i:Ljava/lang/String;

    .line 119
    aget-object v1, v0, v3

    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->j:Ljava/lang/String;

    .line 120
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->k:Ljava/lang/String;

    .line 121
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->l:Ljava/lang/String;

    .line 122
    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->m:Ljava/lang/String;

    .line 123
    const/4 v1, 0x7

    aget-object v1, v0, v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->n:Ljava/lang/String;

    .line 124
    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->o:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleMarketBillingString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 163
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->g:Ljava/lang/String;

    const-string v1, "[GM] "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->g:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getPlz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStatuscode()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->a:I

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSurname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->j:Ljava/lang/String;

    return-object v0
.end method

.method public isTitle()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->h:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    return-void
.end method
