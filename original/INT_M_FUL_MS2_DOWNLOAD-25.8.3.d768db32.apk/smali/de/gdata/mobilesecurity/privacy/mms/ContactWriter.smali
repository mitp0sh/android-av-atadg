.class public Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/net/Uri;

.field static final b:Landroid/util/SparseIntArray;


# instance fields
.field c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

.field d:Landroid/content/Context;

.field e:Lde/gdata/mobilesecurity/contacts/ContactStore;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 51
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b:Landroid/util/SparseIntArray;

    .line 52
    sget-object v0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b:Landroid/util/SparseIntArray;

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->FAX_PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b:Landroid/util/SparseIntArray;

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->FAX_WORK:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b:Landroid/util/SparseIntArray;

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->MOBILE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b:Landroid/util/SparseIntArray;

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->PHONE_PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    sget-object v0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b:Landroid/util/SparseIntArray;

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->PHONE_WORK:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b:Landroid/util/SparseIntArray;

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->NONE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget-object v0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b:Landroid/util/SparseIntArray;

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->MAIL_PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    sget-object v0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b:Landroid/util/SparseIntArray;

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->MAIL_WORK:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->a:Landroid/net/Uri;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;I)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->d:Landroid/content/Context;

    .line 74
    iput p3, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->h:I

    .line 75
    iput-object p2, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    .line 76
    const v0, 0x7f0d00f4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->f:Ljava/lang/String;

    .line 77
    const v0, 0x7f0d008a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->g:Ljava/lang/String;

    .line 78
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->e:Lde/gdata/mobilesecurity/contacts/ContactStore;

    .line 79
    invoke-static {p1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->checkAccount(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method private a()Lde/gdata/mobilesecurity/contacts/Contact;
    .locals 4

    .prologue
    .line 262
    iget v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->h:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 263
    new-instance v2, Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/Contact;-><init>()V

    .line 265
    new-instance v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;-><init>()V

    .line 266
    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/contacts/Contact;->addRawContact(Lde/gdata/mobilesecurity/contacts/RawContact;)V

    .line 267
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->a(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V

    .line 269
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->e:Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/contacts/ContactStore;->addContact(Lde/gdata/mobilesecurity/contacts/Contact;)Landroid/util/Pair;

    move-result-object v1

    .line 270
    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->e:Lde/gdata/mobilesecurity/contacts/ContactStore;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v3, v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContact(Ljava/lang/String;Ljava/lang/Long;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->e:Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->fetchContactData(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 275
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method private a(Lde/gdata/mobilesecurity/contacts/Contact;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 279
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 283
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountType()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getSourceID()J

    move-result-wide v4

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Lde/gdata/mobilesecurity/contacts/RawContact;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/contacts/RawContact;-><init>()V

    .line 291
    iget-object v4, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-direct {p0, v1, v4}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->a(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V

    .line 293
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->getContactData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "raw_contact_id= ?"

    new-array v7, v11, [Ljava/lang/String;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getRawContactID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->getContactData()Ljava/util/List;

    move-result-object v1

    .line 301
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/contacts/ContactData;

    .line 302
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getRawContactID()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lde/gdata/mobilesecurity/contacts/ContactData;->setRawContactID(J)V

    .line 303
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/ContactData;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    :cond_1
    :try_start_0
    const-string v0, "com.android.contacts"

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 308
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v4, "Result is %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 314
    :cond_2
    return-void
.end method

.method private a(Lde/gdata/mobilesecurity/contacts/Contact;Lde/gdata/mobilesecurity/privacy/PrivacyDB;)V
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getSMS(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 181
    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeSMS(Ljava/util/List;)V

    .line 182
    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getStoredCalls(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 183
    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeCalls(Ljava/util/List;)V

    .line 185
    new-instance v0, Lde/gdata/mobilesecurity/sms/SMSStore;

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->d:Landroid/content/Context;

    invoke-direct {v0, v3}, Lde/gdata/mobilesecurity/sms/SMSStore;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/sms/SMSStore;->saveSMS(Ljava/util/List;)V

    .line 187
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 188
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Landroid/content/ContentValues;

    .line 189
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 190
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/Call;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/Call;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v3, v1

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 194
    :cond_1
    return-void
.end method

.method private a(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountName(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountType(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->setSourceID(J)V

    .line 320
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->d(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V

    .line 321
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V

    .line 322
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->f(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V

    .line 323
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->e(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V

    .line 324
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V

    .line 325
    return-void
.end method

.method private b(Lde/gdata/mobilesecurity/contacts/Contact;Lde/gdata/mobilesecurity/privacy/PrivacyDB;)V
    .locals 10

    .prologue
    .line 197
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 198
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getVisibility()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item$Visibilitys;->HIDDEN:Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    .line 200
    :goto_0
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContactsToHide()Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    .line 204
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v4

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    .line 209
    :goto_1
    if-nez v0, :cond_1

    .line 210
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v2

    iget v4, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->h:I

    const/4 v5, 0x1

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->addContactToHide(JIZZ)Lde/gdata/mobilesecurity/privacy/HiddenContact;

    move-result-object v0

    .line 212
    :cond_1
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getID()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {p2, v2, v3, v1, v6}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->updateHiddenContact(JZZ)V

    .line 213
    if-eqz v6, :cond_3

    .line 214
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "mms-%d-%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getId()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p1, v1}, Lde/gdata/mobilesecurity/contacts/Contact;->setLookupKey(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->saveContact(Lde/gdata/mobilesecurity/contacts/Contact;)J

    move-result-wide v2

    .line 217
    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->setContactID(J)V

    .line 219
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getLookupKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->updateHiddenContact(Landroid/util/Pair;Landroid/util/Pair;)Z

    .line 221
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 223
    sget-object v3, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->a:Landroid/net/Uri;

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getRawContactID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v7, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 225
    goto :goto_2

    .line 198
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 227
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private b(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V
    .locals 3

    .prologue
    .line 328
    new-instance v0, Lde/gdata/mobilesecurity/contacts/MMSIdentity;

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->h:I

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;-><init>(II)V

    .line 329
    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->addContactData(Lde/gdata/mobilesecurity/contacts/ContactData;)V

    .line 330
    return-void
.end method

.method private c(Lde/gdata/mobilesecurity/contacts/Contact;Lde/gdata/mobilesecurity/privacy/PrivacyDB;)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 230
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 233
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getSourceID()J

    move-result-wide v2

    iget-object v4, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 239
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getID()J

    move-result-wide v2

    .line 240
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 241
    const-string v1, "contacts_data"

    const-string v5, "raw_contact_id= ?"

    new-array v6, v7, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-virtual {v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 243
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->clearContactData()V

    .line 245
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->a(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V

    .line 246
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 248
    const-string v2, "raw_contacts"

    const-string v3, "id = ?"

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v2, v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 250
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getContactData()Ljava/util/List;

    move-result-object v1

    .line 251
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/contacts/ContactData;

    .line 252
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getID()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lde/gdata/mobilesecurity/contacts/ContactData;->setRawContactID(J)V

    .line 253
    const-string v3, "contacts_data"

    const/4 v5, 0x0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/ContactData;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v4, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 259
    :cond_1
    return-void
.end method

.method private c(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V
    .locals 5

    .prologue
    .line 333
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getOrganisation()Ljava/util/List;

    move-result-object v0

    .line 334
    if-nez v0, :cond_1

    .line 343
    :cond_0
    return-void

    .line 335
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;

    .line 336
    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactData;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactData;-><init>()V

    .line 337
    const-string v3, "data1"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v3, "data2"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;I)V

    .line 339
    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/contacts/ContactData;->setMIMEType(Ljava/lang/String;)V

    .line 340
    const-string v3, "data_sync1"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;I)V

    .line 341
    invoke-virtual {p1, v2}, Lde/gdata/mobilesecurity/contacts/RawContact;->addContactData(Lde/gdata/mobilesecurity/contacts/ContactData;)V

    goto :goto_0
.end method

.method private d(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V
    .locals 6

    .prologue
    .line 346
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactData;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/contacts/ContactData;-><init>()V

    .line 348
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getLastName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->setLastName(Ljava/lang/String;)V

    .line 350
    :cond_0
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getFirstName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {p2, v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->setFirstName(Ljava/lang/String;)V

    .line 352
    :cond_1
    const-string v1, "data1"

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getFirstName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getLastName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "data3"

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "data2"

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "data5"

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getMiddleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "data4"

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getNamePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "data_sync1"

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;I)V

    .line 358
    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactData;->setMIMEType(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->addContactData(Lde/gdata/mobilesecurity/contacts/ContactData;)V

    .line 360
    return-void
.end method

.method private e(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V
    .locals 6

    .prologue
    .line 363
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getCommunication()Ljava/util/List;

    move-result-object v0

    .line 364
    if-nez v0, :cond_1

    .line 381
    :cond_0
    return-void

    .line 365
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;

    .line 366
    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactData;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactData;-><init>()V

    .line 367
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->getType()Ljava/lang/Integer;

    move-result-object v3

    .line 368
    sget-object v4, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->MAIL_PRIVATE:Ljava/lang/Integer;

    if-eq v3, v4, :cond_2

    sget-object v4, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->MAIL_WORK:Ljava/lang/Integer;

    if-ne v3, v4, :cond_3

    .line 369
    :cond_2
    const-string v4, "data2"

    sget-object v5, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;I)V

    .line 370
    const-string v3, "data1"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v3, "data_sync1"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;I)V

    .line 372
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->setMIMEType(Ljava/lang/String;)V

    .line 379
    :goto_1
    invoke-virtual {p1, v2}, Lde/gdata/mobilesecurity/contacts/RawContact;->addContactData(Lde/gdata/mobilesecurity/contacts/ContactData;)V

    goto :goto_0

    .line 374
    :cond_3
    const-string v4, "data2"

    sget-object v5, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;I)V

    .line 375
    const-string v3, "data1"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v3, "data_sync1"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;I)V

    .line 377
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->setMIMEType(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private f(Lde/gdata/mobilesecurity/contacts/RawContact;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;)V
    .locals 5

    .prologue
    .line 384
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getAddress()Ljava/util/List;

    move-result-object v0

    .line 385
    if-nez v0, :cond_1

    .line 400
    :cond_0
    return-void

    .line 386
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;

    .line 387
    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactData;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/contacts/ContactData;-><init>()V

    .line 388
    const-string v3, "data4"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;->getStreet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v3, "data7"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v3, "data5"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;->getPostOfficeBox()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v3, "data9"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;->getPostcode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v3, "data10"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v3, "data8"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v3, "data6"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;->getNeighbourhood()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v3, "data2"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;I)V

    .line 396
    const-string v3, "data_sync1"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->setData(Ljava/lang/String;I)V

    .line 397
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->setMIMEType(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1, v2}, Lde/gdata/mobilesecurity/contacts/RawContact;->addContactData(Lde/gdata/mobilesecurity/contacts/ContactData;)V

    goto :goto_0
.end method


# virtual methods
.method public write()V
    .locals 14

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Writing Contact "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    new-instance v6, Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->d:Landroid/content/Context;

    iget v2, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->h:I

    invoke-direct {v6, v1, v2}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;-><init>(Landroid/content/Context;I)V

    .line 91
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data2"

    aput-object v3, v2, v12

    const-string v3, "data1"

    aput-object v3, v2, v13

    const-string v3, "raw_contact_id"

    aput-object v3, v2, v8

    const-string v3, "data2 = ? AND data1 =  ?"

    new-array v4, v8, [Ljava/lang/String;

    iget v7, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->h:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v12

    iget-object v7, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v13

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 94
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 95
    const-string v0, "No Contact in Store"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 97
    iget v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->h:I

    int-to-long v0, v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContactFromSourceID(JI)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v1

    .line 99
    if-nez v1, :cond_1

    .line 100
    const-string v0, "No Contact in PDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->a()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getVisibility()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item$Visibilitys;->VISIBLE:Ljava/lang/Integer;

    if-eq v1, v2, :cond_0

    .line 105
    invoke-direct {p0, v0, v6}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b(Lde/gdata/mobilesecurity/contacts/Contact;Lde/gdata/mobilesecurity/privacy/PrivacyDB;)V

    .line 107
    :cond_0
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 176
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v0, "Updating PDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getVisibility()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item$Visibilitys;->HIDDEN:Ljava/lang/Integer;

    if-ne v0, v2, :cond_2

    .line 112
    invoke-direct {p0, v1, v6}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c(Lde/gdata/mobilesecurity/contacts/Contact;Lde/gdata/mobilesecurity/privacy/PrivacyDB;)V

    .line 174
    :goto_1
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContactsToHide()Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    .line 117
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v8

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/Contact;->getID()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_3

    .line 122
    :goto_2
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->e:Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/contacts/ContactStore;->addContact(Lde/gdata/mobilesecurity/contacts/Contact;)Landroid/util/Pair;

    move-result-object v2

    .line 123
    invoke-virtual {v6, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeContact(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 124
    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getVisibility()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item$Visibilitys;->COMMUNICATION_HIDDEN:Ljava/lang/Integer;

    if-ne v3, v4, :cond_4

    .line 125
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getID()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5, v13, v12}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->updateHiddenContact(JZZ)V

    .line 126
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getLookupPair()Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v6, v0, v2}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->updateHiddenContact(Landroid/util/Pair;Landroid/util/Pair;)Z

    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getID()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeContactToHide(J)V

    .line 129
    invoke-direct {p0, v1, v6}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->a(Lde/gdata/mobilesecurity/contacts/Contact;Lde/gdata/mobilesecurity/privacy/PrivacyDB;)V

    goto :goto_1

    .line 133
    :cond_5
    const-string v2, "Contact in Store"

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 134
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id = ?"

    new-array v4, v13, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v12

    move-object v2, v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 140
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    const-string v0, "CorporatePhonebook: can not find contact %d-%d"

    new-array v1, v8, [Ljava/lang/Object;

    iget v2, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getId()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 147
    :cond_6
    const-string v1, "contact_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 149
    const-string v1, "Contact already known"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->e:Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->e:Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/contacts/ContactStore;->fetchContactData(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 152
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->c:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getVisibility()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item$Visibilitys;->VISIBLE:Ljava/lang/Integer;

    if-eq v0, v2, :cond_7

    .line 155
    invoke-direct {p0, v1, v6}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->b(Lde/gdata/mobilesecurity/contacts/Contact;Lde/gdata/mobilesecurity/privacy/PrivacyDB;)V

    goto/16 :goto_1

    .line 157
    :cond_7
    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->a(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 158
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContactsToHide()Ljava/util/List;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    .line 161
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v8

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_8

    .line 166
    :goto_3
    if-eqz v0, :cond_9

    .line 167
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getID()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeContactToHide(J)V

    .line 169
    :cond_9
    invoke-direct {p0, v1, v6}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->a(Lde/gdata/mobilesecurity/contacts/Contact;Lde/gdata/mobilesecurity/privacy/PrivacyDB;)V

    goto/16 :goto_1

    :cond_a
    move-object v0, v5

    goto :goto_3

    :cond_b
    move-object v0, v5

    goto/16 :goto_2
.end method
