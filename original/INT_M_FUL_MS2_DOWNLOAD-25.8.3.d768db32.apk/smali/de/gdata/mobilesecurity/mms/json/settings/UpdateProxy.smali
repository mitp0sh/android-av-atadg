.class public Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;->b:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    .line 19
    return-void
.end method

.method public static read(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 28
    const/4 v0, 0x0

    .line 30
    const-string v3, "SELECT autoupdate, updateperiod, updateonlywlan FROM scanconfig where configuration = ?"

    .line 31
    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v2

    .line 32
    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 34
    if-eqz v3, :cond_3

    .line 35
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    const-string v0, "updateperiod"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    mul-int/lit8 v4, v0, 0x18

    .line 38
    new-instance v5, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    invoke-direct {v5}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;-><init>()V

    const-string v0, "autoupdate"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->withAutoUpdate(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->withInterval(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    move-result-object v4

    const-string v0, "updateonlywlan"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->withAutoUpdateOnlyWlan(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    move-result-object v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    .line 44
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_3
    return-object v0
.end method

.method public static readCurrent(Landroid/content/Context;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v1, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isPeriodicUpdate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->withAutoUpdate(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isPeriodicUpdateWifiOnly()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->withAutoUpdateOnlyWlan(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPeriodicUpdateIntervalDays()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->withInterval(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    move-result-object v0

    .line 85
    return-object v0
.end method


# virtual methods
.method public write(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 56
    const-string v0, "INSERT OR REPLACE INTO scanconfig SELECT Max(id), ?, permissions, autoscan, scanperiod, scantype, oninstall, batterysaver, pluggedonly, ?, ?, ? FROM scanconfig WHERE configuration = ?"

    .line 58
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->getInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Check;->whether(Ljava/lang/Object;)Lde/gdata/mobilesecurity/util/Check;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/Check;->isIn([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 63
    :cond_0
    invoke-virtual {v4, v6, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 64
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->getAutoUpdate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x1

    :goto_0
    invoke-virtual {v4, v8, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v4, v7, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->getAutoUpdateOnlyWlan()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    :goto_1
    invoke-virtual {v4, v9, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 67
    invoke-virtual {v4, v10, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 69
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 70
    return-void

    .line 64
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 66
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public writeCurrent(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 96
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->getAutoUpdate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPeriodicUpdate(Z)V

    .line 97
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->getAutoUpdateOnlyWlan()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPeriodicUpdateWifiOnly(Z)V

    .line 98
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->getInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPeriodicUpdateInterval(Ljava/lang/String;)V

    goto :goto_0
.end method
