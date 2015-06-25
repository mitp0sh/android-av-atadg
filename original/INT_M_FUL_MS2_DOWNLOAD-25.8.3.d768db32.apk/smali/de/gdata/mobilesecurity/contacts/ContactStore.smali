.class public Lde/gdata/mobilesecurity/contacts/ContactStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PHONE_ACCOUNT_NAME:Ljava/lang/String; = "phone-contacts"

.field public static final PHONE_ACCOUNT_TYPE:Ljava/lang/String; = "com.contacts.phone"

.field public static final SIM_ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.sim"

.field private static nullContact:Lde/gdata/mobilesecurity/contacts/Contact;

.field private static s_accountName:Ljava/lang/String;

.field private static s_accountType:Ljava/lang/String;


# instance fields
.field private m_contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lde/gdata/mobilesecurity/contacts/ContactStore;->nullContact:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 38
    sput-object v0, Lde/gdata/mobilesecurity/contacts/ContactStore;->s_accountType:Ljava/lang/String;

    .line 39
    sput-object v0, Lde/gdata/mobilesecurity/contacts/ContactStore;->s_accountName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactStore;->m_contentResolver:Landroid/content/ContentResolver;

    .line 49
    sget-object v0, Lde/gdata/mobilesecurity/contacts/ContactStore;->nullContact:Lde/gdata/mobilesecurity/contacts/Contact;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/contacts/Contact;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/contacts/ContactStore;->nullContact:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 51
    sget-object v0, Lde/gdata/mobilesecurity/contacts/ContactStore;->nullContact:Lde/gdata/mobilesecurity/contacts/Contact;

    const v1, 0x7f0d0487

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/contacts/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 53
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/contacts/ContactStore;->s_accountName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 54
    const v0, 0x7f0d00f4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/contacts/ContactStore;->s_accountName:Ljava/lang/String;

    .line 55
    const v0, 0x7f0d008a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/contacts/ContactStore;->s_accountType:Ljava/lang/String;

    .line 57
    :cond_1
    return-void
.end method

