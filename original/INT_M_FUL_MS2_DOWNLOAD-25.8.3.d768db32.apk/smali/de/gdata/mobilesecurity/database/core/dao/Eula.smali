.class public Lde/gdata/mobilesecurity/database/core/dao/Eula;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAllEULAs(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    const-string v0, "deleteAllEULAs"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 52
    const-string v1, "eula"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    const-string v0, "deleteAllEULAs"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static deleteEULAs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 63
    const-string v0, "deleteEULAs"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    const-string v1, "eula"

    const-string v2, "language= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    const-string v0, "deleteEULAs"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static getCustomEulaBody(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 23
    .line 24
    const-string v0, "getCustomEulaBody"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 26
    const-string v2, "eula"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "name"

    aput-object v6, v3, v4

    const-string v4, "language"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "content"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "content_type"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "language="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 33
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "content"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 35
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 41
    :goto_0
    const-string v0, "getCustomEulaBody"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 42
    return-object v5

    .line 38
    :cond_1
    const-string v0, "getCustomEulaBody: query failed, cursor is null"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
