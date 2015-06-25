.class public Lde/gdata/mobilesecurity/secsrv/SecSrv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lde/gdata/mobilesecurity/secsrv/SecSrv;->a:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lde/gdata/mobilesecurity/secsrv/SecSrv;->c:Landroid/content/Context;

    .line 23
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/secsrv/SecSrv;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/secsrv/SecSrv;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 24
    iget-object v0, p0, Lde/gdata/mobilesecurity/secsrv/SecSrv;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastCheckedDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/secsrv/SecSrv;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private native RequestUrlEx(Ljava/lang/String;)I
.end method

.method private native SetFilesPath(Ljava/lang/String;)V
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/secsrv/SecSrv;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/secsrv/SecSrv;->b:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/secsrv/SecSrv;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/secsrv/SecSrv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLastCheckedDomain(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public RequestUrl(Ljava/lang/String;)Lde/gdata/mobilesecurity/secsrv/ServerResponse;
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lde/gdata/mobilesecurity/util/BaseLibLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const-string v0, "Failed to load native libs"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->NOCONNECTION:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 40
    :goto_0
    return-object v0

    .line 32
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->WHITELISTED:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/secsrv/SecSrv;->a(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lde/gdata/mobilesecurity/secsrv/SecSrv;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/secsrv/SecSrv;->SetFilesPath(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/secsrv/SecSrv;->RequestUrlEx(Ljava/lang/String;)I

    move-result v1

    .line 39
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    goto :goto_0
.end method
