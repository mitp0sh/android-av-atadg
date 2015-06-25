.class public Lde/gdata/mobilesecurity/mms/json/Web;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Web;->a:Z

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Web;->b:Z

    .line 13
    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Web;->a:Z

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Web;->b:Z

    .line 24
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isWebshieldActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Web;->setEnableGuard(Z)V

    .line 25
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isWebshieldOnlyWlan()Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Web;->setEnableGuard(Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Web;->a:Z

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Web;->b:Z

    .line 17
    :try_start_0
    const-string v0, "EnableGuard"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Web;->setEnableGuard(Z)V

    .line 18
    const-string v0, "EnableGuardOnlyWlan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Web;->setEnableGuardOnlyWlan(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getEnableGuard()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Web;->a:Z

    return v0
.end method

.method public getEnableGuardOnlyWlan()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Web;->b:Z

    return v0
.end method

.method public setEnableGuard(Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mms/json/Web;->a:Z

    .line 50
    return-void
.end method

.method public setEnableGuardOnlyWlan(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mms/json/Web;->b:Z

    .line 58
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    :try_start_0
    const-string v1, "EnableGuard"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Web;->getEnableGuard()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 37
    const-string v1, "EnableGuardOnlyWlan"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Web;->getEnableGuardOnlyWlan()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public writeTo(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Web;->getEnableGuard()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWebshieldActivated(Z)V

    .line 30
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Web;->getEnableGuardOnlyWlan()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWebshieldOnlyWlan(Z)V

    .line 31
    return-void
.end method
