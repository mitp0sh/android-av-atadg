.class public Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLEAR_LOGS:Ljava/lang/String; = "CLEAR_LOGS"

.field public static final HIDDEN_CONTACT_COUNT:Ljava/lang/String; = "HIDDEN_CONTACT_COUNT"

.field public static final HIDE_CONTACTS:Ljava/lang/String; = "HIDE_CONTACTS"

.field public static final HIDE_CONVERSATIONS:Ljava/lang/String; = "HIDE_CONVERSATIONS"

.field public static final PRIVACY_ENABLED:Ljava/lang/String; = "PRIVACY_ENABLED"


# instance fields
.field a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "privacy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    .line 31
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a()V

    .line 33
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "HIDE_CONTACTS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, "HIDE_CONTACTS"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->hideContacts()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 72
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "CLEAR_LOGS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    const-string v0, "CLEAR_LOGS"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->clearLogs()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 75
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "HIDE_CONVERSATIONS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    const-string v0, "HIDE_CONVERSATIONS"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->hideConversation()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 78
    :cond_2
    return-void
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 37
    const-string v1, ""

    .line 39
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 40
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 44
    :goto_0
    return-object p0

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static normalizeNumbers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 62
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 63
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public static normalizeNumbers([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 54
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 55
    aget-object v2, p0, v0

    .line 56
    invoke-static {v2, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public clearLogs()Z
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "CLEAR_LOGS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHiddenCount()J
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "HIDDEN_CONTACT_COUNT"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHideWarningShown()Z
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "HIDE_WARNINGN_SHOWN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPriorityWarningShown()Z
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "PRIORITY_WARNING_SHOWN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hideContacts()Z
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "HIDE_CONTACTS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hideConversation()Z
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "HIDE_CONVERSATIONS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public privacyEnabled()Z
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "PRIVACY_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    return-void
.end method

.method public setClearLogs(Z)V
    .locals 1

    .prologue
    .line 93
    const-string v0, "CLEAR_LOGS"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public setHiddenCount(J)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HIDDEN_CONTACT_COUNT"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method public setHideContacts(Z)V
    .locals 1

    .prologue
    .line 101
    const-string v0, "HIDE_CONTACTS"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method public setHideConversations(Z)V
    .locals 1

    .prologue
    .line 117
    const-string v0, "HIDE_CONVERSATIONS"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 118
    return-void
.end method

.method public setHideWarningShown(Z)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HIDE_WARNINGN_SHOWN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method public setPriorityWarningShown(Z)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PRIORITY_WARNING_SHOWN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return-void
.end method

.method public setPrivacyEnabled(Z)V
    .locals 1

    .prologue
    .line 85
    const-string v0, "PRIVACY_ENABLED"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 86
    return-void
.end method
