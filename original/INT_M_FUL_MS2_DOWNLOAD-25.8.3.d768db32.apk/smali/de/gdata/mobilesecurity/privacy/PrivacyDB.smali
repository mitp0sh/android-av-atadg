.class public Lde/gdata/mobilesecurity/privacy/PrivacyDB;
.super Lde/gdata/mobilesecurity/database/Database;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/Database;-><init>(Landroid/content/Context;)V

    .line 68
    const-string v0, "privacy.db"

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/Database;-><init>(Landroid/content/Context;)V

    .line 84
    if-nez p2, :cond_0

    .line 85
    const-string v0, "privacy.db"

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a:Ljava/lang/String;

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v0, "privacy_%d.db"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/Database;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object p2, p0, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private a(Lde/gdata/mobilesecurity/contacts/Contact;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 186
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 187
    const-string v1, "contacts"

    invoke-virtual {p2, v1, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 188
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 190
    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/contacts/RawContact;->setContactID(J)V

    .line 191
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 192
    const-string v5, "raw_contacts"

    invoke-virtual {p2, v5, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 193
    invoke-virtual {v0, v4, v5}, Lde/gdata/mobilesecurity/contacts/RawContact;->setID(J)V

    .line 194
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getContactData()Ljava/util/List;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/ContactData;

    .line 196
    invoke-virtual {v0, v4, v5}, Lde/gdata/mobilesecurity/contacts/ContactData;->setRawContactID(J)V

    .line 197
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 198
    const-string v7, "contacts_data"

    invoke-virtual {p2, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 201
    :cond_1
    return-wide v2
.end method

.method private a(Ljava/lang/String;J)Lde/gdata/mobilesecurity/contacts/Contact;
    .locals 14

    .prologue
    .line 394
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 395
    const-string v1, "contacts"

    const/4 v2, 0x0

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 398
    const/4 v1, 0x0

    .line 399
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    new-instance v8, Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-direct {v8, v9}, Lde/gdata/mobilesecurity/contacts/Contact;-><init>(Landroid/database/Cursor;)V

    .line 401
    const-string v1, "id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 402
    const-string v1, "raw_contacts"

    const/4 v2, 0x0

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "contact_id"

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 405
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    new-instance v11, Lde/gdata/mobilesecurity/contacts/RawContact;

    invoke-direct {v11, v10}, Lde/gdata/mobilesecurity/contacts/RawContact;-><init>(Landroid/database/Cursor;)V

    .line 407
    const-string v1, "id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 408
    const-string v1, "contacts_data"

    const/4 v2, 0x0

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v12, "raw_contact_id"

    aput-object v12, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 411
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactData;

    invoke-direct {v2, v1}, Lde/gdata/mobilesecurity/contacts/ContactData;-><init>(Landroid/database/Cursor;)V

    .line 413
    invoke-virtual {v11, v2}, Lde/gdata/mobilesecurity/contacts/RawContact;->addContactData(Lde/gdata/mobilesecurity/contacts/ContactData;)V

    goto :goto_1

    .line 415
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 416
    invoke-virtual {v8, v11}, Lde/gdata/mobilesecurity/contacts/Contact;->addRawContact(Lde/gdata/mobilesecurity/contacts/RawContact;)V

    goto :goto_0

    .line 418
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 420
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 422
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, " %s IN ( "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 671
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 673
    :cond_0
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x29

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 675
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 680
    invoke-direct {p0, p2, p4}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 681
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 682
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 683
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 686
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 498
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 499
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 501
    invoke-static {p3}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumbers(Ljava/util/List;)V

    .line 503
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 504
    const-string v3, "id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    const-string v5, "DELETE FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE id in ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 508
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 511
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 513
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 514
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x29

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 515
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public static checkAccount(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0d008a

    const/4 v0, 0x0

    .line 38
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 41
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 42
    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 43
    const/4 v0, 0x1

    .line 48
    :cond_0
    if-nez v0, :cond_1

    .line 49
    new-instance v0, Landroid/accounts/Account;

    const v1, 0x7f0d00f4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, v0, v8, v8}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    const-string v0, "Added G Data Account"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 58
    :cond_1
    :goto_1
    return-void

    .line 41
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_3
    const-string v0, "Could not add G Data Account"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addContactOrigin(Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;)V
    .locals 4

    .prologue
    .line 607
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 608
    const-string v1, "contact_account_origin"

    const/4 v2, 0x0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 611
    return-void
.end method

.method public addContactToHide(JIZZ)Lde/gdata/mobilesecurity/privacy/HiddenContact;
    .locals 9

    .prologue
    .line 304
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 306
    new-instance v1, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {v1, p1, p2}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v8

    .line 309
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    .line 310
    const-string v1, "hidden_contact"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const-string v3, "lookup_key = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 314
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 315
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 317
    const/4 v2, 0x0

    .line 324
    :goto_0
    return-object v2

    .line 319
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 320
    new-instance v2, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    move-object v3, v8

    move-wide v4, p1

    move v6, p5

    move v7, p4

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lde/gdata/mobilesecurity/privacy/HiddenContact;-><init>(Ljava/lang/String;JZZI)V

    .line 322
    const-string v1, "hidden_contact"

    const/4 v3, 0x0

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->setID(J)V

    goto :goto_0
.end method

.method public addNumberToHide(Ljava/lang/String;Z)Lde/gdata/mobilesecurity/privacy/HiddenNumber;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 328
    new-instance v8, Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    invoke-direct {v8, p1, p2}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;-><init>(Ljava/lang/String;Z)V

    .line 329
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 330
    const-string v1, "hidden_numbers"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v6

    const-string v3, "number = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 332
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 333
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 340
    :goto_0
    return-object v5

    .line 337
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 338
    const-string v1, "hidden_numbers"

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->setID(J)V

    move-object v5, v8

    .line 340
    goto :goto_0
.end method

.method public countMissedCalls()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 644
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 645
    const-string v2, "SELECT COUNT(*) FROM calllog WHERE is_read = 0 "

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 648
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 651
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 653
    return v0
.end method

.method public countUnreadSMS()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 631
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 632
    const-string v2, "SELECT COUNT(*) FROM sms WHERE read = 0 "

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 635
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 638
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 640
    return v0
.end method

.method public getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;
    .locals 1

    .prologue
    .line 364
    const-string v0, "id"

    invoke-direct {p0, v0, p1, p2}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a(Ljava/lang/String;J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getContactAccountOrigin(J)Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 614
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 615
    const-string v1, "contact_account_origin"

    const-string v3, "raw_contact_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 618
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 621
    new-instance v0, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;-><init>()V

    .line 627
    :goto_0
    return-object v0

    .line 623
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;-><init>(Landroid/database/Cursor;)V

    .line 624
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getContactFromOriginID(J)Lde/gdata/mobilesecurity/contacts/Contact;
    .locals 1

    .prologue
    .line 360
    const-string v0, "_id"

    invoke-direct {p0, v0, p1, p2}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a(Ljava/lang/String;J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getContactFromSourceID(JI)Lde/gdata/mobilesecurity/contacts/Contact;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 368
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 369
    const-string v3, "CAST(data2 as INTEGER) = ? AND CAST(data1 as INTEGER) =  ?"

    .line 371
    const-string v1, "contacts_data"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data2"

    aput-object v4, v2, v8

    const-string v4, "data1"

    aput-object v4, v2, v9

    const-string v4, "raw_contact_id"

    aput-object v4, v2, v10

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 374
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 390
    :goto_0
    return-object v5

    .line 379
    :cond_0
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 380
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 381
    const-string v1, "raw_contacts"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v8

    const-string v3, "id = ?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 388
    :cond_1
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 390
    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v5

    goto :goto_0
.end method

.method public getContactsToHide()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/privacy/HiddenContact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 161
    const-string v1, "hidden_contact"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    new-instance v2, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 169
    return-object v1
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected getDatabaseVersion()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x3

    return v0
.end method

.method public getHiddenContact(J)Lde/gdata/mobilesecurity/privacy/HiddenContact;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 453
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 454
    const-string v1, "hidden_contact"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 457
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    new-instance v2, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;-><init>(Landroid/database/Cursor;)V

    .line 460
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 462
    return-object v2
.end method

.method public getHiddenContacts()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/contacts/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContactsToHide()Ljava/util/List;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    .line 143
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getLookupKey()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 145
    invoke-virtual {v2, v4, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContact(Ljava/lang/String;Ljava/lang/Long;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v5

    .line 146
    if-eqz v5, :cond_0

    .line 147
    invoke-virtual {v5}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/contacts/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v6

    if-eq v6, v4, :cond_2

    .line 148
    :cond_1
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/contacts/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v6, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->updateHiddenContact(Landroid/util/Pair;Landroid/util/Pair;)Z

    .line 152
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_3
    return-object v1
.end method

.method public getHiddenCount()J
    .locals 4

    .prologue
    .line 599
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 600
    const-string v1, "hidden_numbers"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "hidden_contact"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 603
    return-wide v0
.end method

.method public getHiddenNumbers()Ljava/util/List;
    .locals 10
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
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 570
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 571
    new-instance v1, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 572
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContactsToHide()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    .line 574
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isRemoveFromStore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 575
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 580
    :goto_1
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getLookupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContact(Ljava/lang/String;Ljava/lang/Long;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 578
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->fetchContactData(Lde/gdata/mobilesecurity/contacts/Contact;)V

    goto :goto_1

    .line 583
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 586
    const-string v1, "hidden_numbers"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 589
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 590
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 592
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 595
    return-object v8
.end method

.method public getNumbersToHide()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/privacy/HiddenNumber;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 175
    const-string v1, "hidden_numbers"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    new-instance v2, Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 182
    return-object v1
.end method

.method public getSMS(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/sms/SMS;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 467
    const-string v1, "sms"

    const-string v7, "date DESC"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 470
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 471
    const-string v0, "address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 473
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 476
    invoke-static {v0, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    new-instance v0, Lde/gdata/mobilesecurity/sms/SMS;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/sms/SMS;-><init>(Landroid/database/Cursor;)V

    .line 478
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 486
    return-object v2
.end method

.method public getStoredCalls(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/privacy/Call;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 283
    const-string v1, "calllog"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 285
    const-string v0, "number"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 287
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    invoke-static {v0, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Lde/gdata/mobilesecurity/privacy/Call;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/Call;-><init>(Landroid/database/Cursor;)V

    .line 293
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    :cond_2
    return-object v3
.end method

.method public getStoredContacts()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/contacts/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 226
    const-string v1, "contacts"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 227
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    new-instance v10, Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-direct {v10, v8}, Lde/gdata/mobilesecurity/contacts/Contact;-><init>(Landroid/database/Cursor;)V

    .line 230
    const-string v1, "id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 231
    const-string v1, "raw_contacts"

    const-string v3, "%s = ?"

    new-array v4, v14, [Ljava/lang/Object;

    const-string v5, "contact_id"

    aput-object v5, v4, v13

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 234
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    new-instance v12, Lde/gdata/mobilesecurity/contacts/RawContact;

    invoke-direct {v12, v11}, Lde/gdata/mobilesecurity/contacts/RawContact;-><init>(Landroid/database/Cursor;)V

    .line 236
    const-string v1, "id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 237
    const-string v1, "contacts_data"

    const-string v3, "%s = ?"

    new-array v4, v14, [Ljava/lang/Object;

    const-string v5, "raw_contact_id"

    aput-object v5, v4, v13

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 240
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    new-instance v3, Lde/gdata/mobilesecurity/contacts/ContactData;

    invoke-direct {v3, v1}, Lde/gdata/mobilesecurity/contacts/ContactData;-><init>(Landroid/database/Cursor;)V

    .line 242
    invoke-virtual {v12, v3}, Lde/gdata/mobilesecurity/contacts/RawContact;->addContactData(Lde/gdata/mobilesecurity/contacts/ContactData;)V

    goto :goto_2

    .line 244
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 245
    invoke-virtual {v10, v12}, Lde/gdata/mobilesecurity/contacts/Contact;->addRawContact(Lde/gdata/mobilesecurity/contacts/RawContact;)V

    goto :goto_1

    .line 247
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 248
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 251
    const-string v1, "contacts"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    return-object v9
.end method

.method public getSuppressedNumbers()Ljava/util/List;
    .locals 10
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
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 534
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 535
    new-instance v1, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 536
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContactsToHide()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    .line 537
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isSuppresCommunication()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isRemoveFromStore()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 542
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 547
    :goto_1
    if-nez v0, :cond_1

    .line 548
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getNullContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 550
    :cond_1
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContact(Ljava/lang/String;Ljava/lang/Long;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 545
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->fetchContactData(Lde/gdata/mobilesecurity/contacts/Contact;)V

    goto :goto_1

    .line 553
    :cond_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 556
    const-string v1, "hidden_numbers"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v2, v9

    const-string v3, "suppress_communcation = 1"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 559
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 560
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 562
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 563
    invoke-static {v8}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumbers(Ljava/util/List;)V

    .line 565
    invoke-static {v8}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumbers(Ljava/util/List;)V

    .line 566
    return-object v8
.end method

.method protected getTables()[Lde/gdata/mobilesecurity/database/Table;
    .locals 3

    .prologue
    .line 93
    const/16 v0, 0xd

    new-array v0, v0, [Lde/gdata/mobilesecurity/database/Table;

    const/4 v1, 0x0

    new-instance v2, Lde/gdata/mobilesecurity/sms/SMSTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/sms/SMSTable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lde/gdata/mobilesecurity/privacy/HiddenContactTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/privacy/HiddenContactTable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lde/gdata/mobilesecurity/contacts/RawContactTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/RawContactTable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactDataTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactDataTable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lde/gdata/mobilesecurity/privacy/CallsTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/privacy/CallsTable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin$Table;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin$Table;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lde/gdata/mobilesecurity/privacy/MmsAddressTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/privacy/MmsAddressTable;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lde/gdata/mobilesecurity/privacy/MmsCommunicationTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/privacy/MmsCommunicationTable;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lde/gdata/mobilesecurity/privacy/MmsContactTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/privacy/MmsContactTable;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lde/gdata/mobilesecurity/privacy/MmsOrganisationTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/privacy/MmsOrganisationTable;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public markCallsRead(Ljava/util/List;)V
    .locals 3
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
    .line 693
    const-string v0, "calllog"

    const-string v1, "number"

    const-string v2, "is_read"

    invoke-direct {p0, v0, v1, v2, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 694
    return-void
.end method

.method public markSMSRead(Ljava/util/List;)V
    .locals 3
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
    .line 689
    const-string v0, "sms"

    const-string v1, "address"

    const-string v2, "read"

    invoke-direct {p0, v0, v1, v2, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 690
    return-void
.end method

.method protected onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 101
    invoke-super {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/database/Database;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 102
    if-ge p2, v6, :cond_2

    .line 103
    const-string v0, "select distinct address from  sms"

    invoke-virtual {p1, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 105
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    const-string v3, "UPDATE sms SET address = \'%s\' WHERE address = \'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v1, v4, v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    const-string v0, "select distinct number from  calllog"

    invoke-virtual {p1, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 115
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    const-string v3, "UPDATE calllog SET number = \'%s\' WHERE number = \'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v1, v4, v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_2
    return-void
.end method

.method public removeCalls(Ljava/util/List;)V
    .locals 2
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
    .line 494
    const-string v0, "calllog"

    const-string v1, "number"

    invoke-direct {p0, v0, v1, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 495
    return-void
.end method

.method public removeContact(Lde/gdata/mobilesecurity/contacts/Contact;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 344
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 346
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v2

    .line 347
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 349
    const-string v5, "raw_contacts"

    const-string v6, "id = ?"

    new-array v7, v11, [Ljava/lang/String;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 350
    const-string v5, "contacts_data"

    const-string v6, "raw_contact_id= ?"

    new-array v7, v11, [Ljava/lang/String;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :cond_0
    const-string v0, "contacts"

    const-string v4, "_id = ?"

    new-array v5, v11, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-virtual {v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method public removeContactAccountOrigin(Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;)V
    .locals 8

    .prologue
    .line 657
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 658
    const-string v1, "raw_contact_id= ? AND account_type =  ? AND account_name =  ?"

    .line 662
    const-string v2, "contact_account_origin"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->getRawContactID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->getAccountType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->getAccountName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 665
    return-void
.end method

.method public removeContactToHide(J)V
    .locals 5

    .prologue
    .line 521
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 522
    const-string v1, "DELETE FROM hidden_contact WHERE id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    return-void
.end method

.method public removeNumberToHide(J)V
    .locals 5

    .prologue
    .line 528
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 529
    const-string v1, "DELETE FROM hidden_numbers WHERE id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    return-void
.end method

.method public removeSMS(Ljava/util/List;)V
    .locals 2
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
    .line 490
    const-string v0, "sms"

    const-string v1, "address"

    invoke-direct {p0, v0, v1, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 491
    return-void
.end method

.method public saveContact(Lde/gdata/mobilesecurity/contacts/Contact;)J
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 206
    invoke-direct {p0, p1, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a(Lde/gdata/mobilesecurity/contacts/Contact;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    .line 208
    return-wide v0
.end method

.method public saveContacts(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/contacts/Contact;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/Contact;

    .line 216
    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->a(Lde/gdata/mobilesecurity/contacts/Contact;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 219
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 221
    return-object v2
.end method

.method public updateHiddenContact(JJZZ)V
    .locals 7

    .prologue
    .line 435
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 436
    const-string v1, "remove_from_store"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 437
    const-string v1, "suppress_communcation"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 438
    const-string v1, "contact_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 440
    const-string v2, "hidden_contact"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 442
    return-void
.end method

.method public updateHiddenContact(JZZ)V
    .locals 7

    .prologue
    .line 426
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 427
    const-string v1, "remove_from_store"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 428
    const-string v1, "suppress_communcation"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 429
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 430
    const-string v2, "hidden_contact"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method public updateHiddenContact(Landroid/util/Pair;Landroid/util/Pair;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 258
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 259
    const-string v5, "lookup_key"

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v5, "contact_id"

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    const-string v5, "hidden_contact"

    const-string v0, " %s = ? and %s = ?"

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "lookup_key"

    aput-object v7, v6, v2

    const-string v7, "contact_id"

    aput-object v7, v6, v1

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/String;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 266
    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public updateHiddenNumber(JZ)V
    .locals 7

    .prologue
    .line 445
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 446
    const-string v1, "suppress_communcation"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 447
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 448
    const-string v2, "hidden_numbers"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 450
    return-void
.end method
