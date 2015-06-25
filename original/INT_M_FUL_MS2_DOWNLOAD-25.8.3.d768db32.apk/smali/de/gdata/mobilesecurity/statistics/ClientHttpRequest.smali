.class public Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Ljava/util/Random;


# instance fields
.field a:Ljava/net/URLConnection;

.field b:Ljava/io/OutputStream;

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->e:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;-><init>(Ljava/net/URLConnection;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;)V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->b:Ljava/io/OutputStream;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->c:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->randomString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->randomString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->randomString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->d:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->a:Ljava/net/URLConnection;

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 72
    const-string v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "--"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 162
    const v0, 0x7a120

    new-array v0, v0, [B

    .line 165
    monitor-enter p0

    .line 166
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    .line 167
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 172
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->newline()V

    .line 142
    const-string v0, "Content-Disposition: form-data; name=\""

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 144
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->write(C)V

    .line 145
    return-void
.end method

.method public static post(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 443
    new-instance v0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, p1, p2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 7

    .prologue
    .line 475
    new-instance v0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 9

    .prologue
    .line 494
    new-instance v0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post(Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;Ljava/util/Map;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, p1, p2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post(Ljava/util/Map;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;[Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post([Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, p1, p2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post([Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected static randomString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    sget-object v0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->e:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected connect()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->a:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->b:Ljava/io/OutputStream;

    .line 28
    :cond_0
    return-void
.end method

.method protected newline()V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->connect()V

    .line 42
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public post()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->a()V

    .line 257
    const-string v0, "--"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->writeln(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 259
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->a:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p0, p3, p4}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    invoke-virtual {p0, p3, p4, p5, p6}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 7

    .prologue
    .line 382
    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 383
    invoke-virtual/range {v0 .. v6}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/util/Map;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameters(Ljava/util/Map;)V

    .line 272
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/util/Map;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setCookies(Ljava/util/Map;)V

    .line 300
    invoke-virtual {p0, p2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameters(Ljava/util/Map;)V

    .line 301
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post([Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameters([Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post([Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setCookies([Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0, p2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameters([Ljava/lang/Object;)V

    .line 317
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public postCookies()V
    .locals 5

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->a:Ljava/net/URLConnection;

    const-string v2, "Cookie"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_1
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public setCookies(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setCookies([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 134
    if-nez p1, :cond_1

    .line 138
    :cond_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 136
    aget-object v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1, v0, v1}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 205
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 215
    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 216
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/io/File;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->a()V

    .line 155
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->a(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->newline()V

    .line 157
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->newline()V

    .line 158
    invoke-virtual {p0, p2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->writeln(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->a()V

    .line 183
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->a(Ljava/lang/String;)V

    .line 184
    const-string v0, "; filename=\""

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 186
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->write(C)V

    .line 187
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->newline()V

    .line 188
    const-string v0, "Content-Type: "

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 189
    invoke-static {p2}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    if-nez v0, :cond_0

    const-string v0, "application/octet-stream"

    .line 191
    :cond_0
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->writeln(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->newline()V

    .line 193
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->b:Ljava/io/OutputStream;

    invoke-static {p3, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 194
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->newline()V

    .line 195
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 229
    if-nez p1, :cond_1

    .line 234
    :cond_0
    return-void

    .line 230
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setParameters([Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 244
    if-nez p1, :cond_1

    .line 248
    :cond_0
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 246
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method protected write(C)V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->connect()V

    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 33
    return-void
.end method

.method protected write(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->connect()V

    .line 37
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->b:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 38
    return-void
.end method

.method protected writeln(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->connect()V

    .line 47
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->newline()V

    .line 49
    return-void
.end method
