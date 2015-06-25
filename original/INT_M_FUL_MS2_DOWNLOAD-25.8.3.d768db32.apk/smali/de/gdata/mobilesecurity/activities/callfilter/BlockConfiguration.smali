.class public Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DIRECTION_IN:I = 0x0

.field public static DIRECTION_OUT:I = 0x0

.field public static final FILTER_BY_BLACKLIST:Ljava/lang/String; = "black"

.field public static final FILTER_BY_PHONEBOOK:Ljava/lang/String; = "phone"

.field public static final FILTER_BY_WHITELIST:Ljava/lang/String; = "white"

.field public static final TYPE_CALL:I = 0x1

.field public static final TYPE_EMAIL:I = 0x4

.field public static final TYPE_SMS:I = 0x2

.field private static volatile a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->a:Ljava/util/HashMap;

    .line 49
    const/4 v0, 0x2

    sput v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->DIRECTION_OUT:I

    .line 50
    const/4 v0, 0x1

    sput v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->DIRECTION_IN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v7

    const-string v4, "data1"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 113
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-string v0, ""

    .line 115
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-le v3, v4, :cond_1

    .line 117
    :cond_0
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_1
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    new-instance v4, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration$MetaData;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->ALLOW_REQUEST:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration$MetaData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 127
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_3
    return-void
.end method

.method private static a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    .line 328
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIncludesTB()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, p2}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->getNameByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->UNKNOWN_NAME:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    .line 329
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIncludesTB()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 329
    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIncludesTB()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 331
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 333
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 298
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 301
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    :cond_0
    invoke-static {v0, p3}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->isPatternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 318
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 319
    if-eqz v0, :cond_5

    .line 323
    :goto_1
    return v2

    :cond_1
    move v0, v1

    .line 306
    goto :goto_0

    .line 309
    :cond_2
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    .line 310
    invoke-virtual {v3, p3, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v0

    .line 311
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v0, v3, :cond_4

    :cond_3
    move v0, v2

    .line 313
    goto :goto_0

    :cond_4
    move v0, v1

    .line 315
    goto :goto_0

    :cond_5
    move v2, v1

    .line 319
    goto :goto_1

    .line 321
    :cond_6
    if-eqz v0, :cond_7

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method private static a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 277
    invoke-static {p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->isAnonymNumber(Ljava/lang/String;)Z

    move-result v2

    .line 279
    if-eqz v2, :cond_3

    .line 280
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isAllowAnonymousCalls()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 284
    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isAllowAnonymousCalls()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 288
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static getNameByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking phonebook for number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 345
    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->HIDDEN_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->UNKNOWN_NAME:Ljava/lang/String;

    .line 362
    :goto_0
    return-object v0

    .line 347
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    const-string v0, "display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 354
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 360
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 362
    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->UNKNOWN_NAME:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isAnonymNumber(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 267
    .line 269
    sget-object v1, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->HIDDEN_NUMBER:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    sget-object v1, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->a:Ljava/util/HashMap;

    sget-object v2, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->HIDDEN_NUMBER:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const/4 v0, 0x1

    .line 273
    :cond_0
    return v0
.end method

.method public static isPatternMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    const-string v2, "[^0-9\\+\\*\\.]"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\*"

    const-string v4, ".*"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\+"

    const-string v4, "\\+"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    .line 147
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 150
    :try_start_0
    invoke-virtual {v3, p1, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    sget-object v6, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v3, v5, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    .line 153
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lde/gdata/mobilesecurity/util/MyUtil;->normalizePhoneNumber(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 155
    invoke-virtual {v3, p1, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v3, v4, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    .line 157
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->normalizePhoneNumber(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 163
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized loadLists(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 94
    const-class v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v0

    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized shallBlock(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 11

    .prologue
    .line 174
    const-class v6, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;

    monitor-enter v6

    :try_start_0
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 176
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 177
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 179
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-le v2, v3, :cond_2

    .line 181
    :cond_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getInstance()Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    move-result-object v2

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    const/4 v1, 0x0

    .line 262
    :cond_1
    :goto_0
    monitor-exit v6

    return v1

    .line 189
    :cond_2
    :try_start_1
    sget v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->DIRECTION_OUT:I

    if-ne p3, v0, :cond_3

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardAllowEmergencyCalls()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    const/4 v1, 0x1

    goto :goto_0

    .line 191
    :cond_3
    sget v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->DIRECTION_IN:I

    if-ne p3, v0, :cond_4

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardBlockIncomingCalls()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    const/4 v1, 0x1

    goto :goto_0

    .line 194
    :cond_4
    const/4 v2, 0x0

    .line 195
    const/4 v1, 0x0

    .line 196
    const/4 v0, 0x0

    .line 198
    sget v3, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->DIRECTION_IN:I

    if-ne p3, v3, :cond_15

    .line 199
    const/4 v2, 0x1

    move v5, v2

    .line 201
    :goto_1
    sget v2, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->DIRECTION_OUT:I

    if-ne p3, v2, :cond_14

    .line 202
    const/4 v1, 0x1

    move v4, v1

    .line 203
    :goto_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_13

    .line 204
    const/4 v0, 0x1

    move v3, v0

    .line 206
    :goto_3
    invoke-static {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->loadFilterGroups(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 207
    const/4 v1, 0x0

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 211
    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v2

    invoke-virtual {v2, p0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->isInRange(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 212
    :cond_5
    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsIncoming()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsSms()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsIncoming()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    if-eqz v4, :cond_11

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsOutgoing()Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez v3, :cond_11

    .line 214
    :cond_8
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsActivated()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 215
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyUtil;->getCurrentDay()I

    move-result v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isActiveToday(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 216
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isActiveByTimeRightNow()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 217
    const/4 v1, 0x0

    .line 223
    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getRefreshedContacts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    .line 226
    invoke-static {v0, v1, p0, p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 228
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v9

    if-eqz v9, :cond_b

    if-eqz v1, :cond_b

    .line 235
    :cond_a
    :goto_5
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v2

    if-nez v2, :cond_12

    .line 236
    const/4 v1, 0x1

    move v2, v1

    .line 238
    :goto_6
    invoke-static {v0, p0, p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 240
    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Ljava/lang/String;)Z

    move-result v1

    .line 242
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIncludesTB()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v8, :cond_c

    if-eqz v2, :cond_c

    invoke-static {p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->isAnonymNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 244
    const/4 v0, 0x0

    .line 250
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BLOCKING: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    :goto_8
    move v1, v0

    .line 261
    goto/16 :goto_4

    .line 231
    :cond_b
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v9

    if-nez v9, :cond_9

    if-nez v1, :cond_9

    goto :goto_5

    .line 245
    :cond_c
    invoke-static {p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->isAnonymNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    .line 246
    goto :goto_7

    .line 248
    :cond_d
    if-nez v2, :cond_e

    if-eqz v8, :cond_f

    :cond_e
    const/4 v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    goto :goto_7

    .line 258
    :cond_10
    const-string v0, "filter not in range"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_11
    move v0, v1

    goto :goto_8

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_12
    move v2, v1

    goto :goto_6

    :cond_13
    move v3, v0

    goto/16 :goto_3

    :cond_14
    move v4, v1

    goto/16 :goto_2

    :cond_15
    move v5, v2

    goto/16 :goto_1
.end method
