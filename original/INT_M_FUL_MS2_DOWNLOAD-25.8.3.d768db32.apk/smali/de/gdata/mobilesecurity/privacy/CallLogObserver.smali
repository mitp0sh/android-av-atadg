.class public Lde/gdata/mobilesecurity/privacy/CallLogObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->b:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->a:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->a:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->fetchSuppressedNumbers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->b:Ljava/util/Map;

    .line 57
    return-void
.end method

.method private b()V
    .locals 14

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 63
    const-string v1, "number"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 64
    const-string v1, "_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 65
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v7

    .line 67
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 68
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 72
    const/4 v1, 0x0

    .line 73
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v3, v1

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 75
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 76
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_2
    if-nez v3, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    :pswitch_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    if-nez v3, :cond_1

    .line 81
    sget-object v13, Lde/gdata/mobilesecurity/privacy/f;->a:[I

    invoke-virtual {v7, v10, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->ordinal()I

    move-result v1

    aget v1, v13, v1

    packed-switch v1, :pswitch_data_0

    .line 86
    new-instance v3, Lde/gdata/mobilesecurity/privacy/Call;

    invoke-direct {v3, v4}, Lde/gdata/mobilesecurity/privacy/Call;-><init>(Landroid/database/Cursor;)V

    .line 87
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/privacy/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/privacy/Call;->a(Ljava/lang/String;)V

    .line 88
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    const/4 v3, 0x1

    .line 93
    goto :goto_0

    .line 96
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 97
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 98
    const/4 v2, 0x0

    .line 99
    const/4 v1, 0x0

    .line 100
    const/16 v4, 0x14

    move v3, v2

    move v2, v1

    .line 102
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int v5, v2, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 103
    invoke-virtual {v9, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyUtil;->buildInPlaceholders(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id IN (%s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v6, v5, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v3, v1

    .line 109
    add-int v1, v2, v4

    .line 110
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_7

    .line 111
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v3, v1, :cond_4

    .line 112
    const-string v1, "Privacy: deleted call count mismatch."

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 115
    :cond_4
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getCallsUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 118
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v6, v2, [Landroid/content/ContentValues;

    .line 119
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    array-length v2, v6

    if-ge v3, v2, :cond_5

    .line 120
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/privacy/Call;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/Call;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v6, v3

    .line 119
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 122
    :cond_5
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_2

    .line 125
    :cond_6
    return-void

    :cond_7
    move v2, v1

    goto/16 :goto_1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 128
    new-instance v3, Lde/gdata/mobilesecurity/sms/SMSStore;

    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->a:Landroid/content/Context;

    invoke-direct {v3, v0}, Lde/gdata/mobilesecurity/sms/SMSStore;-><init>(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 130
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-array v6, v2, [Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 133
    invoke-virtual {v3, v0, v2}, Lde/gdata/mobilesecurity/sms/SMSStore;->getSMS([Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 134
    invoke-virtual {v3, v0, v2}, Lde/gdata/mobilesecurity/sms/SMSStore;->removeSMS([Ljava/lang/String;Z)V

    .line 136
    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getSMSUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 137
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Landroid/content/ContentValues;

    move v1, v2

    .line 138
    :goto_1
    array-length v0, v8

    if-ge v1, v0, :cond_0

    .line 139
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/sms/SMS;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sms/SMS;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v8, v1

    .line 138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 141
    :cond_0
    invoke-virtual {v4, v7, v8}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanAll()V
    .locals 2

    .prologue
    .line 48
    sget-object v1, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->a()V

    .line 50
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->b()V

    .line 51
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->c()V

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->onChange(ZLandroid/net/Uri;)V

    .line 45
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->cleanAll()V

    .line 40
    return-void
.end method
