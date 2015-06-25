.class public Lde/gdata/mobilesecurity/contacts/RawContact;
.super Lde/gdata/mobilesecurity/database/MapBackedData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field m_contactData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/contacts/ContactData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/RawContact;->m_contactData:Ljava/util/List;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>(Landroid/database/Cursor;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/RawContact;->m_contactData:Ljava/util/List;

    .line 39
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 40
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 41
    const-string v1, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v0, "id"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addContactData(Lde/gdata/mobilesecurity/contacts/ContactData;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/RawContact;->m_contactData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public clearContactData()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/RawContact;->m_contactData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "account_name"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "account_type"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/contacts/ContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/RawContact;->m_contactData:Ljava/util/List;

    return-object v0
.end method

.method public getContactID()J
    .locals 2

    .prologue
    .line 72
    const-string v0, "contact_id"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getDataFields()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lde/gdata/mobilesecurity/contacts/RawContactTable;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/contacts/RawContactTable;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContactTable;->getProjection()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()J
    .locals 2

    .prologue
    .line 48
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRawContactID()J
    .locals 2

    .prologue
    .line 60
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSourceID()J
    .locals 2

    .prologue
    .line 99
    const-string v0, "sourceid"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    const-string v0, "account_name"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/contacts/RawContact;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    const-string v0, "account_type"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/contacts/RawContact;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setContactID(J)V
    .locals 3

    .prologue
    .line 68
    const-string v0, "contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public setID(J)V
    .locals 3

    .prologue
    .line 89
    const-string v0, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method protected setRawContactID(J)V
    .locals 3

    .prologue
    .line 64
    const-string v0, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public setSourceID(J)V
    .locals 3

    .prologue
    .line 103
    const-string v0, "sourceid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawContact [AccountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AccountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RawContactID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getRawContactID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
