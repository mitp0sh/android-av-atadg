.class public Lde/gdata/mobilesecurity/mms/RemoteManagementServer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Ljava/lang/String;

.field private static k:Z


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:I

.field e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field f:Landroid/content/Context;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "Mobile"

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a:Ljava/lang/String;

    .line 71
    const-string v0, "https"

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->b:Ljava/lang/String;

    .line 72
    const-string v0, "/gdata/mms/client/mobile/"

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->c:Ljava/lang/String;

    .line 73
    const/16 v0, 0x1c0f

    iput v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->d:I

    .line 98
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->j:Z

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->g:Ljava/lang/String;

    .line 107
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 108
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    .line 110
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->j:Z

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;
    .locals 1

    .prologue
    .line 512
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;
    .locals 8

    .prologue
    .line 516
    new-instance v0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;-><init>()V

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes of data to send.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 520
    :try_start_0
    invoke-direct {p0, p3}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 522
    new-instance v2, Lde/gdata/mobilesecurity/network/RestClient;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "f16b13f6e42042df053f695b5760fac17da022e0"

    aput-object v5, v3, v4

    invoke-direct {v2, v1, p2, v3}, Lde/gdata/mobilesecurity/network/RestClient;-><init>(Ljava/net/URL;I[Ljava/lang/String;)V

    .line 523
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lde/gdata/mobilesecurity/network/RestClient;->setEntity(Ljava/lang/String;Z)V

    .line 524
    sget-boolean v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->k:Z

    if-eqz v3, :cond_0

    .line 525
    invoke-direct {p0, p1, p4, v1, v2}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Lde/gdata/mobilesecurity/network/RestClient;)V

    .line 543
    :goto_0
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/RestClient;->execute()Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    .line 563
    :goto_1
    return-object v0

    .line 527
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    const-string v1, "Mobile"

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lde/gdata/mobilesecurity/network/RestClient;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :goto_2
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 534
    const/16 v4, 0xc

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 535
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 536
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e()Ljava/text/SimpleDateFormat;

    move-result-object v5

    .line 537
    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 538
    const-string v1, "Date"

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "+00:00"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lde/gdata/mobilesecurity/network/RestClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v1, "Expires"

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+00:00"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lde/gdata/mobilesecurity/network/RestClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 545
    :catch_0
    move-exception v1

    .line 546
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->handleConnectionException()V

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    UnknownHostException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    goto :goto_1

    .line 530
    :cond_1
    :try_start_1
    const-string v1, "X-App-Token"

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->g:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lde/gdata/mobilesecurity/network/RestClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_2

    .line 548
    :catch_1
    move-exception v1

    .line 549
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->handleConnectionException()V

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    ConnectTimeoutException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    goto/16 :goto_1

    .line 551
    :catch_2
    move-exception v1

    .line 552
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->handleConnectionException()V

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    IllegalArgumentException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    goto/16 :goto_1

    .line 554
    :catch_3
    move-exception v1

    .line 555
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->handleConnectionException()V

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 557
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->setStatus(I)V

    goto/16 :goto_1

    .line 558
    :catch_4
    move-exception v1

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 560
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 315
    const-string v0, ""

    .line 318
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSSecretAccessKey()Ljava/lang/String;

    move-result-object v0

    .line 320
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 321
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA1"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 322
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 323
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 333
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 334
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-object v0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    const-string v0, "Failed to compute sha of SecretAccessKey"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 337
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    .prologue
    .line 116
    new-instance v0, Ljava/net/URL;

    const-string v1, "https"

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSServer()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c0f

    const-string v4, "/gdata/mms/client/mobile/"

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Lde/gdata/mobilesecurity/network/RestClient;)V
    .locals 6

    .prologue
    .line 567
    if-nez p2, :cond_0

    .line 568
    const-string v0, "Mobile"

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lde/gdata/mobilesecurity/network/RestClient;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_0
    return-void

    .line 571
    :cond_0
    const-string v0, "If-None-Match"

    invoke-virtual {p4, v0, p2}, Lde/gdata/mobilesecurity/network/RestClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e()Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 573
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 574
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 575
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+00:00"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 576
    const/16 v3, 0xc

    const/16 v4, 0xf

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 577
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+00:00"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GDS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 580
    iget-object v4, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSAccessKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lde/gdata/mobilesecurity/util/MyUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v1, v5}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 584
    const-string v4, "Authorization"

    invoke-virtual {p4, v4, v3}, Lde/gdata/mobilesecurity/network/RestClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v3, "X-GD-Date"

    invoke-virtual {p4, v3, v2}, Lde/gdata/mobilesecurity/network/RestClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v2, "Expires"

    invoke-virtual {p4, v2, v0}, Lde/gdata/mobilesecurity/network/RestClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v0, "X-GD-Nonce"

    invoke-virtual {p4, v0, v1}, Lde/gdata/mobilesecurity/network/RestClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->k:Z

    return v0
