.class public Lde/gdata/mobilesecurity/mms/json/MobileSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/mobilesecurity/mms/json/Common;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lde/gdata/mobilesecurity/mms/json/Scan;

.field private e:Lde/gdata/mobilesecurity/mms/json/Update;

.field private f:Lde/gdata/mobilesecurity/mms/json/Web;

.field private g:Lde/gdata/mobilesecurity/util/DeviceInfo;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->b:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->c:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->g:Lde/gdata/mobilesecurity/util/DeviceInfo;

    .line 19
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/Common;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/mms/json/Common;-><init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->setCommon(Lde/gdata/mobilesecurity/mms/json/Common;)V

    .line 20
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/Scan;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/mms/json/Scan;-><init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->setScan(Lde/gdata/mobilesecurity/mms/json/Scan;)V

    .line 21
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/Update;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/mms/json/Update;-><init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->setUpdate(Lde/gdata/mobilesecurity/mms/json/Update;)V

    .line 22
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/Web;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/mms/json/Web;-><init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->setWeb(Lde/gdata/mobilesecurity/mms/json/Web;)V

    .line 23
    invoke-virtual {p0, p2}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->setMachineName(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->setName(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->b:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->c:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->g:Lde/gdata/mobilesecurity/util/DeviceInfo;

    .line 37
    :try_start_0
    const-string v0, "MachineName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MachineName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->setMachineName(Ljava/lang/String;)V

    .line 38
    :cond_0
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->setName(Ljava/lang/String;)V

    .line 39
    :cond_1
    const-string v0, "Common"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lde/gdata/mobilesecurity/mms/json/Common;

    const-string v1, "Common"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/json/Common;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->setCommon(Lde/gdata/mobilesecurity/mms/json/Common;)V

    .line 40
    :cond_2
    const-string v0, "Scan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lde/gdata/mobilesecurity/mms/json/Scan;

    const-string v1, "Scan"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/json/Scan;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->setScan(Lde/gdata/mobilesecurity/mms/json/Scan;)V

    .line 41
    :cond_3
    const-string v0, "Web"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lde/gdata/mobilesecurity/mms/json/Web;

    const-string v1, "Web"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/json/Web;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->setWeb(Lde/gdata/mobilesecurity/mms/json/Web;)V

    .line 42
    :cond_4
    const-string v0, "Update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lde/gdata/mobilesecurity/mms/json/Update;

    const-string v1, "Update"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/json/Update;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->setUpdate(Lde/gdata/mobilesecurity/mms/json/Update;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_5
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getCommon()Lde/gdata/mobilesecurity/mms/json/Common;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->a:Lde/gdata/mobilesecurity/mms/json/Common;

    return-object v0
.end method

.method public getMachineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getScan()Lde/gdata/mobilesecurity/mms/json/Scan;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->d:Lde/gdata/mobilesecurity/mms/json/Scan;

    return-object v0
.end method

.method public getUpdate()Lde/gdata/mobilesecurity/mms/json/Update;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->e:Lde/gdata/mobilesecurity/mms/json/Update;

    return-object v0
.end method

.method public getWeb()Lde/gdata/mobilesecurity/mms/json/Web;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->f:Lde/gdata/mobilesecurity/mms/json/Web;

    return-object v0
.end method

.method public setCommon(Lde/gdata/mobilesecurity/mms/json/Common;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->a:Lde/gdata/mobilesecurity/mms/json/Common;

    .line 82
    return-void
.end method

.method public setDeviceInfo(Lde/gdata/mobilesecurity/util/DeviceInfo;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->g:Lde/gdata/mobilesecurity/util/DeviceInfo;

    .line 126
    return-void
.end method

.method public setMachineName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->b:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->c:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setScan(Lde/gdata/mobilesecurity/mms/json/Scan;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->d:Lde/gdata/mobilesecurity/mms/json/Scan;

    .line 106
    return-void
.end method

.method public setUpdate(Lde/gdata/mobilesecurity/mms/json/Update;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->e:Lde/gdata/mobilesecurity/mms/json/Update;

    .line 114
    return-void
.end method

.method public setWeb(Lde/gdata/mobilesecurity/mms/json/Web;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->f:Lde/gdata/mobilesecurity/mms/json/Web;

    .line 122
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 48
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 50
    :try_start_0
    const-string v0, "MachineName"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->getMachineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v0, "Name"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v0, "Scan"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->getScan()Lde/gdata/mobilesecurity/mms/json/Scan;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/Scan;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v0, "Web"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->getWeb()Lde/gdata/mobilesecurity/mms/json/Web;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/Web;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v0, "Update"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->getUpdate()Lde/gdata/mobilesecurity/mms/json/Update;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/Update;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v0, "Common"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->getCommon()Lde/gdata/mobilesecurity/mms/json/Common;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/Common;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->g:Lde/gdata/mobilesecurity/util/DeviceInfo;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 60
    const-string v2, "PlatformId"

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->g:Lde/gdata/mobilesecurity/util/DeviceInfo;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getPlatformId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    const-string v2, "SystemVersion"

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->g:Lde/gdata/mobilesecurity/util/DeviceInfo;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v2, "Ipv4"

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->g:Lde/gdata/mobilesecurity/util/DeviceInfo;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v2, "MacAddress"

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->g:Lde/gdata/mobilesecurity/util/DeviceInfo;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v2, "NetMask"

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->g:Lde/gdata/mobilesecurity/util/DeviceInfo;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getNetMask()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v2, "DnsServer"

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->g:Lde/gdata/mobilesecurity/util/DeviceInfo;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getDNSServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "DhcpServer"

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->g:Lde/gdata/mobilesecurity/util/DeviceInfo;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getDhcpServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "Device"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public writeTo(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->a:Lde/gdata/mobilesecurity/mms/json/Common;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/mms/json/Common;->writeTo(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 29
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->d:Lde/gdata/mobilesecurity/mms/json/Scan;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/mms/json/Scan;->writeTo(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 30
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->e:Lde/gdata/mobilesecurity/mms/json/Update;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/mms/json/Update;->writeTo(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 31
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->f:Lde/gdata/mobilesecurity/mms/json/Web;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/mms/json/Web;->writeTo(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 32
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MobileSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSName(Ljava/lang/String;)V

    .line 33
    return-void
.end method
