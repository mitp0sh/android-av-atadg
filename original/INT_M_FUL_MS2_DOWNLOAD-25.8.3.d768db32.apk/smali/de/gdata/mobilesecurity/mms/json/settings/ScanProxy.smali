.class public Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    .line 22
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->b:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static read(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 32
    const/4 v0, 0x0

    .line 34
    const-string v3, "SELECT batterysaver, pluggedonly, oninstall, autoscan, scanperiod, scantype FROM scanconfig where configuration = ?"

    .line 35
    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v2

    .line 36
    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 38
    if-eqz v3, :cond_5

    .line 39
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 41
    const-string v0, "scanperiod"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    mul-int/lit8 v4, v0, 0x18

    .line 42
    new-instance v5, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-direct {v5}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;-><init>()V

    const-string v0, "autoscan"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->withPeriodicScan(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v0

    const-string v5, "scantype"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->withScanType(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->withScanInterval(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v4

    const-string v0, "oninstall"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->withAutoScan(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v4

    const-string v0, "batterysaver"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->withScanOnLowBattery(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v4

    const-string v0, "pluggedonly"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->withScanOnCharging(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    .line 51
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_5
    return-object v0
.end method

.method public static readCurrent(Landroid/content/Context;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;
    .locals 3

    .prologue
    .line 90
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;-><init>()V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isPeriodicScan()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->withPeriodicScan(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPeriodicScanType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->withScanType(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPeriodicScanIntervalDays()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->withScanInterval(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isScanAppOnInstall()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->withAutoScan(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v2

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->skipOnBatteryLow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->withScanOnLowBattery(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->scanOnPowerConnected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->withScanOnCharging(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v0

    .line 101
    return-object v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public write(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 63
    const-string v0, "INSERT OR REPLACE INTO scanconfig SELECT Max(id), ?, ?, ?, ?, ?, ?, ?, ?, autoupdate, updateperiod, updateonlywlan FROM scanconfig WHERE configuration = ?"

    .line 65
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 67
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->getScanInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Check;->whether(Ljava/lang/Object;)Lde/gdata/mobilesecurity/util/Check;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/Check;->isIn([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v4, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 71
    const/16 v1, 0xf

    .line 73
    const/4 v2, 0x2

    int-to-long v6, v1

    invoke-virtual {v4, v2, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 74
    const/4 v1, 0x3

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->getPeriodicScan()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    :goto_0
    invoke-virtual {v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 75
    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 76
    const/4 v0, 0x5

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->getScanType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 77
    const/4 v2, 0x6

    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->getAutoScan()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    :goto_1
    invoke-virtual {v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 78
    const/4 v2, 0x7

    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->getScanOnLowBattery()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    :goto_2
    invoke-virtual {v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 79
    const/16 v2, 0x8

    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->getScanOnCharging()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    :goto_3
    invoke-virtual {v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 80
    const/16 v0, 0x9

    invoke-virtual {v4, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 82
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 83
    return-void

    .line 74
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 77
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 78
    :cond_3
    const-wide/16 v0, 0x1

    goto :goto_2

    .line 79
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_3
.end method

.method public writeCurrent(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->getScanOnLowBattery()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSkipOnBatteryLow(Z)V

    .line 113
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->getScanOnCharging()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setScanOnPowerConnected(Z)V

    .line 114
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->getAutoScan()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setScanAppOnInstall(Z)V

    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->getScanInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPeriodicScanInterval(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->getPeriodicScan()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPeriodicScan(Z)V

    .line 117
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;->getScanType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPeriodicScanType(I)V

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
