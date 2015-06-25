.class public Lde/gdata/mobilesecurity/database/core/SqliteMaster;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "sqlite_sequence"

    sput-object v0, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->a:Ljava/lang/String;

    .line 16
    const-string v0, "android_metadata"

    sput-object v0, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 24
    const-string v0, "SELECT name FROM sqlite_master WHERE type = \'table\'"

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    if-eqz v0, :cond_2

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    sget-object v3, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    sget-object v3, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_2
    return-object v1
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE name = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    aput-object p1, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 78
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 81
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 77
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 191
    invoke-static {p1}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getColumns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;

    .line 194
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-static {p0, p1, p2}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->hasColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALTER TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ADD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 113
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v9

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA table_info("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 116
    new-instance v11, Lde/gdata/mobilesecurity/database/core/TableDefinition;

    invoke-direct {v11, p1}, Lde/gdata/mobilesecurity/database/core/TableDefinition;-><init>(Ljava/lang/String;)V

    .line 118
    if-eqz v10, :cond_6

    .line 119
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_2

    move v3, v7

    .line 123
    :goto_1
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v7, :cond_3

    move v4, v7

    .line 124
    :goto_2
    if-eqz v4, :cond_4

    move v5, v9

    .line 125
    :goto_3
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 127
    const-string v2, "bool"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "boolean"

    .line 128
    :cond_0
    const-string v2, "int"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "integer"

    .line 129
    :cond_1
    const-string v2, "long"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "integer"

    .line 131
    :goto_4
    new-instance v0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;

    invoke-direct/range {v0 .. v6}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-virtual {v11, v0}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->append(Lde/gdata/mobilesecurity/database/core/ColumnDefinition;)V

    goto :goto_0

    :cond_2
    move v3, v8

    .line 122
    goto :goto_1

    :cond_3
    move v4, v8

    .line 123
    goto :goto_2

    :cond_4
    move v5, v8

    .line 124
    goto :goto_3

    .line 134
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_6
    return-object v11

    :cond_7
    move-object v2, v0

    goto :goto_4
.end method

.method public static dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 179
    invoke-static {p0}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public static extendSchemaAndTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinitions()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 270
    invoke-static {p0}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->getTables(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v4

    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/core/TableDefinition;

    .line 273
    const/4 v1, 0x0

    .line 275
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/database/core/TableDefinition;

    .line 276
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 279
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->equals(Lde/gdata/mobilesecurity/database/core/TableDefinition;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extendSchemaAndTables: extend table "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->extendTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lde/gdata/mobilesecurity/database/core/TableDefinition;)V

    :cond_1
    move v1, v3

    :goto_2
    move v2, v1

    .line 276
    goto :goto_1

    .line 285
    :cond_2
    if-nez v2, :cond_0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendSchemaAndTables: create table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public static extendTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lde/gdata/mobilesecurity/database/core/TableDefinition;)V
    .locals 4

    .prologue
    .line 207
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v3

    .line 210
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getColumns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 212
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getColumns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 213
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getColumns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getColumns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->equals(Lde/gdata/mobilesecurity/database/core/ColumnDefinition;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot append columns: first columns differ already."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ADD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getColumns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 222
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot append columns: table names do not match."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_3
    return-void
.end method

.method public static getTables(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/database/core/TableDefinition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-static {p0}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_0
    return-object v1
.end method

.method public static hasColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA table_info("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 97
    :goto_0
    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_1
    return v0
.end method

.method public static isTableCreated(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    .line 51
    const-string v1, "SELECT * FROM sqlite_master WHERE type = \'table\' AND name = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 57
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_0
    return v0
.end method

.method public static isTableSubSet(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/database/core/TableDefinition;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/database/core/TableDefinition;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/core/TableDefinition;

    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/database/core/TableDefinition;

    .line 151
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 154
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->equals(Lde/gdata/mobilesecurity/database/core/TableDefinition;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :goto_1
    return v3

    :cond_1
    move v1, v4

    :goto_2
    move v2, v1

    .line 151
    goto :goto_0

    .line 157
    :cond_2
    if-nez v2, :cond_0

    goto :goto_1

    :cond_3
    move v3, v4

    .line 160
    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public static migrateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lde/gdata/mobilesecurity/database/core/TableDefinition;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v3

    .line 235
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 236
    const-string v0, "DROP TABLE IF EXISTS tmp_migrate;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " RENAME TO tmp_migrate;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getColumns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;

    .line 244
    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->containsColumn(Lde/gdata/mobilesecurity/database/core/ColumnDefinition;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 245
    if-nez v2, :cond_0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 246
    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v2

    :goto_3
    move-object v2, v1

    move-object v1, v0

    .line 253
    goto :goto_0

    .line 245
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 246
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 248
    :cond_2
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 249
    if-nez v2, :cond_3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    .line 251
    :goto_4
    if-nez v1, :cond_4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v1, v2

    goto :goto_3

    .line 249
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 251
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 255
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM tmp_migrate;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    const-string v0, "DROP TABLE tmp_migrate;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 262
    return-void

    .line 260
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot append columns: table names do not match."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_3
.end method
