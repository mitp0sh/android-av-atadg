.class Lde/gdata/mobilesecurity/messaging/a;
.super Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/messaging/RpcService;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/messaging/RpcService;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-direct {p0}, Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addPhishingException(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    new-instance v1, Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;Lde/gdata/mobilesecurity/util/RemotePreferences;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    .line 132
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getPhishingTimeout(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->addPhishingException(Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public getSupressedNumbers()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/messaging/a;->hasPremiumEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->getInstance(Landroid/content/Context;)Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    .line 116
    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->fetchSuppressedNumbers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasPremiumEnabled()Z
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    new-instance v1, Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;Lde/gdata/mobilesecurity/util/RemotePreferences;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    .line 33
    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/Trial;->refreshStates(Landroid/content/Context;)V

    .line 34
    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isTrialOutOfTrialPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isProtectFeaturesUntilRegistration()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isInvalidTrial()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getLoginLimit(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getLoginLimit(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getDecryptedUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMaliciousUrl(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/messaging/a;->hasPremiumEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v2, Lde/gdata/mobilesecurity/secsrv/SecSrv;

    iget-object v3, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    iget-object v4, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/messaging/RpcService;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lde/gdata/mobilesecurity/secsrv/SecSrv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    :try_start_0
    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/secsrv/SecSrv;->RequestUrl(Ljava/lang/String;)Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isMalicious()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isPasswordCorrect([B)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v1, 0x1

    .line 82
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/messaging/a;->hasPremiumEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    new-instance v2, Lde/gdata/mobilesecurity/util/TextDecrypter;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/util/TextDecrypter;-><init>()V

    .line 84
    iget-object v3, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    new-instance v4, Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v5, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;Lde/gdata/mobilesecurity/util/RemotePreferences;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    .line 86
    invoke-virtual {v2, p1}, Lde/gdata/mobilesecurity/util/TextDecrypter;->decryptData([B)Ljava/lang/String;

    move-result-object v2

    .line 89
    iget-object v3, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getParentsAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    move v0, v1

    .line 93
    :cond_2
    iget-object v3, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getSMSCommandPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_3

    move v0, v1

    .line 96
    :cond_3
    iget-object v3, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_4

    move v0, v1

    .line 101
    :cond_4
    iget-object v3, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getSMSCommandPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/messaging/RpcService;->a(Lde/gdata/mobilesecurity/messaging/RpcService;)Lde/gdata/mobilesecurity/util/RemotePreferences;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getParentsAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 105
    goto/16 :goto_0
.end method

.method public shouldBeFiltered(Ljava/lang/String;II)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/messaging/a;->hasPremiumEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/messaging/RpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->shallBlock(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldSMSBeBlocked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/messaging/a;->hasPremiumEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 70
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->getInstance(Landroid/content/Context;)Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lde/gdata/mobilesecurity/messaging/a;->a:Lde/gdata/mobilesecurity/messaging/RpcService;

    invoke-virtual {v0, v1, p1, p2}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->shallSMSBeBlocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
