.class public Lcom/bd/android/shared/HTTPManager2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HTTP_DEFAULT_SOCKET_TIMEOUT:I = 0x80e8

.field public static final HTTP_DEFAULT_TIMEOUT:I = 0x2710

.field private static h:I

.field private static i:Ljava/lang/String;


# instance fields
.field a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/bd/android/shared/f;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/bd/android/shared/HTTPManager2$ResponseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private j:Lorg/apache/http/client/HttpClient;

.field private final k:[Ljava/lang/String;

.field private l:[Ljava/lang/String;

.field private m:[Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/bd/android/shared/HTTPManager2$ResponseHandler;

.field private p:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/bd/android/shared/e;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    sput v0, Lcom/bd/android/shared/HTTPManager2;->h:I

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/bd/android/shared/HTTPManager2;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ILcom/bd/android/shared/HTTPManager2$ResponseHandler;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bd/android/shared/HTTPManager2;->c:Z

    .line 50
    iput-boolean v2, p0, Lcom/bd/android/shared/HTTPManager2;->d:Z

    .line 51
    iput-boolean v2, p0, Lcom/bd/android/shared/HTTPManager2;->e:Z

    .line 52
    iput v2, p0, Lcom/bd/android/shared/HTTPManager2;->f:I

    .line 53
    iput v2, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    .line 57
    iput-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->j:Lorg/apache/http/client/HttpClient;

    .line 59
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->a:Ljava/util/concurrent/BlockingQueue;

    .line 60
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->b:Ljava/util/concurrent/BlockingQueue;

    .line 62
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getNimbusURLs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->k:[Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->l:[Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->m:[Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->n:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->o:Lcom/bd/android/shared/HTTPManager2$ResponseHandler;

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->p:Ljava/util/LinkedList;

    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss:SS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->q:Ljava/text/SimpleDateFormat;

    .line 356
    iput-boolean p1, p0, Lcom/bd/android/shared/HTTPManager2;->c:Z

    .line 358
    iput-boolean p2, p0, Lcom/bd/android/shared/HTTPManager2;->e:Z

    .line 359
    iput-object p3, p0, Lcom/bd/android/shared/HTTPManager2;->n:Ljava/lang/String;

    .line 360
    iput-object p5, p0, Lcom/bd/android/shared/HTTPManager2;->o:Lcom/bd/android/shared/HTTPManager2$ResponseHandler;

    .line 363
    iput p4, p0, Lcom/bd/android/shared/HTTPManager2;->f:I

    .line 364
    const/4 v0, -0x1

    iget v1, p0, Lcom/bd/android/shared/HTTPManager2;->f:I

    if-ne v0, v1, :cond_0

    .line 366
    const/16 v0, 0x2710

    iput v0, p0, Lcom/bd/android/shared/HTTPManager2;->f:I

    .line 368
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ILcom/bd/android/shared/HTTPManager2$ResponseHandler;Lcom/bd/android/shared/c;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/bd/android/shared/HTTPManager2;-><init>(ZZLjava/lang/String;ILcom/bd/android/shared/HTTPManager2$ResponseHandler;)V

    return-void
.end method

.method private a(Lcom/bd/android/shared/HTTPManager2$GETParameters;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 508
    .line 509
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->n:Ljava/lang/String;

    .line 510
    if-eqz p1, :cond_0

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bd/android/shared/HTTPManager2$GETParameters;->GetEncodedParamsAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    :cond_0
    if-eqz p2, :cond_1

    .line 517
    invoke-static {p2}, Lcom/bd/android/shared/HTTPManager2$Headers;->a(Lcom/bd/android/shared/HTTPManager2$Headers;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2;->a(Ljava/lang/String;Ljava/util/LinkedList;Z)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    .line 521
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2;->a(Ljava/lang/String;Ljava/util/LinkedList;Z)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/HTTPManager2$GETParameters;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/HTTPManager2$GETParameters;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Lcom/bd/android/shared/f;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/bd/android/shared/HTTPManager2;->b(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Lcom/bd/android/shared/f;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 529
    .line 530
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->n:Ljava/lang/String;

    .line 532
    if-eqz p2, :cond_0

    .line 534
    invoke-static {p2}, Lcom/bd/android/shared/HTTPManager2$Headers;->a(Lcom/bd/android/shared/HTTPManager2$Headers;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/f;Ljava/lang/String;Ljava/util/LinkedList;Z)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    .line 541
    :goto_0
    return-object v0

    .line 538
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/f;Ljava/lang/String;Ljava/util/LinkedList;Z)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/bd/android/shared/f;Ljava/lang/String;Ljava/util/LinkedList;Z)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bd/android/shared/f;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;Z)",
            "Lcom/bd/android/shared/HTTPManager2$ResponseInfo;"
        }
    .end annotation

    .prologue
    .line 722
    new-instance v1, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    invoke-direct {v1, p0}, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;-><init>(Lcom/bd/android/shared/HTTPManager2;)V

    .line 723
    const/4 v2, 0x0

    .line 727
    const/4 v4, 0x4

    .line 728
    const/4 v3, 0x0

    .line 730
    :try_start_0
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 731
    const-string v0, "https"

    invoke-virtual {v7}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bd/android/shared/HTTPManager2;->c:Z

    .line 737
    :cond_0
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 738
    invoke-virtual {v8, v7}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 740
    if-eqz p3, :cond_1

    .line 742
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicHeader;

    .line 744
    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 859
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 861
    :goto_1
    invoke-virtual {v1}, Ljava/security/InvalidParameterException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sErrorBody:Ljava/lang/String;

    .line 862
    const/16 v1, -0x6f

    iput v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    .line 881
    :goto_2
    return-object v0

    .line 750
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/bd/android/shared/HTTPManager2;->d:Z

    if-eqz v0, :cond_5

    .line 752
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v5, "Content-Type"

    const-string v6, "application/byte-stream"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :goto_3
    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 761
    :cond_2
    sget-object v0, Lcom/bd/android/shared/HTTPManager2;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "X-Nimbus-ClientId"

    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpPost;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    .line 763
    const-string v0, "X-Nimbus-ClientId"

    sget-object v5, Lcom/bd/android/shared/HTTPManager2;->i:Ljava/lang/String;

    invoke-virtual {v8, v0, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_3
    invoke-static {}, Lcom/bd/android/shared/u;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "x-benchmark"

    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpPost;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4

    .line 768
    const-string v0, "x-benchmark"

    const-string v5, "true"

    invoke-virtual {v8, v0, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_4
    invoke-direct {p0}, Lcom/bd/android/shared/HTTPManager2;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v9

    .line 772
    if-nez v9, :cond_6

    .line 774
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 864
    :catch_1
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 866
    :goto_4
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sErrorBody:Ljava/lang/String;

    .line 867
    const/16 v1, -0x6d

    iput v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    goto :goto_2

    .line 756
    :cond_5
    :try_start_2
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v5, "Content-Type"

    const-string v6, "application/json"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 869
    :catch_2
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 871
    :goto_5
    invoke-virtual {v1}, Lorg/apache/http/NoHttpResponseException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sErrorBody:Ljava/lang/String;

    .line 872
    const/16 v1, -0x6e

    iput v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    goto :goto_2

    .line 777
    :cond_6
    const/4 v0, 0x0

    .line 778
    :try_start_3
    sget-object v5, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_STRING:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iget-object v6, p1, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    if-ne v5, v6, :cond_7

    .line 780
    iget-object v0, p1, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 781
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 783
    :cond_7
    sget-object v5, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_FILE:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iget-object v6, p1, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    if-ne v5, v6, :cond_f

    .line 785
    iget-object v0, p1, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 786
    new-instance v5, Lorg/apache/http/entity/FileEntity;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v5

    .line 789
    :goto_6
    invoke-virtual {v8, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 791
    invoke-direct {p0}, Lcom/bd/android/shared/HTTPManager2;->c()I
    :try_end_3
    .catch Ljava/security/InvalidParameterException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v10

    move v5, v4

    move-object v4, v3

    .line 793
    :goto_7
    if-eqz v5, :cond_e

    .line 799
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timestamp: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bd/android/shared/HTTPManager2;->q:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\nPOST Request ID "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n#Retry "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rsub-int/lit8 v3, v5, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\nURI: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    sget-object v11, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_FILE:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    if-eq v0, v11, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\nData:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "UTF-8"

    invoke-static {v6, v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDUtils;->b(Ljava/lang/String;)V

    .line 804
    iget-object v0, p1, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    sget-object v3, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_FILE:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    if-eq v0, v3, :cond_8

    .line 806
    const-string v0, "HTTPManager2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "REQUEST POST: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "UTF-8"

    invoke-static {v6, v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_8
    invoke-interface {v9, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/InvalidParameterException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    move-object v3, v0

    .line 830
    :goto_9
    if-nez v5, :cond_c

    .line 832
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTPManager2 Exception httpPost: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR_NO_STACKTRACE(Ljava/lang/String;)V

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bd/android/shared/HTTPManager2;->q:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nPOST Response ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDUtils;->b(Ljava/lang/String;)V

    .line 836
    throw v4
    :try_end_5
    .catch Ljava/security/InvalidParameterException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 874
    :catch_3
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 876
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR in HttpManager2 - PerformRawPOST : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bd/android/shared/BDUtils;->b(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sErrorBody:Ljava/lang/String;

    .line 878
    const/16 v1, -0x6c

    iput v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    goto/16 :goto_2

    .line 799
    :cond_9
    :try_start_6
    const-string v0, ""
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/security/InvalidParameterException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_8

    .line 812
    :catch_4
    move-exception v0

    .line 814
    if-eqz p4, :cond_a

    .line 816
    const/4 v3, 0x1

    :try_start_7
    iget-boolean v4, p0, Lcom/bd/android/shared/HTTPManager2;->c:Z

    if-ne v3, v4, :cond_b

    .line 818
    new-instance v3, Ljava/net/URI;

    const/4 v4, 0x1

    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v11}, Lcom/bd/android/shared/HTTPManager2;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 825
    :cond_a
    :goto_b
    add-int/lit8 v3, v5, -0x1

    move-object v4, v0

    move v5, v3

    .line 827
    goto/16 :goto_7

    .line 822
    :cond_b
    new-instance v3, Ljava/net/URI;

    const/4 v4, 0x1

    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v11}, Lcom/bd/android/shared/HTTPManager2;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    goto :goto_b

    .line 839
    :cond_c
    const-string v0, "X-Processors-List"

    invoke-interface {v3, v0}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 840
    const/4 v0, 0x0

    .line 841
    if-eqz v2, :cond_d

    .line 843
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 846
    :goto_c
    invoke-direct {p0, v3}, Lcom/bd/android/shared/HTTPManager2;->a(Lorg/apache/http/HttpResponse;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    :try_end_7
    .catch Ljava/security/InvalidParameterException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v0

    .line 849
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timestamp: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bd/android/shared/HTTPManager2;->q:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nPOST Response ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nData: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nError type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nError body: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sErrorBody:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nX-Processors-List:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bd/android/shared/BDUtils;->b(Ljava/lang/String;)V

    .line 856
    const-string v1, "HTTPManager2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESPONSE: Data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || Error type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || Error body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sErrorBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || X-Processors-List:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/security/InvalidParameterException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_2

    .line 859
    :catch_5
    move-exception v1

    goto/16 :goto_1

    .line 874
    :catch_6
    move-exception v1

    goto/16 :goto_a

    .line 869
    :catch_7
    move-exception v1

    goto/16 :goto_5

    .line 864
    :catch_8
    move-exception v1

    goto/16 :goto_4

    :cond_d
    move-object v2, v0

    goto/16 :goto_c

    :cond_e
    move-object v3, v2

    goto/16 :goto_9

    :cond_f
    move-object v6, v0

    goto/16 :goto_6
.end method

.method private a(Ljava/lang/String;Ljava/util/LinkedList;Z)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;Z)",
            "Lcom/bd/android/shared/HTTPManager2$ResponseInfo;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 886
    new-instance v1, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    invoke-direct {v1, p0}, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;-><init>(Lcom/bd/android/shared/HTTPManager2;)V

    .line 891
    const/4 v3, 0x4

    .line 895
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 896
    if-eqz p2, :cond_0

    .line 898
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicHeader;

    .line 900
    invoke-virtual {v5, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 969
    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    .line 971
    :goto_1
    invoke-virtual {v1}, Ljava/security/InvalidParameterException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sErrorBody:Ljava/lang/String;

    .line 972
    const/16 v1, -0x6f

    iput v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    .line 991
    :goto_2
    return-object v0

    .line 904
    :cond_0
    :try_start_1
    sget-object v0, Lcom/bd/android/shared/HTTPManager2;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "X-Nimbus-ClientId"

    invoke-virtual {v5, v0}, Lorg/apache/http/client/methods/HttpGet;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 906
    const-string v0, "X-Nimbus-ClientId"

    sget-object v4, Lcom/bd/android/shared/HTTPManager2;->i:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_1
    invoke-static {}, Lcom/bd/android/shared/u;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "x-benchmark"

    invoke-virtual {v5, v0}, Lorg/apache/http/client/methods/HttpGet;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 911
    const-string v0, "x-benchmark"

    const-string v4, "true"

    invoke-virtual {v5, v0, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_2
    invoke-direct {p0}, Lcom/bd/android/shared/HTTPManager2;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v6

    .line 915
    if-nez v6, :cond_3

    .line 917
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 974
    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    .line 976
    :goto_3
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sErrorBody:Ljava/lang/String;

    .line 977
    const/16 v1, -0x6d

    iput v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    goto :goto_2

    .line 920
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/bd/android/shared/HTTPManager2;->c()I
    :try_end_2
    .catch Ljava/security/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v7

    move v4, v3

    move-object v3, v2

    .line 921
    :goto_4
    if-eqz v4, :cond_7

    .line 927
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timestamp: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/bd/android/shared/HTTPManager2;->q:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\nGET Request ID "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\n#Retry "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rsub-int/lit8 v8, v4, 0x4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\nURI: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\nData:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDUtils;->b(Ljava/lang/String;)V

    .line 932
    const-string v0, "HTTPManager2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "REQUEST GET: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-interface {v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/InvalidParameterException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 955
    :goto_5
    if-nez v4, :cond_6

    .line 957
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTPManager2 Exception httpGet: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR_NO_STACKTRACE(Ljava/lang/String;)V

    .line 958
    throw v3
    :try_end_4
    .catch Ljava/security/InvalidParameterException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 979
    :catch_2
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    .line 981
    :goto_6
    invoke-virtual {v1}, Lorg/apache/http/NoHttpResponseException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sErrorBody:Ljava/lang/String;

    .line 982
    const/16 v1, -0x6e

    iput v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    goto/16 :goto_2

    .line 937
    :catch_3
    move-exception v0

    .line 939
    if-eqz p3, :cond_4

    .line 941
    :try_start_5
    iget-boolean v3, p0, Lcom/bd/android/shared/HTTPManager2;->c:Z

    if-ne v10, v3, :cond_5

    .line 943
    new-instance v3, Ljava/net/URI;

    const/4 v8, 0x1

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/bd/android/shared/HTTPManager2;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 950
    :cond_4
    :goto_7
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move-object v3, v0

    .line 952
    goto/16 :goto_4

    .line 947
    :cond_5
    new-instance v3, Ljava/net/URI;

    const/4 v8, 0x1

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/bd/android/shared/HTTPManager2;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V
    :try_end_5
    .catch Ljava/security/InvalidParameterException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 984
    :catch_4
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    .line 986
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR in HttpManager2 - PerformRawGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bd/android/shared/BDUtils;->b(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sErrorBody:Ljava/lang/String;

    .line 988
    const/16 v1, -0x6c

    iput v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    goto/16 :goto_2

    .line 961
    :cond_6
    :try_start_6
    invoke-direct {p0, v0}, Lcom/bd/android/shared/HTTPManager2;->a(Lorg/apache/http/HttpResponse;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    :try_end_6
    .catch Ljava/security/InvalidParameterException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v0

    .line 964
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bd/android/shared/HTTPManager2;->q:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nGET Response ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nError type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nError body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sErrorBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bd/android/shared/BDUtils;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/security/InvalidParameterException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_2

    .line 969
    :catch_5
    move-exception v1

    goto/16 :goto_1

    .line 984
    :catch_6
    move-exception v1

    goto :goto_8

    .line 979
    :catch_7
    move-exception v1

    goto/16 :goto_6

    .line 974
    :catch_8
    move-exception v1

    goto/16 :goto_3

    :cond_7
    move-object v0, v2

    goto/16 :goto_5
.end method

.method private a(Lorg/apache/http/HttpResponse;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 3

    .prologue
    const/16 v2, 0xc8

    .line 996
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    invoke-direct {v0, p0}, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;-><init>(Lcom/bd/android/shared/HTTPManager2;)V

    .line 997
    invoke-direct {p0, p1}, Lcom/bd/android/shared/HTTPManager2;->c(Lorg/apache/http/HttpResponse;)I

    move-result v1

    .line 998
    if-ne v2, v1, :cond_1

    .line 1000
    invoke-direct {p0, p1}, Lcom/bd/android/shared/HTTPManager2;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 1001
    if-eqz v1, :cond_0

    .line 1003
    iput-object v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    .line 1004
    iput v2, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    .line 1016
    :goto_0
    return-object v0

    .line 1008
    :cond_0
    const/16 v1, -0x6b

    iput v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    goto :goto_0

    .line 1013
    :cond_1
    iput v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 45
    sput-object p0, Lcom/bd/android/shared/HTTPManager2;->i:Ljava/lang/String;

    return-object p0
.end method

.method private a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    .line 263
    if-eqz p1, :cond_0

    .line 265
    iget v0, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    .line 266
    iget v0, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    iget-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->l:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->l:[Ljava/lang/String;

    iget v2, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    .line 272
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->l:[Ljava/lang/String;

    iget v1, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/bd/android/shared/HTTPManager2;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->p:Ljava/util/LinkedList;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 644
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->k:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->m:[Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->k:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->l:[Ljava/lang/String;

    .line 649
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->k:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 651
    iget-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->k:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 653
    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 655
    :cond_0
    iget-object v2, p0, Lcom/bd/android/shared/HTTPManager2;->l:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 656
    iget-object v2, p0, Lcom/bd/android/shared/HTTPManager2;->m:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 649
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_1
    iget-object v2, p0, Lcom/bd/android/shared/HTTPManager2;->l:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 661
    iget-object v2, p0, Lcom/bd/android/shared/HTTPManager2;->m:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_1

    .line 664
    :cond_2
    return-void
.end method

.method private a(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Lcom/bd/android/shared/f;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 605
    new-instance v0, Lcom/bd/android/shared/e;

    invoke-direct {v0, p0, v3}, Lcom/bd/android/shared/e;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 606
    iget-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 608
    :try_start_0
    iget-object v2, p0, Lcom/bd/android/shared/HTTPManager2;->p:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 609
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    sget-object v1, Lcom/bd/android/shared/d;->c:Lcom/bd/android/shared/d;

    iput-object v1, v0, Lcom/bd/android/shared/e;->a:Lcom/bd/android/shared/d;

    .line 611
    iput-object p2, v0, Lcom/bd/android/shared/e;->e:Lcom/bd/android/shared/f;

    .line 612
    iput-object p1, v0, Lcom/bd/android/shared/e;->f:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    .line 613
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 614
    return-void

    .line 609
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/bd/android/shared/HTTPManager2;)Lcom/bd/android/shared/HTTPManager2$ResponseHandler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->o:Lcom/bd/android/shared/HTTPManager2$ResponseHandler;

    return-object v0
.end method

.method private b(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Lcom/bd/android/shared/f;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 668
    .line 670
    invoke-direct {p0}, Lcom/bd/android/shared/HTTPManager2;->a()V

    .line 672
    iget-boolean v0, p0, Lcom/bd/android/shared/HTTPManager2;->c:Z

    if-ne v5, v0, :cond_1

    .line 674
    invoke-direct {p0, v1, v2}, Lcom/bd/android/shared/HTTPManager2;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    :goto_0
    iget-boolean v1, p0, Lcom/bd/android/shared/HTTPManager2;->e:Z

    if-nez v1, :cond_0

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;->sType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;->sVerb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 691
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Nimbus-Key"

    const-string v4, "jose-mobile"

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 700
    iget-boolean v1, p0, Lcom/bd/android/shared/HTTPManager2;->e:Z

    if-ne v5, v1, :cond_2

    .line 702
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Content-Type"

    const-string v4, "application/x-multi-json"

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-direct {p0, p2, v0, v2, v5}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/f;Ljava/lang/String;Ljava/util/LinkedList;Z)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0

    .line 678
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/bd/android/shared/HTTPManager2;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 706
    :cond_2
    iget-boolean v1, p0, Lcom/bd/android/shared/HTTPManager2;->d:Z

    if-eqz v1, :cond_3

    .line 708
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Content-Type"

    const-string v4, "application/byte-stream"

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 712
    :cond_3
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1075
    .line 1078
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1079
    if-nez v1, :cond_0

    .line 1090
    :goto_0
    return-object v0

    .line 1083
    :cond_0
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    .line 280
    if-eqz p1, :cond_0

    .line 282
    iget v0, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    .line 283
    iget v0, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    iget-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->m:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->m:[Ljava/lang/String;

    iget v2, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    .line 289
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->m:[Ljava/lang/String;

    iget v1, p0, Lcom/bd/android/shared/HTTPManager2;->g:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private b()Lorg/apache/http/client/HttpClient;
    .locals 6

    .prologue
    .line 1024
    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->j:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    .line 1026
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1027
    iget v1, p0, Lcom/bd/android/shared/HTTPManager2;->f:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1028
    const v1, 0x80e8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1030
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/bd/android/shared/HTTPManager2;->c:Z

    if-ne v1, v2, :cond_1

    .line 1032
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1033
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1036
    new-instance v2, Lcom/bd/android/shared/q;

    invoke-direct {v2}, Lcom/bd/android/shared/q;-><init>()V

    .line 1047
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1049
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 1050
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->j:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->j:Lorg/apache/http/client/HttpClient;

    return-object v0

    .line 1054
    :cond_1
    :try_start_1
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->j:Lorg/apache/http/client/HttpClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1058
    :catch_0
    move-exception v0

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTPManager2 - error in GetStandardHTTPClient : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->j:Lorg/apache/http/client/HttpClient;

    goto :goto_0
.end method

.method private b(Lcom/bd/android/shared/HTTPManager2$GETParameters;Lcom/bd/android/shared/HTTPManager2$Headers;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 631
    new-instance v0, Lcom/bd/android/shared/e;

    invoke-direct {v0, p0, v3}, Lcom/bd/android/shared/e;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 632
    iget-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 634
    :try_start_0
    iget-object v2, p0, Lcom/bd/android/shared/HTTPManager2;->p:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 635
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    sget-object v1, Lcom/bd/android/shared/d;->a:Lcom/bd/android/shared/d;

    iput-object v1, v0, Lcom/bd/android/shared/e;->a:Lcom/bd/android/shared/d;

    .line 637
    iput-object p1, v0, Lcom/bd/android/shared/e;->d:Lcom/bd/android/shared/HTTPManager2$GETParameters;

    .line 638
    iput-object p2, v0, Lcom/bd/android/shared/e;->c:Lcom/bd/android/shared/HTTPManager2$Headers;

    .line 639
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 640
    return-void

    .line 635
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 618
    new-instance v0, Lcom/bd/android/shared/e;

    invoke-direct {v0, p0, v3}, Lcom/bd/android/shared/e;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 619
    iget-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 621
    :try_start_0
    iget-object v2, p0, Lcom/bd/android/shared/HTTPManager2;->p:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 622
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    sget-object v1, Lcom/bd/android/shared/d;->b:Lcom/bd/android/shared/d;

    iput-object v1, v0, Lcom/bd/android/shared/e;->a:Lcom/bd/android/shared/d;

    .line 624
    iput-object p1, v0, Lcom/bd/android/shared/e;->e:Lcom/bd/android/shared/f;

    .line 625
    iput-object p2, v0, Lcom/bd/android/shared/e;->c:Lcom/bd/android/shared/HTTPManager2$Headers;

    .line 626
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 627
    return-void

    .line 622
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized c()I
    .locals 2

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/bd/android/shared/HTTPManager2;->h:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/bd/android/shared/HTTPManager2;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lorg/apache/http/HttpResponse;)I
    .locals 3

    .prologue
    .line 1095
    .line 1096
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 1097
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 1100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received in HttpManager2 - GetRequestStatusCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bd/android/shared/BDUtils;->b(Ljava/lang/String;)V

    .line 1102
    return v0
.end method


# virtual methods
.method public PerformGET(Lcom/bd/android/shared/HTTPManager2$GETParameters;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/HTTPManager2$GETParameters;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public PerformGET(Lcom/bd/android/shared/HTTPManager2$GETParameters;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0, p1, p2}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/HTTPManager2$GETParameters;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public PerformGETAsync(Lcom/bd/android/shared/HTTPManager2$GETParameters;)V
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bd/android/shared/HTTPManager2;->b(Lcom/bd/android/shared/HTTPManager2$GETParameters;Lcom/bd/android/shared/HTTPManager2$Headers;)V

    .line 416
    return-void
.end method

.method public PerformGETAsync(Lcom/bd/android/shared/HTTPManager2$GETParameters;Lcom/bd/android/shared/HTTPManager2$Headers;)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lcom/bd/android/shared/HTTPManager2;->b(Lcom/bd/android/shared/HTTPManager2$GETParameters;Lcom/bd/android/shared/HTTPManager2$Headers;)V

    .line 421
    return-void
.end method

.method public PerformPOST(Ljava/io/File;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 461
    new-instance v0, Lcom/bd/android/shared/f;

    invoke-direct {v0, p0, v2}, Lcom/bd/android/shared/f;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 462
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_FILE:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iput-object v1, v0, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 463
    iput-object p1, v0, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    .line 465
    invoke-direct {p0, v0, v2}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public PerformPOST(Ljava/io/File;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 2

    .prologue
    .line 470
    new-instance v0, Lcom/bd/android/shared/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bd/android/shared/f;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 471
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_FILE:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iput-object v1, v0, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 472
    iput-object p1, v0, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    .line 474
    invoke-direct {p0, v0, p2}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public PerformPOST(Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    new-instance v0, Lcom/bd/android/shared/f;

    invoke-direct {v0, p0, v2}, Lcom/bd/android/shared/f;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 426
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_STRING:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iput-object v1, v0, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 427
    iput-object p1, v0, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    .line 429
    invoke-direct {p0, v0, v2}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public PerformPOST(Ljava/lang/String;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 2

    .prologue
    .line 434
    new-instance v0, Lcom/bd/android/shared/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bd/android/shared/f;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 435
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_STRING:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iput-object v1, v0, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 436
    iput-object p1, v0, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    .line 438
    invoke-direct {p0, v0, p2}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public PerformPOSTAsync(Ljava/io/File;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 479
    new-instance v0, Lcom/bd/android/shared/f;

    invoke-direct {v0, p0, v2}, Lcom/bd/android/shared/f;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 480
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_FILE:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iput-object v1, v0, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 481
    iput-object p1, v0, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    .line 483
    invoke-direct {p0, v0, v2}, Lcom/bd/android/shared/HTTPManager2;->b(Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)V

    .line 484
    return-void
.end method

.method public PerformPOSTAsync(Ljava/io/File;Lcom/bd/android/shared/HTTPManager2$Headers;)V
    .locals 2

    .prologue
    .line 488
    new-instance v0, Lcom/bd/android/shared/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bd/android/shared/f;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 489
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_FILE:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iput-object v1, v0, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 490
    iput-object p1, v0, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    .line 492
    invoke-direct {p0, v0, p2}, Lcom/bd/android/shared/HTTPManager2;->b(Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)V

    .line 493
    return-void
.end method

.method public PerformPOSTAsync(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 443
    new-instance v0, Lcom/bd/android/shared/f;

    invoke-direct {v0, p0, v2}, Lcom/bd/android/shared/f;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 444
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_STRING:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iput-object v1, v0, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 445
    iput-object p1, v0, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    .line 447
    invoke-direct {p0, v0, v2}, Lcom/bd/android/shared/HTTPManager2;->b(Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)V

    .line 448
    return-void
.end method

.method public PerformPOSTAsync(Ljava/lang/String;Lcom/bd/android/shared/HTTPManager2$Headers;)V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Lcom/bd/android/shared/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bd/android/shared/f;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 453
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_STRING:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iput-object v1, v0, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 454
    iput-object p1, v0, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    .line 456
    invoke-direct {p0, v0, p2}, Lcom/bd/android/shared/HTTPManager2;->b(Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)V

    .line 457
    return-void
.end method

.method public SendToCloud(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Ljava/io/File;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Lcom/bd/android/shared/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bd/android/shared/f;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 398
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_FILE:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iput-object v1, v0, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 399
    iput-object p2, v0, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    .line 400
    invoke-direct {p0, p1, v0}, Lcom/bd/android/shared/HTTPManager2;->b(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Lcom/bd/android/shared/f;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public SendToCloud(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Lcom/bd/android/shared/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bd/android/shared/f;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 389
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_STRING:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iput-object v1, v0, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 390
    iput-object p2, v0, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    .line 392
    invoke-direct {p0, p1, v0}, Lcom/bd/android/shared/HTTPManager2;->b(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Lcom/bd/android/shared/f;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public SendToCloudAsync(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 380
    new-instance v0, Lcom/bd/android/shared/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bd/android/shared/f;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 381
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_FILE:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iput-object v1, v0, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 382
    iput-object p2, v0, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    .line 383
    invoke-direct {p0, p1, v0}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Lcom/bd/android/shared/f;)V

    .line 384
    return-void
.end method

.method public SendToCloudAsync(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 372
    new-instance v0, Lcom/bd/android/shared/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bd/android/shared/f;-><init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V

    .line 373
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_STRING:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    iput-object v1, v0, Lcom/bd/android/shared/f;->b:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 374
    iput-object p2, v0, Lcom/bd/android/shared/f;->a:Ljava/lang/Object;

    .line 375
    invoke-direct {p0, p1, v0}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Lcom/bd/android/shared/f;)V

    .line 376
    return-void
.end method

.method public StopAllRequests()V
    .locals 4

    .prologue
    .line 497
    iget-object v1, p0, Lcom/bd/android/shared/HTTPManager2;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bd/android/shared/e;

    .line 501
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/bd/android/shared/e;->cancel(Z)Z

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    return-void
.end method
