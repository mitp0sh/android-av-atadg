.class Lde/gdata/mobilesecurity/intents/ca;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lde/gdata/mobilesecurity/intents/SigCloudConnector;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/SigCloudConnector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/ca;->c:Lde/gdata/mobilesecurity/intents/SigCloudConnector;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/ca;->a:Ljava/lang/String;

    iput-object p3, p0, Lde/gdata/mobilesecurity/intents/ca;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 139
    const-string v2, ""

    .line 141
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://mobcloudserver-001.lab.gdata.de/echo/txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/ca;->c:Lde/gdata/mobilesecurity/intents/SigCloudConnector;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->b(Lde/gdata/mobilesecurity/intents/SigCloudConnector;)Ljava/security/KeyStore;

    move-result-object v1

    .line 144
    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/ca;->c:Lde/gdata/mobilesecurity/intents/SigCloudConnector;

    invoke-static {v3}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->c(Lde/gdata/mobilesecurity/intents/SigCloudConnector;)Ljava/security/KeyStore;

    move-result-object v3

    .line 146
    const-string v4, "X509"

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 147
    invoke-virtual {v4, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 148
    const-string v1, "X509"

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 149
    const-string v5, "Bochum234"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 151
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 152
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 154
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 155
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 157
    new-instance v1, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;-><init>(Ljava/net/URLConnection;)V

    .line 158
    const-string v3, "guid"

    iget-object v4, p0, Lde/gdata/mobilesecurity/intents/ca;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v3, "request"

    const-string v4, "request.txt"

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lde/gdata/mobilesecurity/intents/ca;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3, v4, v5}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :try_start_1
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 164
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 165
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    const/16 v5, 0x1000

    :try_start_3
    new-array v5, v5, [B

    .line 169
    :goto_0
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 170
    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 177
    :catchall_1
    move-exception v1

    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 180
    :catchall_2
    move-exception v1

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 182
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 183
    :goto_3
    const-string v2, "Failed to connect to SigCloud"

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 184
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    .line 186
    :goto_4
    return-object v0

    .line 172
    :cond_0
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    .line 174
    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 177
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 180
    :try_start_a
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-object v0, v1

    .line 185
    goto :goto_4

    .line 182
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    .line 180
    :catchall_3
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_2

    .line 177
    :catchall_4
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ca;->c:Lde/gdata/mobilesecurity/intents/SigCloudConnector;

    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ca;->c:Lde/gdata/mobilesecurity/intents/SigCloudConnector;

    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/intents/ca;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/intents/ca;->a(Ljava/lang/String;)V

    return-void
.end method
