.class public Lde/gdata/mobilesecurity/database/core/TableDefinition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/database/core/ColumnDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->b:Z

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    .line 18
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->a:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->b:Z

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->a:Ljava/lang/String;

    .line 29
    iput-boolean p2, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->b:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/database/core/ColumnDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->b:Z

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->a:Ljava/lang/String;

    .line 42
    iput-boolean p2, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->b:Z

    .line 44
    if-nez p3, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :cond_0
    iput-object p3, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    .line 47
    return-void
.end method


# virtual methods
.method public append(Lde/gdata/mobilesecurity/database/core/ColumnDefinition;)V
    .locals 1

    .prologue
    .line 54
    if-eqz p1, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    return-void
.end method

.method public containsColumn(Lde/gdata/mobilesecurity/database/core/ColumnDefinition;)Z
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getColumns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;

    .line 80
    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->equals(Lde/gdata/mobilesecurity/database/core/ColumnDefinition;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lde/gdata/mobilesecurity/database/core/TableDefinition;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->b:Z

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->isTemporary()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v3

    .line 64
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getColumns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v2, v3

    .line 67
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getColumns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->equals(Lde/gdata/mobilesecurity/database/core/ColumnDefinition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 70
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getColumnNamesCommaSeparated()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;

    .line 93
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 95
    :cond_1
    return-object v1
.end method

.method public getColumns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/database/core/ColumnDefinition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSql(Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Creating table without columns not allowed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    const/4 v1, 0x1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " CREATE TABLE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v0, "IF NOT EXISTS "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_2

    const-string v1, ", "

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    .line 113
    goto :goto_1

    .line 108
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 111
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 115
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTemporary()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->b:Z

    return v0
.end method

.method public setColumns(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/database/core/ColumnDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->c:Ljava/util/ArrayList;

    .line 142
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->a:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setTemporary(Z)V
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/database/core/TableDefinition;->b:Z

    .line 132
    return-void
.end method
