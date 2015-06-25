.class public Lde/gdata/mobilesecurity/network/RestClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final GET:I = 0x3

.field public static final POST:I = 0x1

.field public static final PUT:I = 0x2

.field private static b:Lcom/google/gson/Gson;

.field private static final c:Ljava/lang/Object;


# instance fields
.field a:Ljavax/net/ssl/HttpsURLConnection;

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/network/RestClient;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;ILjavax/net/ssl/TrustManager;)V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    .line 76
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 77
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 78
    iget-object v1, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 79
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    new-instance v1, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v1}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 80
    invoke-direct {p0, p2}, Lde/gdata/mobilesecurity/network/RestClient;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs constructor <init>(Ljava/net/URL;I[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    .line 90
    new-instance v0, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;

    invoke-direct {v0, p3}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 92
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    new-instance v1, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v1}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 93
    invoke-direct {p0, p2}, Lde/gdata/mobilesecurity/network/RestClient;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 48
    packed-switch p1, :pswitch_data_0

    .line 67
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 51
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 62
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getGson()Lcom/google/gson/Gson;
    .locals 4

    .prologue
    .line 186
    sget-object v1, Lde/gdata/mobilesecurity/network/RestClient;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/network/RestClient;->b:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v2, Ljava/util/Date;

    new-instance v3, Lde/gdata/mobilesecurity/scan/cloud/json/DateTimeAdapter;

    invoke-direct {v3}, Lde/gdata/mobilesecurity/scan/cloud/json/DateTimeAdapter;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/network/RestClient;->b:Lcom/google/gson/Gson;

    .line 191
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/network/RestClient;->b:Lcom/google/gson/Gson;

    monitor-exit v1

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public execute()Lde/gdata/mobilesecurity/network/HttpStatusResponse;
    .locals 8

    .prologue
    .line 122
    new-instance v2, Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;-><init>()V

    .line 124
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5, v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    throw v0

    .line 128
    :cond_0
    :try_start_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lde/gdata/mobilesecurity/network/RestClient;->d:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 130
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 131
    iget-object v1, p0, Lde/gdata/mobilesecurity/network/RestClient;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 132
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 133
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 136
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    iget-object v4, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->setHeaders(Ljava/util/Map;)V

    .line 144
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    .line 145
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    .line 146
    const-string v1, "Server Answered with %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->i(Ljava/lang/String;)V

    .line 148
    :cond_3
    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->setStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    const/16 v1, 0x130

    if-eq v0, v1, :cond_4

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_4

    .line 152
    const/4 v0, 0x0

    .line 154
    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 155
    :try_start_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v3, "gzip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->decompressGzipStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->setStatusMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 175
    :goto_2
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    :cond_4
    :goto_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 182
    return-object v2

    .line 159
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x1000

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 160
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 162
    const/16 v4, 0x1000

    :try_start_6
    new-array v4, v4, [B

    .line 164
    :goto_4
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 165
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 169
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 172
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 175
    :goto_5
    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 167
    :cond_6
    :try_start_9
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v4}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->setStatusMessage(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 169
    :try_start_a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    .line 175
    :catchall_2
    move-exception v0

    :goto_6
    if-eqz v1, :cond_7

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_6

    .line 172
    :catch_1
    move-exception v1

    goto :goto_5
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/inapp/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lde/gdata/mobilesecurity/network/RestClient;->a:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setEntity(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 102
    if-eqz p2, :cond_0

    .line 103
    :try_start_0
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/MyUtil;->gzipCompressString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->d:[B

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/network/RestClient;->d:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to compress Data: \r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
