.class public Lde/gdata/mobilesecurity/privacy/HiddenContact;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:J

.field d:I

.field e:Z

.field f:Z

.field g:Lde/gdata/mobilesecurity/contacts/Contact;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "lookup_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->a:Ljava/lang/String;

    .line 80
    const-string v0, "contact_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->b:J

    .line 81
    const-string v0, "remove_from_store"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->e:Z

    .line 82
    const-string v0, "suppress_communcation"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->f:Z

    .line 84
    :try_start_0
    const-string v0, "profile_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_2
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->c:J

    .line 90
    return-void

    :cond_0
    move v0, v2

    .line 81
    goto :goto_0

    :cond_1
    move v1, v2

    .line 82
    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    iput v2, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->d:I

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->i(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;JZZI)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->a:Ljava/lang/String;

    .line 96
    iput-wide p2, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->b:J

    .line 97
    iput-boolean p4, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->e:Z

    .line 98
    iput-boolean p5, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->f:Z

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->c:J

    .line 100
    iput p6, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->d:I

    .line 101
    return-void
.end method


# virtual methods
.method public getContact(Landroid/content/Context;)Lde/gdata/mobilesecurity/contacts/Contact;
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->g:Lde/gdata/mobilesecurity/contacts/Contact;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->g:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 147
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isRemoveFromStore()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    const/4 v0, 0x0

    .line 126
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfileType()I

    move-result v2

    .line 128
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPhoneType()I

    move-result v1

    .line 130
    sget-object v3, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$PhoneTypes;->PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 131
    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->CORPORATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 132
    new-instance v0, Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getProfileId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;-><init>(Landroid/content/Context;I)V

    .line 135
    :cond_1
    if-nez v0, :cond_2

    .line 136
    new-instance v0, Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;-><init>(Landroid/content/Context;)V

    .line 138
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v1

    .line 139
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 140
    iput-object v1, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->g:Lde/gdata/mobilesecurity/contacts/Contact;

    move-object v0, v1

    .line 141
    goto :goto_0

    .line 143
    :cond_3
    new-instance v1, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContact(Ljava/lang/String;Ljava/lang/Long;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 145
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->fetchContactData(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 146
    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->g:Lde/gdata/mobilesecurity/contacts/Contact;

    goto :goto_0
.end method

.method public getContactID()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->b:J

    return-wide v0
.end method

.method public getID()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->c:J

    return-wide v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupPair()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Landroid/util/Pair;

    iget-wide v2, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->d:I

    return v0
.end method

.method public isRemoveFromStore()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->e:Z

    return v0
.end method

.method public isSuppresCommunication()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->f:Z

    return v0
.end method

.method public setContactID(J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->b:J

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->g:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 50
    return-void
.end method

.method public setID(J)V
    .locals 1

    .prologue
    .line 39
    iput-wide p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->c:J

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->g:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 41
    return-void
.end method

.method public setLookupKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->a:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setProfileId(I)V
    .locals 1

    .prologue
    .line 30
    iput p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->d:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->g:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 32
    return-void
.end method

.method public setRemoveFromStore(Z)V
    .locals 1

    .prologue
    .line 65
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->e:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->g:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 67
    return-void
.end method

.method public setSuppresCommunication(Z)V
    .locals 1

    .prologue
    .line 74
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->f:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->g:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 76
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 105
    const-string v1, "lookup_key"

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "contact_id"

    iget-wide v2, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string v1, "remove_from_store"

    iget-boolean v2, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 108
    const-string v1, "suppress_communcation"

    iget-boolean v2, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 109
    const-string v1, "profile_id"

    iget v2, p0, Lde/gdata/mobilesecurity/privacy/HiddenContact;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    return-object v0
.end method
