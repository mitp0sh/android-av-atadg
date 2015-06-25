.class public Lde/gdata/mobilesecurity/mms/json/Common;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Number;

.field private d:Ljava/lang/Number;

.field private e:Ljava/lang/Number;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->c:Ljava/lang/Number;

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->d:Ljava/lang/Number;

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->e:Ljava/lang/Number;

    .line 17
    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->c:Ljava/lang/Number;

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->d:Ljava/lang/Number;

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->e:Ljava/lang/Number;

    .line 32
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSyncInterval()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Common;->setSyncInterval(Ljava/lang/Number;)V

    .line 33
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSyncIntervalWlan()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Common;->setSyncIntervalWlan(Ljava/lang/Number;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->c:Ljava/lang/Number;

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->d:Ljava/lang/Number;

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->e:Ljava/lang/Number;

    .line 21
    :try_start_0
    const-string v0, "Mail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Common;->setMail(Ljava/lang/String;)V

    .line 23
    :cond_0
    const-string v0, "Phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Common;->setPhone(Ljava/lang/String;)V

    .line 24
    :cond_1
    const-string v0, "SettingsChangedFlags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SettingsChangedFlags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Common;->setSettingsChangedFlags(Ljava/lang/Number;)V

    .line 25
    :cond_2
    const-string v0, "SyncInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SyncInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Common;->setSyncInterval(Ljava/lang/Number;)V

    .line 26
    :cond_3
    const-string v0, "SyncIntervalWlan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SyncIntervalWlan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Common;->setSyncIntervalWlan(Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_4
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsChangedFlags()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->c:Ljava/lang/Number;

    return-object v0
.end method

.method public getSyncInterval()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->d:Ljava/lang/Number;

    return-object v0
.end method

.method public getSyncIntervalWlan()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->e:Ljava/lang/Number;

    return-object v0
.end method

.method public isSettingsChanged()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Common;->c:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Common;->a:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Common;->b:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSettingsChanged(Z)V
    .locals 1

    .prologue
    .line 101
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Common;->setSettingsChangedFlags(Ljava/lang/Number;)V

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSettingsChangedFlags(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Common;->c:Ljava/lang/Number;

    .line 82
    return-void
.end method

.method public setSyncInterval(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Common;->d:Ljava/lang/Number;

    .line 90
    return-void
.end method

.method public setSyncIntervalWlan(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Common;->e:Ljava/lang/Number;

    .line 98
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 42
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    :try_start_0
    const-string v0, "Mail"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Common;->getMail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v0, "Phone"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Common;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v0, "SettingsChangedFlags"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Common;->getSettingsChangedFlags()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v0, "SyncInterval"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Common;->getSyncInterval()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v0, "SyncIntervalWlan"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Common;->getSyncIntervalWlan()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public writeTo(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Common;->getSyncInterval()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSyncInterval(I)V

    .line 38
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Common;->getSyncIntervalWlan()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSyncIntervalWlan(I)V

    .line 39
    return-void
.end method