.end method

.method private a(Lde/gdata/mobilesecurity/network/HttpStatusResponse;)Z
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Putting common settings ....\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    const-string v3, "putCommonSettings"

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 197
    new-instance v3, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    iget-object v4, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-direct {v3, v4}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2, v0}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->storePreferencesInProfile(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 198
    const-string v2, "putCommonSettings"

    invoke-static {v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 201
    :cond_0
    new-instance v2, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutRequest;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    iget-object v4, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v2, v3, v4}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutRequest;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 203
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->b()Lcom/google/gson/Gson;

    move-result-object v3

    .line 204
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    .line 206
    if-nez v2, :cond_2

    move v0, v1

    .line 223
    :cond_1
    :goto_0
    return v0

    .line 208
    :cond_2
    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    iget-object v5, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSCommonSettingsHash()Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 212
    const/4 v0, 0x2

    const-string v5, "commonsettings"

    const-string v6, ""

    invoke-direct {p0, v2, v0, v5, v6}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v2

    .line 214
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutResponse;

    invoke-virtual {v3, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutResponse;

    .line 216
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutResponse;->getResult()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    .line 218
    :cond_4
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutResponse;->setETag(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutResponse;->persist(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 221
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSCommonSettingsHash(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutResponse;->getResult()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private b()Lcom/google/gson/Gson;
    .locals 3

    .prologue
    .line 227
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lde/gdata/mobilesecurity/mms/a;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/mms/a;-><init>(Lde/gdata/mobilesecurity/mms/RemoteManagementServer;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    new-instance v2, Lde/gdata/mobilesecurity/mms/json/base/MSNetDateTimeAdapter;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/mms/json/base/MSNetDateTimeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 244
    new-instance v2, Lde/gdata/mobilesecurity/mms/json/AuthPostRequest;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/mms/json/AuthPostRequest;-><init>(Landroid/content/Context;)V

    .line 245
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->b()Lcom/google/gson/Gson;

    move-result-object v3

    .line 246
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    .line 247
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    const-string v4, "auth"

    const/4 v5, 0x0

    invoke-direct {p0, v2, v1, v4, v5}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v2

    .line 250
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_3

    .line 251
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_2

    .line 252
    new-instance v1, Lde/gdata/mobilesecurity/scan/LogEntry;

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/content/Context;)V

    .line 254
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 255
    const-string v2, ""

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    .line 258
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-static {v2, v1}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J

    move-result-wide v2

    .line 260
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string v1, "Failed to add entry 15"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_2
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->d()Z

    move-result v0

    goto :goto_0

    .line 267
    :cond_3
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lde/gdata/mobilesecurity/mms/json/AuthPostResponse;

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/AuthPostResponse;

    .line 268
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/AuthPostResponse;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->g:Ljava/lang/String;

    move v0, v1

    .line 269
    goto :goto_0
.end method

.method private d()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 273
    sput-boolean v1, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->k:Z

    .line 274
    new-instance v2, Lde/gdata/mobilesecurity/mms/json/RegisterPostRequest;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    iget-object v4, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v2, v3, v4}, Lde/gdata/mobilesecurity/mms/json/RegisterPostRequest;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 275
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->b()Lcom/google/gson/Gson;

    move-result-object v3

    .line 276
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    .line 278
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    const-string v4, "register"

    const/4 v5, 0x0

    invoke-direct {p0, v2, v1, v4, v5}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_3

    .line 283
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v1

    const/16 v3, 0x193

    if-ne v1, v3, :cond_2

    .line 284
    new-instance v1, Lde/gdata/mobilesecurity/scan/LogEntry;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-direct {v1, v3}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/content/Context;)V

    .line 286
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 287
    const-string v3, ""

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    .line 290
    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-static {v3, v1}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J

    move-result-wide v4

    .line 292
    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    const-string v1, "Failed to add entry 15"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 295
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Registration failed :( +["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 296
    sput-boolean v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->k:Z

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lde/gdata/mobilesecurity/mms/json/RegisterPostResponse;

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/RegisterPostResponse;

    .line 301
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/RegisterPostResponse;->getAccessKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSAccessKey(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/RegisterPostResponse;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    .line 305
    const v3, -0x5f8c4059

    invoke-virtual {v2, v0, v3}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Registration successful :)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 308
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSSecretAccessKey(Ljava/lang/String;)V

    move v0, v1

    .line 310
    goto/16 :goto_0
.end method

.method private e()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 592
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public getLogMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    return-object v0
.end method

.method public handleConnectionException()V
    .locals 4

    .prologue
    .line 596
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->didMMSLastConnectSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSNotFoundWarningShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 597
    new-instance v0, Lde/gdata/mobilesecurity/scan/LogEntry;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/content/Context;)V

    .line 599
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 600
    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    .line 603
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J

    move-result-wide v0

    .line 605
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 606
    const-string v0, "Failed to add entry 47"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 609
    :cond_0
    const-string v0, "handleConnectionException"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSNotFoundWarningShown(Z)V

    .line 612
    :cond_1
    return-void
.end method

.method public isDataModified()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->j:Z

    return v0
.end method

.method public provideAppList()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppListDirty()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "App list didn\'t change. Stop.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    move v0, v1

    .line 412
    :goto_0
    return v0

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Providing app list ....\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 388
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/AppPutRequest;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-direct {v0, v3}, Lde/gdata/mobilesecurity/mms/json/AppPutRequest;-><init>(Landroid/content/Context;)V

    .line 390
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->b()Lcom/google/gson/Gson;

    move-result-object v3

    .line 391
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 393
    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 396
    :cond_1
    const/4 v4, 0x2

    const-string v5, "app"

    const-string v6, ""

    invoke-direct {p0, v0, v4, v5, v6}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v4

    .line 398
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lde/gdata/mobilesecurity/mms/json/AppPutResponse;

    invoke-virtual {v3, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/AppPutResponse;

    .line 400
    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/mms/json/AppPutResponse;->setETag(Ljava/lang/String;)V

    .line 402
    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/mms/json/AppPutResponse;->process(Landroid/content/Context;)V

    .line 404
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppListDirty(Ljava/lang/Boolean;)V

    move v0, v1

    .line 412
    goto :goto_0

    .line 407
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Response is null. Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    move v0, v2

    .line 409
    goto/16 :goto_0
.end method

.method public requestUnblockApps()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 420
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-direct {v0, v3}, Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;-><init>(Landroid/content/Context;)V

    .line 423
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 442
    :goto_0
    return v0

    .line 424
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Requesting app access ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ...\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 426
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->b()Lcom/google/gson/Gson;

    move-result-object v3

    .line 427
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 429
    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 432
    :cond_1
    const/4 v4, 0x2

    const-string v5, "requestunblockapp"

    const-string v6, ""

    invoke-direct {p0, v0, v4, v5, v6}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v4

    .line 434
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lde/gdata/mobilesecurity/mms/json/UnblockAppResponse;

    invoke-virtual {v3, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/UnblockAppResponse;

    .line 436
    if-eqz v0, :cond_2

    .line 437
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/UnblockAppResponse;->setETag(Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/UnblockAppResponse;->process(Landroid/content/Context;)V

    move v0, v1

    .line 442
    goto :goto_0

    :cond_2
    move v0, v2

    .line 440
    goto :goto_0
.end method

.method public requestUnblockCalls()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 450
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/UnblockCallRequest;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-direct {v0, v3}, Lde/gdata/mobilesecurity/mms/json/UnblockCallRequest;-><init>(Landroid/content/Context;)V

    .line 453
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/UnblockCallRequest;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 472
    :goto_0
    return v0

    .line 454
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Requesting call access ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/UnblockCallRequest;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ...\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 456
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->b()Lcom/google/gson/Gson;

    move-result-object v3

    .line 457
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 459
    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 462
    :cond_1
    const/4 v4, 0x2

    const-string v5, "requestunblockcall"

    const-string v6, ""

    invoke-direct {p0, v0, v4, v5, v6}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v4

    .line 464
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lde/gdata/mobilesecurity/mms/json/UnblockCallResponse;

    invoke-virtual {v3, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/UnblockCallResponse;

    .line 466
    if-eqz v0, :cond_2

    .line 467
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/UnblockCallResponse;->setETag(Ljava/lang/String;)V

    .line 468
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/UnblockCallResponse;->process(Landroid/content/Context;)V

    move v0, v1

    .line 472
    goto :goto_0

    :cond_2
    move v0, v2

    .line 470
    goto :goto_0
.end method

.method public sendCommonReports()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Sending common reports ....\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 638
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, v2, v3}, Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 640
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 654
    :goto_0
    return v0

    .line 642
    :cond_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->b()Lcom/google/gson/Gson;

    move-result-object v2

    .line 643
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 645
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 647
    :cond_2
    const/4 v3, 0x2

    const-string v4, "commonreport"

    invoke-direct {p0, v0, v3, v4}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lde/gdata/mobilesecurity/mms/json/CommonReportPutResponse;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/CommonReportPutResponse;

    .line 652
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/CommonReportPutResponse;->getResult()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    .line 654
    :cond_4
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/CommonReportPutResponse;->getResult()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public sendFileScanReports()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Sending scan reports ....\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 617
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, v2, v3}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 619
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 632
    :goto_0
    return v0

    .line 621
    :cond_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->b()Lcom/google/gson/Gson;

    move-result-object v2

    .line 622
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 624
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 626
    :cond_2
    const/4 v3, 0x2

    const-string v4, "filescanreport"

    invoke-direct {p0, v0, v3, v4}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutResponse;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutResponse;

    .line 630
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutResponse;->getResult()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    .line 632
    :cond_4
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutResponse;->getResult()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public updateCommonSettings()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Updating common settings ....\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 130
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostRequest;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    iget-object v4, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, v1, v4}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostRequest;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 132
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->b()Lcom/google/gson/Gson;

    move-result-object v4

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 135
    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    const-string v0, "commonsettings"

    iget-object v5, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSCommonSettingsETag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v3, v0, v5}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    .line 141
    sget-boolean v5, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->k:Z

    if-nez v5, :cond_2

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Lde/gdata/mobilesecurity/network/HttpStatusResponse;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    sput-boolean v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->k:Z

    .line 144
    const-string v0, "commonsettings"

    iget-object v5, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSCommonSettingsETag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v3, v0, v5}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Lde/gdata/mobilesecurity/network/HttpStatusResponse;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    sput-boolean v2, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->k:Z

    .line 150
    :cond_2
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Lde/gdata/mobilesecurity/network/HttpStatusResponse;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "Authorization failed. Try registering ...\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSCommonSettingsETag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const-string v5, ""

    invoke-virtual {v0, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSCommonSettingsHash(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, v3}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Z)Z

    .line 159
    :cond_3
    const-string v0, "commonsettings"

    iget-object v5, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSCommonSettingsETag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v3, v0, v5}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    .line 161
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Lde/gdata/mobilesecurity/network/HttpStatusResponse;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    move-object v1, v0

    .line 165
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v0

    const/16 v5, 0x130

    if-eq v0, v5, :cond_5

    .line 167
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;

    invoke-virtual {v4, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;

    .line 173
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->setETag(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1, v3}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->persist(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    move v0, v2

    .line 180
    :goto_1
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Z)Z

    move-result v2

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method public updateEula()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Updating Eula ....\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 482
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-direct {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 483
    new-instance v3, Lde/gdata/mobilesecurity/mms/json/EulaPostRequest;

    iget-object v4, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-direct {v3, v4}, Lde/gdata/mobilesecurity/mms/json/EulaPostRequest;-><init>(Landroid/content/Context;)V

    .line 485
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->b()Lcom/google/gson/Gson;

    move-result-object v4

    .line 486
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    .line 488
    if-nez v3, :cond_0

    move v0, v1

    .line 508
    :goto_0
    return v0

    .line 490
    :cond_0
    const-string v5, "eula"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEulaETag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v2, v5, v0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v3

    .line 492
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v0

    const/16 v5, 0x130

    if-eq v0, v5, :cond_1

    .line 493
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lde/gdata/mobilesecurity/mms/json/EulaPostResponse;

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/EulaPostResponse;

    .line 495
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->j:Z

    .line 497
    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/json/EulaPostResponse;->setETag(Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/json/EulaPostResponse;->persist(Landroid/content/Context;)V

    :cond_1
    :goto_1
    move v0, v2

    .line 508
    goto :goto_0

    .line 501
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v0

    const/16 v3, 0xcc

    if-ne v0, v3, :cond_3

    .line 502
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/dao/Eula;->deleteAllEULAs(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 505
    goto :goto_0
.end method

.method public updateMDMSettings(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Updating MDM settings ....\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->i:Ljava/lang/String;

    .line 351
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostRequest;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostRequest;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 353
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->b()Lcom/google/gson/Gson;

    move-result-object v3

    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 356
    if-nez v0, :cond_0

    move v0, v1

    .line 373
    :goto_0
    return v0

    .line 358
    :cond_0
    const-string v4, "mdmsettings"

    iget-object v5, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-static {p1, v5}, Lde/gdata/mobilesecurity/network/ETag;->buildCustomETag(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v2, v4, v5}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v4

    .line 361
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v0

    const/16 v5, 0x130

    if-eq v0, v5, :cond_1

    .line 362
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;

    invoke-virtual {v3, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;

    .line 364
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->j:Z

    .line 366
    if-eqz v0, :cond_2

    .line 367
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->setETag(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->persist(Landroid/content/Context;)V

    :cond_1
    move v0, v2

    .line 373
    goto :goto_0

    :cond_2
    move v0, v1

    .line 370
    goto :goto_0
.end method
