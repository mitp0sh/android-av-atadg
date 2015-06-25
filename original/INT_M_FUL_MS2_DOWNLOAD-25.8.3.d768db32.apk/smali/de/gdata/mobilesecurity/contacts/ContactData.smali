.class public Lde/gdata/mobilesecurity/contacts/ContactData;
.super Lde/gdata/mobilesecurity/database/MapBackedData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x72ef2dd454d72807L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>(Landroid/database/Cursor;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/contacts/ContactData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDataFields()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactDataTable;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/contacts/ContactDataTable;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactDataTable;->getProjection()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()J
    .locals 2

    .prologue
    .line 90
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getIntData(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/database/MapBackedData;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "mimetype"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "data1"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 66
    const-string v0, "data15"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getBlob(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public isMMSIdentifier()Z
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getMIMEType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "de.gdata.mobilesecurity/mms_identity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPhoneNumber()Z
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getMIMEType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPhoto()Z
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getMIMEType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStructuredName()Z
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getMIMEType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 78
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/contacts/ContactData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public setMIMEType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    const-string v0, "mimetype"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/contacts/ContactData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    const-string v0, "data1"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/contacts/ContactData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public setRawContactID(J)V
    .locals 3

    .prologue
    .line 34
    const-string v0, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    return-void
.end method
