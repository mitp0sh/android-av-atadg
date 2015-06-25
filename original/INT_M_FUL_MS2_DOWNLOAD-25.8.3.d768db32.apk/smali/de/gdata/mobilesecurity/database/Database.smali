.class public abstract Lde/gdata/mobilesecurity/database/Database;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/Database;->a:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/Database;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getDatabaseName()Ljava/lang/String;
.end method

.method protected abstract getDatabaseVersion()I
.end method

.method public getOpenHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 6

    .prologue
    .line 27
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/Database;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/Database;->a:Landroid/content/Context;

    .line 30
    :try_start_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/database/Database;->a:Landroid/content/Context;

    iget-object v2, p0, Lde/gdata/mobilesecurity/database/Database;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 34
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/database/a;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/Database;->getDatabaseVersion()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/database/a;-><init>(Lde/gdata/mobilesecurity/database/Database;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/Database;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 47
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/Database;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/Database;->getOpenHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTables()[Lde/gdata/mobilesecurity/database/Table;
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/Database;->getOpenHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/Database;->getTables()[Lde/gdata/mobilesecurity/database/Table;

    move-result-object v1

    .line 61
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 62
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/database/Table;->generateCreateCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 64
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method protected onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 13

    .prologue
    .line 82
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/Database;->getTables()[Lde/gdata/mobilesecurity/database/Table;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v10, :cond_4

    aget-object v11, v9, v8

    .line 83
    invoke-virtual {v11}, Lde/gdata/mobilesecurity/database/Table;->getName()Ljava/lang/String;

    move-result-object v12

    .line 84
    const-string v1, "sqlite_master"

    const/4 v2, 0x0

    const-string v3, " type = \'table\' and name = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v12, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 86
    invoke-virtual {v11}, Lde/gdata/mobilesecurity/database/Table;->getColumns()[Lde/gdata/mobilesecurity/database/Column;

    move-result-object v2

    .line 87
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {v11}, Lde/gdata/mobilesecurity/database/Table;->generateCreateCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 82
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 90
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 91
    array-length v4, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v2, v0

    .line 92
    invoke-interface {v5}, Lde/gdata/mobilesecurity/database/Column;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_2
    const-string v0, "PRAGMA table_info(%s);"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 97
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 101
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/Column;

    .line 102
    const-string v3, "ALTER TABLE %s add %s %s %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Lde/gdata/mobilesecurity/database/Column;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-interface {v0}, Lde/gdata/mobilesecurity/database/Column;->getFieldType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-interface {v0}, Lde/gdata/mobilesecurity/database/Column;->getConstraints()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3

    .line 110
    :cond_4
    return-void
.end method
