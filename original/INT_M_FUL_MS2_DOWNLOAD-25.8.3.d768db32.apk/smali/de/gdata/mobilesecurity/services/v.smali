.class Lde/gdata/mobilesecurity/services/v;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/net/Uri;

.field c:[Ljava/lang/String;

.field final synthetic d:Lde/gdata/mobilesecurity/services/WatcherService;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2049
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/v;->d:Lde/gdata/mobilesecurity/services/WatcherService;

    .line 2050
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2039
    iput-object v0, p0, Lde/gdata/mobilesecurity/services/v;->a:Ljava/lang/String;

    .line 2040
    iput-object v0, p0, Lde/gdata/mobilesecurity/services/v;->b:Landroid/net/Uri;

    .line 2041
    iput-object v0, p0, Lde/gdata/mobilesecurity/services/v;->c:[Ljava/lang/String;

    .line 2052
    iput-object p2, p0, Lde/gdata/mobilesecurity/services/v;->a:Ljava/lang/String;

    .line 2053
    iput-object p3, p0, Lde/gdata/mobilesecurity/services/v;->b:Landroid/net/Uri;

    .line 2054
    iput-object p4, p0, Lde/gdata/mobilesecurity/services/v;->c:[Ljava/lang/String;

    .line 2055
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    .prologue
    .line 2059
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2062
    const-wide/16 v0, 0xfa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2066
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/v;->d:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/v;->b:Landroid/net/Uri;

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/v;->c:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bookmark=0 and date<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2069
    if-eqz v0, :cond_3

    .line 2070
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2071
    const-string v1, "url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2073
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->recentlyChecked:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2074
    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2076
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->d()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->e()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 2078
    :cond_1
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->e()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/v;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " observer: adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2081
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/v;->d:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/util/Vector;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lde/gdata/mobilesecurity/services/v;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2082
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/v;->d:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/services/WatcherService;->b(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/u;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/services/u;->interrupt()V

    .line 2088
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2090
    :cond_3
    return-void

    .line 2063
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
