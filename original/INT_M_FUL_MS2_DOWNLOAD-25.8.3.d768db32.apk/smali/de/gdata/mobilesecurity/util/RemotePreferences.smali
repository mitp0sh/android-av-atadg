.class public Lde/gdata/mobilesecurity/util/RemotePreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method


# virtual methods
.method public getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "APP_PROTECTION_PASSWORD"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setAppProtectionPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "APP_PROTECTION_PASSWORD"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptedUsername(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 134
    sget-boolean v0, Lde/gdata/mobilesecurity/util/BasePreferences;->useOemUpdateLogin:Z

    if-eqz v0, :cond_1

    sget-object v0, Lde/gdata/mobilesecurity/util/BasePreferences;->oemUpdateUserName:Ljava/lang/String;

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 136
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "USERNAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->decodeAndDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public getLoginLimit(Landroid/content/Context;)Ljava/util/Date;
    .locals 5

    .prologue
    const/16 v3, 0x8

    .line 93
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "LOGIN_LIMIT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setLoginLimit(Landroid/content/Context;Ljava/util/Date;)V

    .line 98
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 101
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 102
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 103
    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 104
    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    new-instance v3, Ljava/util/GregorianCalendar;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v3, v1, v2, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentsAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "PARENTS_APP_PROTECTION_PASSWORD"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setParentsAppProtectionPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "PARENTS_APP_PROTECTION_PASSWORD"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhishingTimeout(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "WEBSHIELD_PHISHING_TIMEOUT"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSMSCommandPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "SMS_COMMAND_PASSWORD"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setSMSCommandPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "SMS_COMMAND_PASSWORD"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 29
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TRIAL_STATE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/util/Trial;->setTrialState(I)V

    .line 30
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TRIAL_GENERATION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0, v2}, Lde/gdata/mobilesecurity/util/Trial;->setGeneration(IZ)V

    .line 31
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TRIAL_REGNO"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/util/Trial;->setRegNoEnc(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "TRIAL_REGDATE"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lde/gdata/mobilesecurity/util/Trial;->setFreeTrialRegistrationDate(J)V

    .line 33
    return-void
.end method

.method public remoteTrialIsEmpty()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 36
    .line 37
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v2, "TRIAL_STATE"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v2, "TRIAL_GENERATION"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v2, "TRIAL_REGNO"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v2, "TRIAL_REGDATE"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 43
    :cond_0
    return v0
.end method

.method public setAppProtectionPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "APP_PROTECTION_PASSWORD"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    return-void
.end method

.method public setLoginLimit(Landroid/content/Context;Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 113
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 114
    if-nez p2, :cond_0

    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOGIN_LIMIT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOGIN_LIMIT"

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setParentsAppProtectionPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PARENTS_APP_PROTECTION_PASSWORD"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method

.method public setPhishingTimeout(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WEBSHIELD_PHISHING_TIMEOUT"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method public setSMSCommandPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SMS_COMMAND_PASSWORD"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    return-void
.end method

.method public setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 20
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TRIAL_STATE"

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/util/Trial;->getTrialState()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 21
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TRIAL_GENERATION"

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/util/Trial;->getGeneration()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TRIAL_REGNO"

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/util/Trial;->getRegNoEnc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TRIAL_REGDATE"

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/util/Trial;->getFreeTrialRegistrationDate()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 25
    return-void
.end method

.method public setUsername(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "USERNAME"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    return-void
.end method

.method public setWizardAuthSuccessful(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 159
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WIZARD_AUTH_SUCCESSFUL"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    return-void
.end method

.method public wasWizardAuthSuccessful(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 163
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    .line 164
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardAuthSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setWizardAuthSuccessful(Landroid/content/Context;Z)V

    .line 167
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/RemotePreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "WIZARD_AUTH_SUCCESSFUL"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
