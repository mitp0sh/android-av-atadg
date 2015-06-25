.class public Lde/gdata/mobilesecurity/contacts/Contact;
.super Lde/gdata/mobilesecurity/database/MapBackedData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x7fe68192661bbc87L


# instance fields
.field m_phoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_rawContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/contacts/RawContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_rawContacts:Ljava/util/List;

    .line 24
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/contacts/Contact;->setContactID(J)V

    .line 25
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/Contact;->setLookupKey(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>(Landroid/database/Cursor;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_rawContacts:Ljava/util/List;

    .line 31
    return-void
.end method

.method private readPhoneNumbers()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_rawContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 43
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getContactData()Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/ContactData;

    .line 45
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v3, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_phoneNumbers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_phoneNumbers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_2
    return-void
.end method


# virtual methods
.method public addRawContact(Lde/gdata/mobilesecurity/contacts/RawContact;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_rawContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 123
    instance-of v0, p1, Lde/gdata/mobilesecurity/contacts/Contact;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_0
    check-cast p1, Lde/gdata/mobilesecurity/contacts/Contact;

    .line 127
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDataFields()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactTable;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/contacts/ContactTable;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactTable;->getProjection()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()J
    .locals 2

    .prologue
    .line 141
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "lookup"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginID()J
    .locals 2

    .prologue
    .line 66
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneNumbers()Ljava/util/List;
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
    .line 34
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_phoneNumbers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_phoneNumbers:Ljava/util/List;

    .line 36
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/Contact;->readPhoneNumbers()V

    .line 38
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_phoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method public getPhoto()[B
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_rawContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 92
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getContactData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/ContactData;

    .line 93
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->isPhoto()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getPhoto()[B

    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    .line 99
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileId()I
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_rawContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 112
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getContactData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/ContactData;

    .line 113
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->isMMSIdentifier()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    new-instance v1, Lde/gdata/mobilesecurity/contacts/MMSIdentity;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;-><init>(Lde/gdata/mobilesecurity/contacts/ContactData;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;->getProfileID()I

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRawContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/contacts/RawContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_rawContacts:Ljava/util/List;

    return-object v0
.end method

.method public isValidContact()Z
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContactID(J)V
    .locals 3

    .prologue
    .line 103
    const-string v0, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/contacts/Contact;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_rawContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 105
    invoke-virtual {v0, p1, p2}, Lde/gdata/mobilesecurity/contacts/RawContact;->setContactID(J)V

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    const-string v0, "display_name"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/contacts/Contact;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public setLookupKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const-string v0, "lookup"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/contacts/Contact;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public setPhoneNumbers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/Contact;->m_phoneNumbers:Ljava/util/List;

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contact [getOriginID()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getLookupKey()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
