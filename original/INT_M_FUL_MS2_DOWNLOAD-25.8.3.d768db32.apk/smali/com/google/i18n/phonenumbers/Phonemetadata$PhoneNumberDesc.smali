.class public Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->b:Ljava/lang/String;

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->d:Ljava/lang/String;

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->f:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public static newBuilder()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public exactlySameAs(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExampleNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalNumberPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPossibleNumberPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hasExampleNumber()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->e:Z

    return v0
.end method

.method public hasNationalNumberPattern()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->a:Z

    return v0
.end method

.method public hasPossibleNumberPattern()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->c:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setNationalNumberPattern(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setPossibleNumberPattern(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 248
    :cond_1
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setExampleNumber(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 251
    :cond_2
    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    .prologue
    .line 278
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setNationalNumberPattern(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 282
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setPossibleNumberPattern(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 286
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setExampleNumber(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 289
    :cond_2
    return-void
.end method

.method public setExampleNumber(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->e:Z

    .line 237
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->f:Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public setNationalNumberPattern(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->a:Z

    .line 215
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->b:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public setPossibleNumberPattern(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->c:Z

    .line 226
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->d:Ljava/lang/String;

    .line 227
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->a:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 262
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->a:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 266
    :cond_0
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->c:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 267
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->c:Z

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 271
    :cond_1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->e:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 272
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->e:Z

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 275
    :cond_2
    return-void
.end method
