.class public Lde/gdata/mobilesecurity/mms/json/Scan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/Number;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Number;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->a:Z

    .line 9
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->b:Z

    .line 10
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->c:Ljava/lang/Number;

    .line 11
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->d:Z

    .line 12
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->e:Z

    .line 13
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->f:Ljava/lang/Number;

    .line 17
    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->a:Z

    .line 9
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->b:Z

    .line 10
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->c:Ljava/lang/Number;

    .line 11
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->d:Z

    .line 12
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->e:Z

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->f:Ljava/lang/Number;

    .line 34
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->skipOnBatteryLow()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Scan;->setScanOnLowBattery(Z)V

    .line 35
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->scanOnPowerConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Scan;->setScanOnCharging(Z)V

    .line 36
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isScanAppOnInstall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Scan;->setAutoScan(Z)V

    .line 37
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isPeriodicScan()Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Scan;->setPeriodicScan(Z)V

    .line 38
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPeriodicScanIntervalDays()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Scan;->setScanInterval(Ljava/lang/Number;)V

    .line 39
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPeriodicScanIsSystemScan()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Scan;->setScanType(Ljava/lang/Number;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->a:Z

    .line 9
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->b:Z

    .line 10
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->c:Ljava/lang/Number;

    .line 11
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->d:Z

    .line 12
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->e:Z

    .line 13
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->f:Ljava/lang/Number;

    .line 21
    :try_start_0
    const-string v0, "AutoScan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AutoScan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Scan;->setAutoScan(Z)V

    .line 23
    :cond_0
    const-string v0, "PeriodicScan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Scan;->setPeriodicScan(Z)V

    .line 24
    const-string v0, "ScanInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Scan;->setScanInterval(Ljava/lang/Number;)V

    .line 25
    const-string v0, "ScanOnCharging"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Scan;->setScanOnCharging(Z)V

    .line 26
    const-string v0, "ScanOnLowBattery"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Scan;->setScanOnLowBattery(Z)V

    .line 27
    const-string v0, "ScanType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Scan;->setScanType(Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getAutoScan()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->a:Z

    return v0
.end method

.method public getPeriodicScan()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->b:Z

    return v0
.end method

.method public getScanInterval()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->c:Ljava/lang/Number;

    return-object v0
.end method

.method public getScanOnCharging()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->d:Z

    return v0
.end method

.method public getScanOnLowBattery()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->e:Z

    return v0
.end method

.method public getScanType()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->f:Ljava/lang/Number;

    return-object v0
.end method

.method public setAutoScan(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->a:Z

    .line 73
    return-void
.end method

.method public setPeriodicScan(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->b:Z

    .line 81
    return-void
.end method

.method public setScanInterval(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->c:Ljava/lang/Number;

    .line 89
    return-void
.end method

.method public setScanOnCharging(Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->d:Z

    .line 97
    return-void
.end method

.method public setScanOnLowBattery(Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->e:Z

    .line 105
    return-void
.end method

.method public setScanType(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Scan;->f:Ljava/lang/Number;

    .line 113
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    :try_start_0
    const-string v1, "AutoScan"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Scan;->getAutoScan()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 56
    const-string v1, "PeriodicScan"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Scan;->getPeriodicScan()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 57
    const-string v1, "ScanInterval"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Scan;->getScanInterval()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v1, "ScanOnCharging"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Scan;->getScanOnCharging()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 59
    const-string v1, "ScanOnLowBattery"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Scan;->getScanOnLowBattery()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 60
    const-string v1, "ScanType"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Scan;->getScanType()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public writeTo(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Scan;->getScanOnLowBattery()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSkipOnBatteryLow(Z)V

    .line 45
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Scan;->getScanOnCharging()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setScanOnPowerConnected(Z)V

    .line 46
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Scan;->getAutoScan()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setScanAppOnInstall(Z)V

    .line 47
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Scan;->getScanInterval()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPeriodicScanInterval(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Scan;->getPeriodicScan()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPeriodicScan(Z)V

    .line 49
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/Scan;->getScanType()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPeriodicScanType(I)V

    .line 50
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
