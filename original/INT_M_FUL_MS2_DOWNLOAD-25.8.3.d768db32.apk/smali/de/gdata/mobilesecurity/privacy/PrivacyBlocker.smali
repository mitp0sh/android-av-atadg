.class public Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;


# instance fields
.field private a:Lde/gdata/mobilesecurity/privacy/z;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Ljava/util/Map;
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

.field private d:Lde/gdata/mobilesecurity/privacy/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->e:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->fetchSuppressedNumbers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->c:Ljava/util/Map;

    .line 121
    new-instance v1, Lde/gdata/mobilesecurity/privacy/z;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/privacy/z;-><init>(Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->a:Lde/gdata/mobilesecurity/privacy/z;

    .line 122
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->a:Lde/gdata/mobilesecurity/privacy/z;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/z;->start()V

    .line 123
    new-instance v1, Lde/gdata/mobilesecurity/privacy/aa;

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->a:Lde/gdata/mobilesecurity/privacy/z;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/z;->a()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lde/gdata/mobilesecurity/privacy/aa;-><init>(Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;Landroid/os/Handler;)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->d:Lde/gdata/mobilesecurity/privacy/aa;

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getPrivateContactsUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->d:Lde/gdata/mobilesecurity/privacy/aa;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getPrivateNumbersUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->d:Lde/gdata/mobilesecurity/privacy/aa;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    new-instance v1, Lde/gdata/mobilesecurity/privacy/y;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/privacy/y;-><init>(Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->b:Landroid/content/BroadcastReceiver;

    .line 140
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "MMS_CONTACTS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v0, "PrivacyBlocker can not register receiver"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {p1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-direct {p0, p2}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-static {v2}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    new-instance v1, Landroid/util/Pair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 188
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 91
    invoke-static {p1}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->fetchSuppressedNumbers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->c:Ljava/util/Map;

    .line 93
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->c:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->c:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 214
    invoke-virtual {v0, p3}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 215
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setProfile(Ljava/lang/String;)V

    .line 217
    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J

    .line 218
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->a()V

    return-void
.end method

.method public static fetchSuppressedNumbers(Landroid/content/Context;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 97
    new-instance v1, Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getSuppressedNumbers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/databases/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    new-instance v1, Lde/gdata/mobilesecurity/privacy/x;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/privacy/x;-><init>()V

    invoke-virtual {v3, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 108
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 109
    new-instance v5, Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    invoke-direct {v5, p0, v4}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    const/16 v6, 0x8

    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getSuppressedNumbers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v5}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;
    .locals 2

    .prologue
    .line 78
    const-class v1, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->e:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->e:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    .line 81
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->e:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public callSuppressed(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Lde/gdata/mobilesecurity/privacy/Call;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/privacy/Call;-><init>()V

    .line 194
    invoke-virtual {v0, p3}, Lde/gdata/mobilesecurity/privacy/Call;->a(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/privacy/Call;->setDate(J)V

    .line 196
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/Call;->setType(I)V

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getCallsUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/Call;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 199
    if-eqz p2, :cond_0

    const/16 v1, 0x18

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public shallCallBeBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p2, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    .line 165
    if-nez v2, :cond_0

    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 166
    :cond_0
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 168
    if-eqz v0, :cond_1

    .line 169
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->callSuppressed(Landroid/content/Context;ILjava/lang/String;)V

    .line 170
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 172
    goto :goto_0
.end method

.method public shallSMSBeBlocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p2, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    .line 152
    if-nez v2, :cond_0

    move v0, v1

    .line 159
    :goto_0
    return v0

    .line 153
    :cond_0
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 155
    if-eqz v0, :cond_1

    .line 156
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0, p3}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->smsSuppressed(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 159
    goto :goto_0
.end method

.method public smsSuppressed(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 203
    new-instance v0, Lde/gdata/mobilesecurity/sms/SMS;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v12}, Lde/gdata/mobilesecurity/sms/SMS;-><init>(Ljava/lang/String;JJZIIZLjava/lang/String;Ljava/lang/String;Z)V

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getSMSUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sms/SMS;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 207
    if-eqz p2, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sms/SMS;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method
