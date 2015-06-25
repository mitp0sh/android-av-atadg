.class public Lde/gdata/mobilesecurity/mms/json/settings/WebProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/settings/WebProxy;->b:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/json/settings/WebProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    .line 18
    return-void
.end method

.method public static read(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47
    const/4 v0, 0x0

    .line 49
    const-string v3, "SELECT enabled, wlanonly FROM antiphishingconfig where configuration = ?"

    .line 50
    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v2

    .line 51
    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 53
    if-eqz v3, :cond_3

    .line 54
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    new-instance v4, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    invoke-direct {v4}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;-><init>()V

    const-string v0, "enabled"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->withEnableGuard(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    move-result-object v4

    const-string v0, "wlanonly"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->withEnableGuardOnlyWlan(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    move-result-object v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    .line 61
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_3
    return-object v0
.end method

.method public static readCurrent(Landroid/content/Context;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v1, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isWebshieldActivated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->withEnableGuard(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isWebshieldOnlyWlan()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->withEnableGuardOnlyWlan(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    move-result-object v0

    .line 79
    return-object v0
.end method


# virtual methods
.method public write(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    .line 24
    const-string v0, "INSERT OR REPLACE INTO antiphishingconfig  SELECT Max(id), ?, ? , \'reg:.*\', \'cat:malware\', ?, ? FROM antiphishingconfig WHERE configuration = ?"

    .line 28
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 30
    const/4 v0, 0x0

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v6, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 32
    const/4 v1, 0x2

    int-to-long v8, v0

    invoke-virtual {v6, v1, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 33
    const/4 v7, 0x3

    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/WebProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->getEnableGuard()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {v6, v7, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 34
    const/4 v0, 0x4

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/WebProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->getEnableGuardOnlyWlan()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v6, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 35
    const/4 v0, 0x5

    invoke-virtual {v6, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 37
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 38
    return-void

    :cond_0
    move-wide v0, v4

    .line 33
    goto :goto_0

    :cond_1
    move-wide v2, v4

    .line 34
    goto :goto_1
.end method

.method public writeCurrent(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/WebProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 90
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/WebProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->getEnableGuard()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWebshieldActivated(Z)V

    .line 91
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/WebProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->getEnableGuardOnlyWlan()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWebshieldOnlyWlan(Z)V

    goto :goto_0
.end method
