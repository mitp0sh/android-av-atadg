.class public Lcom/bd/android/shared/StatsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/bd/android/shared/DBHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static areNotificationsEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 689
    const-string v0, "STATS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NOTIFICATIONS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static closeDB()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0}, Lcom/bd/android/shared/DBHandler;->close()V

    .line 63
    :cond_0
    return-void
.end method

.method public static countUnsecureNetworks()I
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 461
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0}, Lcom/bd/android/shared/DBHandler;->countUnsecureNetworks()I

    move-result v0

    goto :goto_0
.end method

.method public static deleteEvents()V
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    const-string v1, "EVENTS"

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/DBHandler;->clearTable(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public static deleteStats()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    const-string v1, "STATS"

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/DBHandler;->clearTable(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public static enableNotifications(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 682
    const-string v0, "STATS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 683
    const-string v1, "NOTIFICATIONS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 684
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 685
    return-void
.end method

.method public static getAccessedURLs()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_0

    .line 585
    const/4 v0, 0x0

    .line 626
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/DBHandler;->getStatsList(I)Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAppsLocked()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_0

    .line 633
    const/4 v0, 0x0

    .line 665
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/DBHandler;->getStatsList(I)Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEvents()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/bd/android/shared/DBHandler$EventDBEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_0

    .line 394
    const/4 v0, 0x0

    .line 427
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0}, Lcom/bd/android/shared/DBHandler;->getEvents()Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstalledAppsAVResults()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_0

    .line 529
    const/4 v0, 0x0

    .line 578
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0}, Lcom/bd/android/shared/DBHandler;->getInstalledApps()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastWeekReports()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/DBHandler;->getStatsList(I)Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPrivacyScore(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 677
    const-string v0, "STATS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SCORE"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRemovedApps(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_0

    .line 467
    const/4 v0, 0x0

    .line 522
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0, p0}, Lcom/bd/android/shared/DBHandler;->getRemovedApps(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/bd/android/shared/StatsUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/bd/android/shared/DBHandler;->create(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/bd/android/shared/DBHandler;->getInstance()Lcom/bd/android/shared/DBHandler;

    move-result-object v0

    sput-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v1

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onAppLock(I)V
    .locals 4

    .prologue
    .line 289
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 293
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 297
    :try_start_0
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    new-instance v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;

    invoke-direct {v1}, Lcom/bd/android/shared/DBHandler$StatsDBEntry;-><init>()V

    .line 304
    const/4 v2, 0x6

    iput v2, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->type:I

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->timeStamp:J

    .line 306
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->sData:Ljava/lang/String;

    .line 309
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/DBHandler;->saveEntry(Lcom/bd/android/shared/DBHandler$StatsDBEntry;)V

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static onAppUninstalled(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    .prologue
    .line 152
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 160
    :try_start_0
    const-string v1, "PACKAGE"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "NAME"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    const-string v1, "PRIVACY"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_1
    new-instance v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;

    invoke-direct {v1}, Lcom/bd/android/shared/DBHandler$StatsDBEntry;-><init>()V

    .line 170
    const/4 v2, 0x5

    iput v2, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->type:I

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->timeStamp:J

    .line 172
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->sData:Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/DBHandler;->saveEntry(Lcom/bd/android/shared/DBHandler$StatsDBEntry;)V

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static onCluefulResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 123
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 131
    :try_start_0
    const-string v1, "PACKAGE"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v1, "NAME"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v1, "THREAT"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_1
    new-instance v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;

    invoke-direct {v1}, Lcom/bd/android/shared/DBHandler$StatsDBEntry;-><init>()V

    .line 141
    const/4 v2, 0x2

    iput v2, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->type:I

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->timeStamp:J

    .line 143
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->sData:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/DBHandler;->saveEntry(Lcom/bd/android/shared/DBHandler$StatsDBEntry;)V

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static onInstallAVResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 94
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 102
    :try_start_0
    const-string v1, "PACKAGE"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v1, "NAME"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "THREAT"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    new-instance v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;

    invoke-direct {v1}, Lcom/bd/android/shared/DBHandler$StatsDBEntry;-><init>()V

    .line 112
    const/4 v2, 0x1

    iput v2, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->type:I

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->timeStamp:J

    .line 114
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->sData:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/DBHandler;->saveEntry(Lcom/bd/android/shared/DBHandler$StatsDBEntry;)V

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static onURLAccess(Ljava/net/URL;I)V
    .locals 4

    .prologue
    .line 181
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0, p0}, Lcom/bd/android/shared/DBHandler;->findURL(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 218
    :try_start_0
    const-string v1, "URL"

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_1
    new-instance v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;

    invoke-direct {v1}, Lcom/bd/android/shared/DBHandler$StatsDBEntry;-><init>()V

    .line 227
    const/4 v2, 0x3

    iput v2, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->type:I

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->timeStamp:J

    .line 229
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->sData:Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/DBHandler;->saveEntry(Lcom/bd/android/shared/DBHandler$StatsDBEntry;)V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static onUnsecureWiFiConnected(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 239
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0, p0}, Lcom/bd/android/shared/DBHandler;->findNetwork(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/bd/android/shared/DBHandler$StatsDBEntry;

    invoke-direct {v0}, Lcom/bd/android/shared/DBHandler$StatsDBEntry;-><init>()V

    .line 277
    const/4 v1, 0x4

    iput v1, v0, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->type:I

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->timeStamp:J

    .line 279
    iput-object p0, v0, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->sData:Ljava/lang/String;

    .line 281
    sget-object v1, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v1, v0}, Lcom/bd/android/shared/DBHandler;->saveEntry(Lcom/bd/android/shared/DBHandler$StatsDBEntry;)V

    goto :goto_0
.end method

.method public static saveEvent(Lcom/bd/android/shared/DBHandler$EventDBEntry;)V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0, p0}, Lcom/bd/android/shared/DBHandler;->saveEvent(Lcom/bd/android/shared/DBHandler$EventDBEntry;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static saveLastWeekReport(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 315
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 340
    :cond_0
    sget-object v0, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v0}, Lcom/bd/android/shared/DBHandler;->deleteLastWeekReport()V

    .line 341
    new-instance v0, Lcom/bd/android/shared/DBHandler$StatsDBEntry;

    invoke-direct {v0}, Lcom/bd/android/shared/DBHandler$StatsDBEntry;-><init>()V

    .line 342
    const/4 v1, 0x7

    iput v1, v0, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->type:I

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->timeStamp:J

    .line 344
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->sData:Ljava/lang/String;

    .line 346
    sget-object v1, Lcom/bd/android/shared/StatsUtils;->a:Lcom/bd/android/shared/DBHandler;

    invoke-virtual {v1, v0}, Lcom/bd/android/shared/DBHandler;->saveEntry(Lcom/bd/android/shared/DBHandler$StatsDBEntry;)V

    goto :goto_0
.end method

.method public static savePrivacyScore(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 670
    const-string v0, "STATS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 671
    const-string v1, "SCORE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 672
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 673
    return-void
.end method