.method private createNewContact(Lde/gdata/mobilesecurity/contacts/RawContact;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/gdata/mobilesecurity/contacts/RawContact;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 247
    invoke-virtual {p0, p1, v6, v7}, Lde/gdata/mobilesecurity/contacts/ContactStore;->addRawContact(Lde/gdata/mobilesecurity/contacts/RawContact;J)J

    move-result-wide v8

    .line 248
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v10

    const-string v3, " %s = ?"

    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "_id"

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 252
    invoke-virtual {p1, v8, v9}, Lde/gdata/mobilesecurity/contacts/RawContact;->setRawContactID(J)V

    .line 253
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 256
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 257
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    move-wide v0, v6

    goto :goto_0
.end method


# virtual methods
.method public addContact(Lde/gdata/mobilesecurity/contacts/Contact;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/gdata/mobilesecurity/contacts/Contact;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactStore;->addContact(Lde/gdata/mobilesecurity/contacts/Contact;ZLde/gdata/mobilesecurity/privacy/PrivacyDB;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public addContact(Lde/gdata/mobilesecurity/contacts/Contact;ZLde/gdata/mobilesecurity/privacy/PrivacyDB;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/gdata/mobilesecurity/contacts/Contact;",
            "Z",
            "Lde/gdata/mobilesecurity/privacy/PrivacyDB;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v2, Ljava/util/LinkedList;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 314
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 315
    new-instance v1, Landroid/util/Pair;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    if-eqz p2, :cond_0

    .line 317
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountType()Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 319
    sget-object v1, Lde/gdata/mobilesecurity/contacts/ContactStore;->s_accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountType(Ljava/lang/String;)V

    .line 320
    sget-object v1, Lde/gdata/mobilesecurity/contacts/ContactStore;->s_accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountName(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->createNewContact(Lde/gdata/mobilesecurity/contacts/RawContact;)Landroid/util/Pair;

    move-result-object v1

    .line 322
    new-instance v5, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;

    invoke-direct {v5}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;-><init>()V

    .line 323
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->setRawContactID(J)V

    .line 324
    invoke-virtual {v5, v4}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->setAccountName(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v5, v3}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->setAccountType(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p3, v5}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->addContactOrigin(Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;)V

    move-object v6, v1

    .line 331
    :goto_0
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 373
    :goto_1
    return-object v0

    .line 328
    :cond_0
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->createNewContact(Lde/gdata/mobilesecurity/contacts/RawContact;)Landroid/util/Pair;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 334
    if-eqz p2, :cond_2

    .line 335
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountType()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 337
    sget-object v1, Lde/gdata/mobilesecurity/contacts/ContactStore;->s_accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountType(Ljava/lang/String;)V

    .line 338
    sget-object v1, Lde/gdata/mobilesecurity/contacts/ContactStore;->s_accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountName(Ljava/lang/String;)V

    .line 339
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v0, v8, v9}, Lde/gdata/mobilesecurity/contacts/ContactStore;->addRawContact(Lde/gdata/mobilesecurity/contacts/RawContact;J)J

    move-result-wide v0

    .line 340
    new-instance v5, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;

    invoke-direct {v5}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;-><init>()V

    .line 341
    invoke-virtual {v5, v0, v1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->setRawContactID(J)V

    .line 342
    invoke-virtual {v5, v4}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->setAccountName(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v5, v3}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->setAccountType(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p3, v5}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->addContactOrigin(Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;)V

    goto :goto_2

    .line 346
    :cond_2
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lde/gdata/mobilesecurity/contacts/ContactStore;->addRawContact(Lde/gdata/mobilesecurity/contacts/RawContact;J)J

    goto :goto_2

    .line 349
    :cond_3
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 350
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 351
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 352
    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "times_contacted"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const-string v4, "last_time_contacted"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "starred"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "custom_ringtone"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "send_to_voicemail"

    aput-object v4, v3, v0

    .line 354
    array-length v4, v3

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 355
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 358
    :cond_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 362
    :cond_5
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lookup"

    aput-object v4, v2, v3

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 365
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lde/gdata/mobilesecurity/contacts/Contact;->setContactID(J)V

    .line 367
    const-string v0, ""

    .line 368
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 369
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 373
    new-instance v1, Landroid/util/Pair;

    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_1
.end method

.method public addRawContact(Lde/gdata/mobilesecurity/contacts/RawContact;J)J
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 267
    invoke-virtual {p1, p2, p3}, Lde/gdata/mobilesecurity/contacts/RawContact;->setContactID(J)V

    .line 268
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 269
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountName(Ljava/lang/String;)V

    .line 270
    const-string v0, ""

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountType(Ljava/lang/String;)V

    .line 272
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/RawContact;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 274
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 276
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/RawContact;->getContactData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/ContactData;

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentType :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getMIMEType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_2
    const-wide/16 v0, -0x1

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 287
    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 296
    :goto_1
    invoke-virtual {p1, v0, v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->setRawContactID(J)V

    .line 297
    return-wide v0

    .line 288
    :catch_0
    move-exception v2

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure to restore :\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n Succesfull inserts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->getNumSuccessfulYieldPoints()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 292
    :catch_1
    move-exception v2

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure to restore :\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public fetchContactData(Lde/gdata/mobilesecurity/contacts/Contact;)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 186
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id = ?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 188
    new-instance v1, Lde/gdata/mobilesecurity/contacts/ContactDataTable;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/contacts/ContactDataTable;-><init>()V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/ContactDataTable;->getProjection()[Ljava/lang/String;

    move-result-object v5

    .line 189
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    new-instance v1, Lde/gdata/mobilesecurity/contacts/RawContact;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;-><init>(Landroid/database/Cursor;)V

    .line 191
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->getRawContactID()J

    move-result-wide v8

    .line 192
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "%s = ?"

    new-array v7, v12, [Ljava/lang/Object;

    const-string v10, "raw_contact_id"

    aput-object v10, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 195
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    new-instance v4, Lde/gdata/mobilesecurity/contacts/ContactData;

    invoke-direct {v4, v3}, Lde/gdata/mobilesecurity/contacts/ContactData;-><init>(Landroid/database/Cursor;)V

    .line 197
    invoke-virtual {v1, v4}, Lde/gdata/mobilesecurity/contacts/RawContact;->addContactData(Lde/gdata/mobilesecurity/contacts/ContactData;)V

    goto :goto_1

    .line 199
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 200
    invoke-virtual {p1, v1}, Lde/gdata/mobilesecurity/contacts/Contact;->addRawContact(Lde/gdata/mobilesecurity/contacts/RawContact;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    return-void
.end method

.method public getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 156
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 159
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;-><init>()V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v5, Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-direct {v5, v0}, Lde/gdata/mobilesecurity/contacts/Contact;-><init>(Landroid/database/Cursor;)V

    .line 164
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    return-object v5
.end method

.method public getContact(Ljava/lang/String;Ljava/lang/Long;)Lde/gdata/mobilesecurity/contacts/Contact;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 171
    if-eqz p1, :cond_0

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 172
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/contacts/ContactStore;->nullContact:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 181
    :goto_0
    return-object v0

    .line 174
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;-><init>()V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    new-instance v0, Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/contacts/Contact;-><init>(Landroid/database/Cursor;)V

    .line 180
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 178
    :cond_2
    sget-object v0, Lde/gdata/mobilesecurity/contacts/ContactStore;->nullContact:Lde/gdata/mobilesecurity/contacts/Contact;

    goto :goto_1
.end method

.method public getContactIterator()Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getCursor(Z)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;-><init>(Lde/gdata/mobilesecurity/contacts/ContactStore;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public getContacts()Ljava/util/List;
    .locals 1
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
    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContacts(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContacts(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/contacts/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContactIterator()Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    :goto_0
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;->next()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v2

    .line 146
    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/contacts/ContactStore;->fetchContactData(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 148
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;->close()V

    .line 152
    return-object v1
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactStore;->m_contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getCursor(Z)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;-><init>()V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v4, "%s ASC"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "display_name"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactTable;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/contacts/ContactTable;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactTable;->getProjection()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "has_phone_number = 1"

    const-string v0, "%s ASC"

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "display_name"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getCursor(Z[I)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string v0, "_id NOT IN (-1 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    if-eqz p2, :cond_0

    .line 85
    array-length v2, p2

    move v0, v8

    :goto_0
    if-ge v0, v2, :cond_0

    aget v4, p2, v0

    .line 86
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x29

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 91
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;-><init>()V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v4, "%s ASC"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "display_name"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 95
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactTable;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/contacts/ContactTable;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactTable;->getProjection()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "has_phone_number = 1 "

    const-string v0, "%s ASC"

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "display_name"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1
.end method

.method public getCursorFromName(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 64
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 66
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;-><init>()V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 68
    return-object v0
.end method

.method public getCursorFromName(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 101
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 103
    const-string v0, "%%%s%%"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 104
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;-><init>()V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "display_name like ?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "%s ASC"

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "display_name"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;-><init>()V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "display_name like ? and has_phone_number = 1"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "%s ASC"

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "display_name"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getCursorFromNumber(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 116
    const-string v0, "%%%s%%"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 117
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 118
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v8

    const-string v3, "data1 like ? "

    new-array v4, v9, [Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "%s ASC"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "display_name"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 122
    const-string v2, "_id in  ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    :cond_0
    const-string v2, "-1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactTable;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;-><init>()V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/ContactTable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "%s ASC"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "display_name"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getNullContact()Lde/gdata/mobilesecurity/contacts/Contact;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lde/gdata/mobilesecurity/contacts/ContactStore;->nullContact:Lde/gdata/mobilesecurity/contacts/Contact;

    return-object v0
.end method

.method public removeContact(Lde/gdata/mobilesecurity/contacts/Contact;)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v4

    .line 208
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getLookupKey()Ljava/lang/String;

    .line 210
    invoke-virtual {p0, v4, v5}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 211
    if-nez v0, :cond_0

    .line 238
    :goto_0
    return v2

    .line 214
    :cond_0
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    .line 215
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v4

    .line 223
    :try_start_0
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 224
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move v3, v2

    :goto_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 225
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getRawContactID()J

    move-result-wide v8

    .line 226
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "_id = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-virtual {v0, v5, v7, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v3, v0

    .line 228
    goto :goto_1

    .line 230
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    add-int/2addr v0, v3

    .line 238
    :goto_2
    if-lez v0, :cond_2

    move v0, v1

    :goto_3
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    .line 234
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_2
.end method
