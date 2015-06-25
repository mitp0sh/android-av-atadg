.class Lde/gdata/mobilesecurity/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/c;->a:Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 86
    :try_start_0
    invoke-static {v0}, Lde/gdata/mobilesecurity/statistics/ThumbPrint;->get(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/c;->a:Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->a(Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const-string v0, "Invalid Certificate"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->i(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Invalid host"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v0, "Failed to calculate thumprint"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Invalid host"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method
