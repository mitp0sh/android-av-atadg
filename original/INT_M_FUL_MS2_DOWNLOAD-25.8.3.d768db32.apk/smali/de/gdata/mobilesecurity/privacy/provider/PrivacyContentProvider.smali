.class public Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final CALLS:I = 0x6

.field public static final CONTACTS:I = 0x1

.field public static final CONTACTS_MDM:I = 0x8

.field public static final CONTACT_DATA_ID:I = 0x5

.field public static final CONTACT_ID:I = 0x3

.field public static final HIDDEN_COUNT_CHANGED:Ljava/lang/String; = "de.gdata.mobilesecurity.privacy.provider.HIDDEN_COUNT_CHANGED"

.field public static final NUMBERS:I = 0x2

.field public static final NUMBERS_MDM:I = 0x9

.field public static final NUMBER_ID:I = 0x4

.field public static final PRIVACY_PROFILE_ID:I = 0x0

.field public static final SMSES:I = 0x7

.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:Landroid/net/Uri;

.field private static final f:Landroid/net/Uri;

.field private static final g:Landroid/net/Uri;

.field private static final h:Landroid/content/UriMatcher;

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lde/gdata/mobilesecurity/privacy/PrivacyDB;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lde/gdata/mobilesecurity/contacts/ContactStore;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x6

    .line 75
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 76
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "contacts/"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a:Landroid/net/Uri;

    .line 78
    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "contact/"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b:Landroid/net/Uri;

    .line 79
    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "numbers/"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->c:Landroid/net/Uri;

    .line 80
    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "number/"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->d:Landroid/net/Uri;

    .line 81
    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "contact_data/"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->e:Landroid/net/Uri;

    .line 82
    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "calls/"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->f:Landroid/net/Uri;

    .line 83
    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sms/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->g:Landroid/net/Uri;

    .line 85
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    .line 87
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    const-string v2, "contacts/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    const-string v2, "contact/#/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    const-string v2, "numbers/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    const-string v2, "number/#/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    const-string v2, "contact_data/#/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    const-string v2, "calls/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    const-string v2, "calls/#/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    const-string v2, "sms/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    const-string v1, "de.gdata.mobilesecurity.privacy.provider"

    const-string v2, "sms/#/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->i:Ljava/util/Map;

    .line 101
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->i:Ljava/util/Map;

    const-string v1, "vnd.sec.contact.sim"

    new-instance v2, Landroid/util/Pair;

    const-string v3, "vnd.sec.contact.phone"

    const-string v4, "vnd.sec.contact.phone"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->i:Ljava/util/Map;

    const-string v1, "com.contacts.sim"

    new-instance v2, Landroid/util/Pair;

    const-string v3, "com.contacts.phone"

    const-string v4, "phone-contacts"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 187
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->j:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    invoke-static {v7}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getSMSUri(I)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v7

    const-string v3, "read = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 159
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v1, v7

    move v6, v1

    .line 162
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 164
    invoke-static {v7}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getCallsUri(I)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v7

    const-string v3, "is_read = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v6, v1

    .line 169
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 171
    return v6

    :cond_1
    move v6, v7

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 13

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x0

    .line 375
    :cond_0
    :goto_0
    return-object v0

    .line 292
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 296
    invoke-direct {p0, v8}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b(I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 297
    sget-object v1, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 299
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :pswitch_1
    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 303
    new-instance v1, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 304
    invoke-virtual {v1, v10, v11}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v9

    .line 306
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

    aput-object v9, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 310
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 311
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 312
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 315
    new-instance v2, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v9

    move-wide v4, v10

    invoke-direct/range {v2 .. v8}, Lde/gdata/mobilesecurity/privacy/HiddenContact;-><init>(Ljava/lang/String;JZZI)V

    .line 317
    const-string v1, "hidden_contact"

    const/4 v3, 0x0

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 318
    sget-object v2, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 319
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a:Landroid/net/Uri;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 372
    :goto_1
    if-eqz p3, :cond_0

    .line 373
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 323
    :pswitch_2
    const-string v1, "number"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    new-instance v2, Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;-><init>(Ljava/lang/String;Z)V

    .line 326
    const-string v1, "hidden_numbers"

    const/4 v3, 0x0

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 327
    sget-object v2, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->d:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 328
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->c:Landroid/net/Uri;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 329
    goto :goto_1

    .line 333
    :pswitch_3
    sget-object v1, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->f:Landroid/net/Uri;

    .line 334
    sget-object v2, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->f:Landroid/net/Uri;

    .line 335
    const-string v3, "number"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v0, v2

    .line 336
    goto :goto_1

    .line 338
    :cond_3
    const-string v3, "date"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 339
    const-string v3, "number"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 341
    const-string v6, "type"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT * FROM calllog WHERE date = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND number=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 346
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 347
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 348
    goto/16 :goto_1

    .line 350
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 352
    const-string v3, "calllog"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    .line 353
    const-string v0, "Failed to save call"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 359
    :pswitch_4
    sget-object v1, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->g:Landroid/net/Uri;

    .line 360
    sget-object v2, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->g:Landroid/net/Uri;

    .line 361
    const-string v3, "address"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 362
    const-string v3, "address"

    const-string v4, "address"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_5
    const-string v3, "sms"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    .line 366
    const-string v0, "Failed to save sms"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    :cond_6
    move-object v0, v2

    goto/16 :goto_1

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private declared-synchronized a()Lde/gdata/mobilesecurity/contacts/ContactStore;
    .locals 2

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->k:Lde/gdata/mobilesecurity/contacts/ContactStore;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->k:Lde/gdata/mobilesecurity/contacts/ContactStore;

    .line 194
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->k:Lde/gdata/mobilesecurity/contacts/ContactStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;
    .locals 7

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/PrivacyDB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    monitor-exit p0

    return-object v0

    .line 207
    :cond_0
    if-nez p1, :cond_1

    .line 208
    :try_start_1
    new-instance v0, Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;-><init>(Landroid/content/Context;)V

    .line 213
    :goto_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 210
    :cond_1
    :try_start_2
    new-instance v0, Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "privacy_%d.db"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private a(Landroid/content/ContentValues;Lde/gdata/mobilesecurity/privacy/HiddenContact;I)V
    .locals 8

    .prologue
    .line 616
    const-string v0, "suppress_communcation"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 617
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isRemoveFromStore()Z

    move-result v7

    .line 618
    const-string v1, "remove_from_store"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    const-string v1, "remove_from_store"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 620
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContact(Landroid/content/Context;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v1

    .line 621
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isRemoveFromStore()Z

    move-result v2

    if-eq v7, v2, :cond_0

    .line 622
    if-eqz v7, :cond_1

    .line 623
    invoke-direct {p0, p2, v1, p3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b(Lde/gdata/mobilesecurity/privacy/HiddenContact;Lde/gdata/mobilesecurity/contacts/Contact;I)V

    .line 627
    :goto_0
    invoke-virtual {p2, v7}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->setRemoveFromStore(Z)V

    .line 630
    :cond_0
    invoke-direct {p0, p3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v1

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getID()J

    move-result-wide v2

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual/range {v1 .. v7}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->updateHiddenContact(JJZZ)V

    .line 631
    return-void

    .line 625
    :cond_1
    invoke-direct {p0, p2, v1, p3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(Lde/gdata/mobilesecurity/privacy/HiddenContact;Lde/gdata/mobilesecurity/contacts/Contact;I)V

    goto :goto_0
.end method

.method private a(Lde/gdata/mobilesecurity/privacy/HiddenContact;I)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 468
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContact(Landroid/content/Context;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v8

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/contacts/Contact;->isValidContact()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-direct {p0, v8, v3, p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(Lde/gdata/mobilesecurity/contacts/Contact;ZI)Z

    move-result v1

    .line 473
    invoke-virtual {v8}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    .line 475
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isRemoveFromStore()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    invoke-direct {p0, p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v1

    invoke-virtual {v1, v8}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeContact(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 477
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a()Lde/gdata/mobilesecurity/contacts/ContactStore;

    move-result-object v1

    invoke-virtual {v1, v8}, Lde/gdata/mobilesecurity/contacts/ContactStore;->addContact(Lde/gdata/mobilesecurity/contacts/Contact;)Landroid/util/Pair;

    .line 487
    :cond_0
    :goto_0
    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumbers(Ljava/util/List;)V

    .line 488
    invoke-direct {p0, p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeContactToHide(J)V

    .line 489
    invoke-direct {p0, v0, p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(Ljava/util/List;I)V

    .line 490
    return-void

    .line 478
    :cond_1
    if-eqz v1, :cond_0

    .line 479
    invoke-direct {p0, p1, v8, p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b(Lde/gdata/mobilesecurity/privacy/HiddenContact;Lde/gdata/mobilesecurity/contacts/Contact;I)V

    .line 480
    invoke-virtual {p1, v3}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->setRemoveFromStore(Z)V

    .line 481
    invoke-direct {p0, p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getID()J

    move-result-wide v2

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContactID()J

    move-result-wide v4

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isSuppresCommunication()Z

    move-result v6

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isRemoveFromStore()Z

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->updateHiddenContact(JJZZ)V

    .line 483
    invoke-direct {p0, p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v1

    invoke-virtual {v1, v8}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeContact(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 484
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a()Lde/gdata/mobilesecurity/contacts/ContactStore;

    move-result-object v1

    invoke-virtual {v1, v8}, Lde/gdata/mobilesecurity/contacts/ContactStore;->addContact(Lde/gdata/mobilesecurity/contacts/Contact;)Landroid/util/Pair;

    goto :goto_0
.end method

.method private a(Lde/gdata/mobilesecurity/privacy/HiddenContact;Lde/gdata/mobilesecurity/contacts/Contact;I)V
    .locals 3

    .prologue
    .line 634
    invoke-direct {p0, p3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v0

    .line 635
    new-instance v1, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 637
    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeContact(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 638
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->addContact(Lde/gdata/mobilesecurity/contacts/Contact;ZLde/gdata/mobilesecurity/privacy/PrivacyDB;)Landroid/util/Pair;

    move-result-object v1

    .line 639
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getLookupPair()Landroid/util/Pair;

    move-result-object v2

    .line 640
    invoke-virtual {v0, v2, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->updateHiddenContact(Landroid/util/Pair;Landroid/util/Pair;)Z

    .line 642
    return-void
.end method

.method private a(Lde/gdata/mobilesecurity/privacy/HiddenNumber;I)V
    .locals 4

    .prologue
    .line 459
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 460
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-direct {p0, p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->getID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeNumberToHide(J)V

    .line 463
    invoke-direct {p0, v0, p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(Ljava/util/List;I)V

    .line 465
    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 493
    invoke-direct {p0, p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v2

    .line 494
    new-instance v0, Lde/gdata/mobilesecurity/sms/SMSStore;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/sms/SMSStore;-><init>(Landroid/content/Context;)V

    .line 495
    invoke-virtual {v2, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getSMS(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 496
    invoke-virtual {v2, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeSMS(Ljava/util/List;)V

    .line 497
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/sms/SMSStore;->saveSMS(Ljava/util/List;)V

    .line 499
    invoke-virtual {v2, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getStoredCalls(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 500
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Landroid/content/ContentValues;

    .line 501
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 502
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/Call;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/Call;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v4, v1

    .line 501
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 505
    invoke-virtual {v2, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeCalls(Ljava/util/List;)V

    .line 507
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getCallsUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 508
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getSMSUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 509
    return-void
.end method

.method private a(Lde/gdata/mobilesecurity/contacts/Contact;ZI)Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 512
    const/4 v0, 0x0

    .line 513
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/contacts/Contact;->getRawContacts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v8, v0

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/RawContact;

    .line 515
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 518
    sget-object v4, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->i:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 519
    sget-object v3, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->i:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 520
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountType(Ljava/lang/String;)V

    .line 521
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountName(Ljava/lang/String;)V

    move v0, v9

    :goto_1
    move v8, v0

    .line 552
    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d008a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0d00f4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 526
    :cond_2
    invoke-direct {p0, p3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/RawContact;->getRawContactID()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getContactAccountOrigin(J)Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->isValid()Z

    move-result v3

    if-nez v3, :cond_3

    .line 529
    const-string v0, "We should have a CAO"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 531
    invoke-direct {p0, p3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b(I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "contact_account_origin"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 534
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "raw_contact_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 543
    :cond_3
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountName(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/contacts/RawContact;->setAccountType(Ljava/lang/String;)V

    .line 545
    if-eqz p2, :cond_4

    .line 546
    invoke-direct {p0, p3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->removeContactAccountOrigin(Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;)V

    :cond_4
    move v0, v9

    .line 548
    goto/16 :goto_1

    .line 553
    :cond_5
    return v8

    :cond_6
    move v0, v8

    goto/16 :goto_1
.end method

.method private b(I)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 405
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lde/gdata/mobilesecurity/privacy/provider/a;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/privacy/provider/a;-><init>(Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 413
    return-void
.end method

.method private b(Lde/gdata/mobilesecurity/privacy/HiddenContact;Lde/gdata/mobilesecurity/contacts/Contact;I)V
    .locals 3

    .prologue
    .line 645
    invoke-direct {p0, p3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v0

    .line 646
    new-instance v1, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 648
    const/4 v2, 0x1

    invoke-direct {p0, p2, v2, p3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(Lde/gdata/mobilesecurity/contacts/Contact;ZI)Z

    .line 649
    invoke-virtual {v1, p2}, Lde/gdata/mobilesecurity/contacts/ContactStore;->removeContact(Lde/gdata/mobilesecurity/contacts/Contact;)Z

    .line 650
    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->saveContact(Lde/gdata/mobilesecurity/contacts/Contact;)J

    move-result-wide v0

    .line 652
    invoke-virtual {p1, v0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->setContactID(J)V

    .line 654
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 658
    new-instance v0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;-><init>(Landroid/content/Context;)V

    .line 659
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getHiddenCount()J

    move-result-wide v2

    .line 660
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->getHiddenCount()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->setHiddenCount(J)V

    .line 662
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "de.gdata.mobilesecurity.privacy.provider.HIDDEN_COUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 664
    :cond_0
    return-void
.end method

.method public static checkUnreadState(Landroid/content/Context;)V
    .locals 6

    .prologue
    const v5, 0x7f020139

    const/4 v3, 0x1

    .line 175
    invoke-static {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(Landroid/content/Context;)I

    move-result v0

    .line 176
    if-lez v0, :cond_0

    .line 177
    new-instance v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 178
    if-le v0, v3, :cond_1

    const v2, 0x7f0d03c3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_0
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0, v5, v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(ILjava/lang/String;II)Z

    .line 185
    :cond_0
    return-void

    .line 178
    :cond_1
    const v0, 0x7f0d03c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCallsUri(I)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->f:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContactCallsUri(II)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->f:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContactSMSUri(II)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContactsUri(I)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getHiddenContactUri(IJ)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 127
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getHiddenNumberUri(IJ)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 132
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getNumbersUri(I)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateContactsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContactsUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateNumbersUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getNumbersUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getSMSUri(I)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 380
    array-length v5, p2

    move v4, v2

    move v3, v1

    .line 382
    :goto_0
    if-gt v4, v5, :cond_2

    .line 383
    rem-int/lit8 v0, v4, 0x14

    if-eqz v0, :cond_0

    if-ne v4, v5, :cond_1

    :cond_0
    move v0, v2

    .line 384
    :goto_1
    add-int/lit8 v6, v4, -0x1

    aget-object v6, p2, v6

    invoke-direct {p0, p1, v6, v0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 385
    add-int/lit8 v0, v3, 0x1

    .line 382
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 383
    goto :goto_1

    .line 388
    :cond_2
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 389
    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    .line 390
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b()V

    .line 392
    :cond_3
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->c()V

    .line 393
    return v3

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 417
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 418
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    move v0, v1

    .line 455
    :goto_0
    return v0

    .line 422
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 427
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v8

    .line 451
    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    move v0, v1

    .line 424
    goto :goto_0

    .line 429
    :pswitch_0
    const-string v0, "delete contact"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0, v9}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b(I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hidden_contact"

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 433
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    new-instance v1, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;-><init>(Landroid/database/Cursor;)V

    .line 435
    invoke-direct {p0, v1, v9}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(Lde/gdata/mobilesecurity/privacy/HiddenContact;I)V

    goto :goto_1

    .line 437
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 453
    :goto_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 454
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->c()V

    move v0, v8

    .line 455
    goto :goto_0

    .line 441
    :pswitch_1
    const-string v0, "delete number"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 442
    invoke-direct {p0, v9}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b(I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hidden_numbers"

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 443
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    new-instance v1, Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;-><init>(Landroid/database/Cursor;)V

    .line 445
    invoke-direct {p0, v1, v9}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(Lde/gdata/mobilesecurity/privacy/HiddenNumber;I)V

    goto :goto_3

    .line 447
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 279
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 269
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/gdata_hidden_contacts"

    goto :goto_0

    .line 271
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/gdata_hidden_numbers"

    goto :goto_0

    .line 273
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/gdata_hidden_contact"

    goto :goto_0

    .line 275
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/gdata_hidden_number"

    goto :goto_0

    .line 277
    :pswitch_4
    const-string v0, "vnd.android.cursor.item/contact_data"

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v0

    .line 399
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b()V

    .line 400
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->c()V

    .line 401
    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 223
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 224
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 225
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    move-object v0, v2

    .line 262
    :goto_0
    return-object v0

    .line 226
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 228
    sget-object v3, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 252
    :pswitch_0
    const-string v0, "Unknown uri in ContentProvider: %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    move-object v0, v2

    .line 253
    goto :goto_0

    .line 230
    :pswitch_1
    const-string v2, "hidden_contact"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v4, p4

    move-object v3, p3

    .line 257
    :goto_1
    monitor-enter p0

    .line 258
    :try_start_0
    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b(I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 259
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 233
    :pswitch_2
    const-string v2, "hidden_numbers"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v4, p4

    move-object v3, p3

    .line 234
    goto :goto_1

    .line 236
    :pswitch_3
    const-string v2, "hidden_contact"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 237
    const-string p3, "id = ?"

    .line 238
    new-array p4, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v6

    move-object v4, p4

    move-object v3, p3

    .line 239
    goto :goto_1

    .line 241
    :pswitch_4
    const-string v2, "hidden_numbers"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 242
    const-string p3, "id = ?"

    .line 243
    new-array p4, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v6

    move-object v4, p4

    move-object v3, p3

    .line 244
    goto :goto_1

    .line 246
    :pswitch_5
    const-string v2, "calllog"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v4, p4

    move-object v3, p3

    .line 247
    goto :goto_1

    .line 249
    :pswitch_6
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v4, p4

    move-object v3, p3

    .line 250
    goto :goto_1

    .line 259
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11

    .prologue
    const/4 v1, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 558
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 559
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    move v0, v1

    .line 612
    :goto_0
    return v0

    .line 563
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 567
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 568
    sget-object v0, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->h:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v8

    .line 605
    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    move v0, v1

    .line 565
    goto :goto_0

    .line 571
    :pswitch_0
    const-string v0, "suppress_communcation"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 572
    invoke-direct {p0, v10}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(I)Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v4, v5, v2}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->updateHiddenNumber(JZ)V

    .line 574
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 575
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 576
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 607
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 608
    invoke-static {v7}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumbers(Ljava/util/List;)V

    .line 609
    invoke-direct {p0, v7, v10}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(Ljava/util/List;I)V

    .line 611
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v0, v9

    .line 612
    goto :goto_0

    .line 581
    :cond_3
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b()V

    goto :goto_1

    :pswitch_1
    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 586
    invoke-virtual/range {v1 .. v6}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 588
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 589
    goto/16 :goto_0

    .line 591
    :cond_4
    new-instance v1, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;-><init>(Landroid/database/Cursor;)V

    .line 592
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 593
    invoke-direct {p0, p2, v1, v10}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->a(Landroid/content/ContentValues;Lde/gdata/mobilesecurity/privacy/HiddenContact;I)V

    .line 594
    const-string v0, "suppress_communcation"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 596
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->b()V

    goto :goto_1

    .line 598
    :cond_5
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContact(Landroid/content/Context;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    :goto_2
    move-object v7, v0

    .line 601
    goto :goto_1

    :cond_6
    move-object v0, v7

    goto :goto_2

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
