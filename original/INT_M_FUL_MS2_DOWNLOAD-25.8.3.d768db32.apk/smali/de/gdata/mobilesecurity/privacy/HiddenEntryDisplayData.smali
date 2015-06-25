.class public Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;
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
            "Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:J

.field h:Landroid/graphics/drawable/Drawable;

.field private i:Lde/gdata/mobilesecurity/contacts/Contact;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lde/gdata/mobilesecurity/privacy/v;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/privacy/v;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->e:Z

    .line 33
    const/high16 v0, -0x80000000

    iput v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->j:I

    .line 143
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a(Landroid/os/Parcel;)V

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/gdata/mobilesecurity/privacy/v;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/contacts/Contact;Ljava/lang/String;ZZJLandroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->e:Z

    .line 33
    const/high16 v0, -0x80000000

    iput v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->j:I

    .line 133
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->i:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 134
    iput-object p2, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->b:J

    .line 136
    iput-boolean p3, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->c:Z

    .line 137
    iput-boolean p4, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->d:Z

    .line 138
    iput-wide p5, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->g:J

    .line 139
    iput-object p7, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->h:Landroid/graphics/drawable/Drawable;

    .line 140
    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/contacts/Contact;ZZJLandroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->e:Z

    .line 33
    const/high16 v0, -0x80000000

    iput v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->j:I

    .line 105
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->i:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 106
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 108
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 110
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 122
    :cond_2
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->b:J

    .line 123
    iput-boolean p2, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->c:Z

    .line 124
    iput-boolean p3, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->d:Z

    .line 125
    iput-wide p4, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->g:J

    .line 126
    iput-object p6, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->h:Landroid/graphics/drawable/Drawable;

    .line 127
    return-void

    .line 113
    :cond_3
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getContactData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/ContactData;

    .line 114
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->isStructuredName()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    const-string v2, "data1"

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/contacts/ContactData;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->b:J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->c:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->d:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->e:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->g:J

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/Contact;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->i:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    if-nez v0, :cond_3

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->h:Landroid/graphics/drawable/Drawable;

    .line 164
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->f:Z

    .line 165
    return-void

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0

    :cond_1
    move v0, v2

    .line 150
    goto :goto_1

    :cond_2
    move v0, v2

    .line 151
    goto :goto_2

    .line 159
    :cond_3
    new-array v0, v0, [B

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 161
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 162
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    move v1, v2

    .line 164
    goto :goto_4
.end method


# virtual methods
.method public copyFrom(Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->i:Lde/gdata/mobilesecurity/contacts/Contact;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->i:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 275
    iget-wide v0, p1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->b:J

    iput-wide v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->b:J

    .line 276
    iget-object v0, p1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    .line 277
    iget-boolean v0, p1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->e:Z

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->e:Z

    .line 278
    iget-boolean v0, p1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->d:Z

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->d:Z

    .line 279
    iget-object v0, p1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->h:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->h:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-wide v0, p1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->g:J

    iput-wide v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->g:J

    .line 281
    iget-boolean v0, p1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->c:Z

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->c:Z

    .line 282
    iget-boolean v0, p1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->f:Z

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->f:Z

    .line 283
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 213
    instance-of v0, p1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    if-eqz v0, :cond_1

    .line 214
    check-cast p1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    .line 215
    iget-wide v0, p1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->g:J

    iget-wide v2, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isContact()Z

    move-result v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isContact()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContact()Lde/gdata/mobilesecurity/contacts/Contact;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->i:Lde/gdata/mobilesecurity/contacts/Contact;

    return-object v0
.end method

.method public getContactID()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->b:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->g:J

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/util/List;
    .locals 3
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
    .line 286
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isContact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPicture()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasSimContact()Z
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 256
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hiddenStateChanged()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->e:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->f:Z

    return v0
.end method

.method public isContact()Z
    .locals 4

    .prologue
    .line 52
    iget-wide v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideFromStore()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->d:Z

    return v0
.end method

.method public isMMSContact()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isContact()Z

    move-result v1

    if-nez v1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    iget v1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->j:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    .line 295
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/Contact;->getProfileId()I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->j:I

    .line 297
    :cond_2
    iget v1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->j:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPurePhoneContact(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 246
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :cond_1
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSuppressCommunication()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->c:Z

    return v0
.end method

.method public readPicture()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v1

    .line 223
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/Contact;->isValidContact()Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoto()[B

    move-result-object v2

    .line 225
    if-eqz v2, :cond_0

    .line 228
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 229
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->setPicture(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->setPicture(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->f:Z

    .line 41
    return-void
.end method

.method public setContactID(J)V
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->b:J

    .line 61
    return-void
.end method

.method public setContactType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 267
    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountType(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountName(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setHiddenStateChanged(Z)V
    .locals 0

    .prologue
    .line 240
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->e:Z

    .line 241
    return-void
.end method

.method public setHideFromStore(Z)V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->d:Z

    if-ne v0, p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->d:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->e:Z

    goto :goto_0
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->g:J

    .line 91
    return-void
.end method

.method public setPicture(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->h:Landroid/graphics/drawable/Drawable;

    .line 99
    return-void
.end method

.method public setSuppressCommunication(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->c:Z

    .line 69
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-wide v4, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->b:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->d:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->e:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-wide v4, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->g:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->i:Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 184
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 187
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 188
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 189
    array-length v3, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 194
    :goto_3
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->f:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    return-void

    :cond_0
    move v0, v2

    .line 177
    goto :goto_0

    :cond_1
    move v0, v2

    .line 178
    goto :goto_1

    :cond_2
    move v0, v2

    .line 179
    goto :goto_2

    .line 192
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_4
    move v1, v2

    .line 194
    goto :goto_4
.end method
