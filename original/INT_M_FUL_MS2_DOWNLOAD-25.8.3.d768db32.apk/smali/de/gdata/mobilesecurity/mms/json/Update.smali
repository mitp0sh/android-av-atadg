.class public Lde/gdata/mobilesecurity/mms/json/Update;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/Date;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Number;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->a:Z

    .line 12
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->b:Z

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->e:Ljava/lang/Number;

    .line 22
    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->a:Z

    .line 12
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->b:Z

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->e:Ljava/lang/Number;

    .line 40
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isPeriodicUpdate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setAutoUpdate(Z)V

    .line 41
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isPeriodicUpdateWifiOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setAutoUpdateOnlyWlan(Z)V

    .line 42
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPeriodicScanIntervalDays()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setInterval(Ljava/lang/Number;)V

    .line 43
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setPassword(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setUser(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setProgramVersion(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->a:Z

    .line 12
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->b:Z

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->e:Ljava/lang/Number;

    .line 26
    :try_start_0
    const-string v0, "AutoUpdate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AutoUpdate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setAutoUpdate(Z)V

    .line 27
    :cond_0
    const-string v0, "AutoUpdateOnlyWlan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AutoUpdateOnlyWlan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setAutoUpdateOnlyWlan(Z)V

    .line 29
    :cond_1
    const-string v0, "EngineVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EngineVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setEngineVersion(Ljava/lang/String;)V

    .line 30
    :cond_2
    const-string v0, "Interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setInterval(Ljava/lang/Number;)V

    .line 31
    :cond_3
    const-string v0, "Password"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Password"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setPassword(Ljava/lang/String;)V

    .line 32
    :cond_4
    const-string v0, "ProgramVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ProgramVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setProgramVersion(Ljava/lang/String;)V

    .line 33
    :cond_5
    const-string v0, "User"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "User"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Update;->setUser(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_6
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    .line 57
    const v1, -0x5f8c4059

    invoke-virtual {v0, p1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    .line 62
    const v1, -0x5f8c4059

    invoke-virtual {v0, p1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAutoUpdate()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->a:Z

    return v0
.end method

.method public getAutoUpdateOnlyWlan()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->b:Z

    return v0
.end method

.method public getEngineDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->c:Ljava/util/Date;

    return-object v0
.end method

.method public getEngineDateString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 83
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getEngineDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    const-string v0, "/Date( 0 )/"

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/Date( %d )/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getEngineDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->e:Ljava/lang/Number;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Update;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoUpdate(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mms/json/Update;->a:Z

    .line 95
    return-void
.end method

.method public setAutoUpdateOnlyWlan(Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mms/json/Update;->b:Z

    .line 103
    return-void
.end method

.method public setEngineDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Update;->c:Ljava/util/Date;

    .line 111
    return-void
.end method

.method public setEngineVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Update;->d:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setInterval(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Update;->e:Ljava/lang/Number;

    .line 127
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Update;->f:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setProgramVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Update;->g:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Update;->h:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    :try_start_0
    const-string v1, "AutoUpdate"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getAutoUpdate()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 69
    const-string v1, "AutoUpdateOnlyWlan"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getAutoUpdateOnlyWlan()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 70
    const-string v1, "EngineDate"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getEngineDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v1, "EngineVersion"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getEngineVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v1, "Interval"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getInterval()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v1, "Password"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lde/gdata/mobilesecurity/mms/json/Update;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "ProgramVersion"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getProgramVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "User"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lde/gdata/mobilesecurity/mms/json/Update;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public writeTo(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getAutoUpdate()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPeriodicUpdate(Z)V

    .line 50
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getAutoUpdateOnlyWlan()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPeriodicUpdateWifiOnly(Z)V

    .line 51
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getInterval()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPeriodicUpdateInterval(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Update;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAndEncryptUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
