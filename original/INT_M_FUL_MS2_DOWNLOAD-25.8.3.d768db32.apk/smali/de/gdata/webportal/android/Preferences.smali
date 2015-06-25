.class public Lde/gdata/webportal/android/Preferences;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/SharedPreferences;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    .line 15
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method


# virtual methods
.method public getLastWebPortalSync()J
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d0542

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWebPortalAccessKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d053b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebPortalAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d053c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v3, 0x7f0d0540

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebPortalPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d0544

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebPortalSyncInterval()J
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d0541

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "15"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWebPortalUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d0549

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isWebPortalEnabled()Z
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d025b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setWebPortalAccesskey(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d053b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method

.method public setWebPortalAddress(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d053c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    return-void
.end method

.method public setWebPortalEnabled(Z)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d025b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    return-void
.end method

.method public setWebPortalLastSync(J)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d0542

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    return-void
.end method

.method public setWebPortalPassword(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d0544

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    return-void
.end method

.method public setWebPortalUsername(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/webportal/android/Preferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/webportal/android/Preferences;->b:Landroid/content/Context;

    const v2, 0x7f0d0549

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    return-void
.end method
