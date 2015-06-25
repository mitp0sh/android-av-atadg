.class public abstract Lde/gdata/mobilesecurity/database/Table;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field m_columns:[Lde/gdata/mobilesecurity/database/Column;

.field m_name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/Table;->m_columns:[Lde/gdata/mobilesecurity/database/Column;

    .line 52
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/Table;->m_name:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method protected extractColumns(Ljava/lang/Class;)[Lde/gdata/mobilesecurity/database/Column;
    .locals 8

    .prologue
    .line 16
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/Table;->m_columns:[Lde/gdata/mobilesecurity/database/Column;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/database/Table;->m_columns:[Lde/gdata/mobilesecurity/database/Column;

    .line 47
    :goto_0
    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v2, v1

    .line 22
    :try_start_0
    const-class v0, Lde/gdata/mobilesecurity/database/Column$Type;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Lde/gdata/mobilesecurity/database/TextColumn;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v0, v5, v6}, Lde/gdata/mobilesecurity/database/TextColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 25
    :cond_1
    const-class v0, Lde/gdata/mobilesecurity/database/Column$Type;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/Column$Type;

    .line 26
    invoke-interface {v0}, Lde/gdata/mobilesecurity/database/Column$Type;->value()Lde/gdata/mobilesecurity/database/Column$ColumnType;

    move-result-object v6

    .line 27
    sget-object v7, Lde/gdata/mobilesecurity/database/b;->a:[I

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/database/Column$ColumnType;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 29
    :pswitch_0
    new-instance v6, Lde/gdata/mobilesecurity/database/IntColumn;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lde/gdata/mobilesecurity/database/Column$Type;->defaults()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Lde/gdata/mobilesecurity/database/IntColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 40
    :catch_0
    move-exception v0

    goto :goto_2

    .line 32
    :pswitch_1
    new-instance v6, Lde/gdata/mobilesecurity/database/TextColumn;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lde/gdata/mobilesecurity/database/Column$Type;->defaults()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Lde/gdata/mobilesecurity/database/TextColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :pswitch_2
    new-instance v6, Lde/gdata/mobilesecurity/database/BlobColumn;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lde/gdata/mobilesecurity/database/Column$Type;->defaults()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Lde/gdata/mobilesecurity/database/BlobColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lde/gdata/mobilesecurity/database/Column;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/gdata/mobilesecurity/database/Column;

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/Table;->m_columns:[Lde/gdata/mobilesecurity/database/Column;

    .line 47
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/Table;->m_columns:[Lde/gdata/mobilesecurity/database/Column;

    goto/16 :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public generateCreateCode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x1000

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    const-string v0, "create table "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/Table;->getPrimaryKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/Table;->getColumns()[Lde/gdata/mobilesecurity/database/Column;

    move-result-object v2

    .line 87
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 88
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/Table;->getTableContstraints()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getColumns()[Lde/gdata/mobilesecurity/database/Column;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/Table;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method protected getPrimaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "id integer primary key autoincrement "

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/Table;->getColumns()[Lde/gdata/mobilesecurity/database/Column;

    move-result-object v1

    .line 64
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 66
    aget-object v3, v1, v0

    invoke-interface {v3}, Lde/gdata/mobilesecurity/database/Column;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-object v2
.end method

.method public getTableContstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, ""

    return-object v0
.end method
