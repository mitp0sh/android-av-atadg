.class public Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Landroid/net/Uri;


# instance fields
.field a:I

.field b:I

.field c:Landroid/content/Context;

.field d:Lde/gdata/mobilesecurity/contacts/ContactStore;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->g:Landroid/net/Uri;

    .line 42
    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->a:I

    .line 47
    iput p2, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->b:I

    .line 48
    iput-object p3, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->c:Landroid/content/Context;

    .line 49
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-direct {v0, p3}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->d:Lde/gdata/mobilesecurity/contacts/ContactStore;

    .line 50
    const v0, 0x7f0d00f4

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->f:Ljava/lang/String;

    .line 51
    const v0, 0x7f0d008a

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->e:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 18

    .prologue
    .line 55
    new-instance v8, Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->b:I

    invoke-direct {v8, v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;-><init>(Landroid/content/Context;I)V

    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 59
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data2"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "data1"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "raw_contact_id"

    aput-object v6, v4, v5

    const-string v5, "data2 = ? AND data1 =  ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->b:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->a:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 63
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 64
    move-object/from16 v0, p0

    iget v3, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->b:I

    int-to-long v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->a:I

    invoke-virtual {v8, v4, v5, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContactFromSourceID(JI)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v6

    .line 65
    if-eqz v6, :cond_5

    .line 66
    invoke-virtual {v8}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContactsToHide()Ljava/util/List;

    move-result-object v3

    .line 68
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    .line 69
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v10

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/contacts/Contact;->getID()J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-nez v5, :cond_0

    .line 70
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getID()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeContactToHide(J)V

    goto :goto_0

    .line 73
    :cond_1
    const/4 v4, 0x0

    .line 74
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->d:Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {v3, v6}, Lde/gdata/mobilesecurity/contacts/ContactStore;->addContact(Lde/gdata/mobilesecurity/contacts/Contact;)Landroid/util/Pair;

    .line 75
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v3

    .line 76
    invoke-virtual {v8, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getSMS(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 77
    invoke-virtual {v8, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getStoredCalls(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 78
    invoke-virtual {v8, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeSMS(Ljava/util/List;)V

    .line 79
    invoke-virtual {v8, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeCalls(Ljava/util/List;)V

    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v4

    move v4, v3

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 82
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountType()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->e:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->f:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 84
    sget-object v11, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->g:Landroid/net/Uri;

    const-string v12, "_id = ?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/contacts/RawContact;->getRawContactID()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v14

    invoke-virtual {v2, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v4

    move v4, v5

    :goto_2
    move v5, v4

    move v4, v3

    .line 89
    goto :goto_1

    .line 87
    :cond_2
    const/4 v3, 0x1

    move v4, v5

    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {v8, v6}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeContact(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 91
    if-eqz v4, :cond_5

    .line 92
    new-instance v2, Lde/gdata/mobilesecurity/sms/SMSStore;

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/sms/SMSStore;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v2, v7}, Lde/gdata/mobilesecurity/sms/SMSStore;->saveSMS(Ljava/util/List;)V

    .line 94
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 95
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    new-array v4, v2, [Landroid/content/ContentValues;

    .line 96
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 97
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/privacy/Call;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/Call;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v4, v3

    .line 96
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 99
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 103
    :cond_5
    invoke-virtual {v8}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 143
    :goto_4
    new-instance v2, Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 146
    const-string v3, "mms_contact"

    const-string v4, "profile_id = ? AND source_id =  ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->b:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->a:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 152
    :goto_5
    return-void

    .line 105
    :cond_6
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 106
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 107
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 110
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 111
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 112
    const-string v2, "CorporatePhonebook: can not find contact %d-%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v8}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_5

    .line 117
    :cond_7
    const-string v4, "contact_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 119
    move-object/from16 v0, p0

    iget-object v6, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->d:Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {v6, v4, v5}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v5

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->d:Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/contacts/ContactStore;->fetchContactData(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 121
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 122
    const/4 v3, 0x0

    .line 124
    invoke-virtual {v5}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 125
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountType()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->e:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->f:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 127
    sget-object v7, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->g:Landroid/net/Uri;

    const-string v9, "_id = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/contacts/RawContact;->getRawContactID()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v11

    invoke-virtual {v2, v7, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v4, v3

    move v3, v4

    :goto_7
    move v4, v3

    .line 130
    goto :goto_6

    .line 132
    :cond_8
    invoke-virtual {v8}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContactsToHide()Ljava/util/List;

    move-result-object v3

    .line 133
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    .line 134
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v6

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v10

    cmp-long v6, v6, v10

    if-nez v6, :cond_9

    .line 135
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getID()J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeContactToHide(J)V

    goto :goto_8

    .line 138
    :cond_a
    invoke-virtual {v8}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 139
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "data2 = ? AND data1 =  ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->b:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->a:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_b
    move v3, v4

    goto :goto_7
.end method
