.class public abstract Lde/gdata/mobilesecurity/database/MapBackedData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x10b7c7a97bc8e41cL


# instance fields
.field m_values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    .line 31
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    .line 33
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 35
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    :try_start_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v3

    .line 39
    iget-object v3, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 41
    :catch_1
    move-exception v0

    .line 42
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method protected get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getBlob(Ljava/lang/String;)[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 112
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/database/MapBackedData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    instance-of v2, v0, [B

    if-eqz v2, :cond_1

    .line 108
    check-cast v0, [B

    check-cast v0, [B

    goto :goto_0

    .line 109
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 110
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 112
    goto :goto_0
.end method

.method protected abstract getDataFields()[Ljava/lang/String;
.end method

.method protected getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 97
    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 86
    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/database/MapBackedData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 7

    .prologue
    .line 48
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 49
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/MapBackedData;->getDataFields()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    .line 50
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/MapBackedData;->m_values:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 49
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_0
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 53
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 54
    :cond_1
    instance-of v6, v0, [B

    if-eqz v6, :cond_2

    .line 55
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 56
    :cond_2
    instance-of v6, v0, Ljava/lang/Long;

    if-eqz v6, :cond_3

    .line 57
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 58
    :cond_3
    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 59
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 61
    :cond_4
    const/4 v0, 0x7

    const-string v5, "GDATA/DATABASE"

    const-string v6, "Unknown data type"

    invoke-static {v0, v5, v6}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    :cond_5
    return-object v2
.end method
