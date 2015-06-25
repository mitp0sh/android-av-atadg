.class public Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SourceFile"


# instance fields
.field a:Ljavax/net/ssl/SSLContext;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/KeyStore;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V

    .line 44
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->c:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/TrustManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-static {}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a()Ljava/security/KeyStore;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 44
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    .line 46
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->c:Z

    .line 73
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->c:Z

    .line 74
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 75
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-static {}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a()Ljava/security/KeyStore;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 44
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    .line 46
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->c:Z

    .line 59
    if-eqz p1, :cond_0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->b:Ljava/util/List;

    .line 61
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 62
    iget-object v3, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->b:Ljava/util/List;

    .line 67
    :cond_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->b()V

    .line 68
    return-void
.end method

.method private static a()Ljava/security/KeyStore;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 39
    :goto_1
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 38
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->b:Ljava/util/List;

    return-object v0
.end method

.method private static a(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lorg/apache/http/client/HttpClient;
    .locals 5

    .prologue
    .line 143
    const-string v0, "isfa"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 144
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 145
    new-instance v2, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v2}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {p0, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 146
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, p0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 147
    new-instance v2, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 148
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 149
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 150
    return-object v1
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 78
    new-instance v0, Lde/gdata/mobilesecurity/util/c;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/c;-><init>(Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;)V

    .line 103
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    new-array v2, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v5, v2, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 104
    iput-boolean v4, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->c:Z

    .line 105
    return-void
.end method

.method public static getHttpsClient(Ljava/lang/String;Ljava/security/KeyStore;)Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a()Ljava/security/KeyStore;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->getHttpsClient(Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/KeyStore;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpsClient(Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/KeyStore;)Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;

    invoke-direct {v0, p0, p1, p2}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/KeyStore;)V

    .line 139
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpsClient(Ljavax/net/ssl/TrustManager;)Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;-><init>(Ljavax/net/ssl/TrustManager;)V

    .line 128
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getHttpsClient([Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;-><init>([Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->c:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->c:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    goto :goto_0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method
