.class public Lde/gdata/mobilesecurity/util/GDataTrustManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final a:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 22
    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    invoke-virtual {v2, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 23
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 24
    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    iput-object v0, p0, Lde/gdata/mobilesecurity/util/GDataTrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    .line 31
    return-void

    .line 26
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 28
    goto :goto_0
.end method

.method private a(Ljava/security/cert/X509Certificate;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 68
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    .line 69
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    .line 70
    invoke-interface {v4, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 54
    invoke-direct {p0, v0, p1}, Lde/gdata/mobilesecurity/util/GDataTrustManager;->b(Ljava/security/cert/X509Certificate;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 55
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 4

    .prologue
    .line 35
    array-length v0, p1

    new-array v2, v0, [Ljava/security/cert/X509Certificate;

    .line 36
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 38
    array-length v0, p1

    add-int/lit8 v1, v0, -0x1

    .line 39
    invoke-direct {p0, v3}, Lde/gdata/mobilesecurity/util/GDataTrustManager;->a(Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 40
    aput-object v0, v2, v1

    .line 43
    :goto_0
    invoke-direct {p0, v0, v3}, Lde/gdata/mobilesecurity/util/GDataTrustManager;->a(Ljava/security/cert/X509Certificate;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    if-lez v1, :cond_0

    .line 44
    add-int/lit8 v1, v1, -0x1

    aput-object v0, v2, v1

    goto :goto_0

    .line 47
    :cond_0
    return-object v2
.end method

.method private b(Ljava/security/cert/X509Certificate;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 83
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    .line 84
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    .line 85
    invoke-interface {v3, v4}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/GDataTrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/util/GDataTrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/util/GDataTrustManager;->a([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/GDataTrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/GDataTrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v1, v0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 106
    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 107
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN=*.gdata.de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "invalid certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/GDataTrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/util/GDataTrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
