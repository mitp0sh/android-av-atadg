.class public Lde/gdata/mobilesecurity/database/core/ColumnDefinition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->c:Z

    .line 12
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->d:Z

    .line 13
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->e:Z

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->f:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Column name can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Column type can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->c:Z

    .line 12
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->d:Z

    .line 13
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->e:Z

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->f:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Column name can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Column type can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->a:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->b:Ljava/lang/String;

    .line 41
    iput-boolean p3, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->c:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->c:Z

    .line 12
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->d:Z

    .line 13
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->e:Z

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->f:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Column name can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Column type can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->a:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->b:Ljava/lang/String;

    .line 58
    iput-boolean p3, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->c:Z

    .line 59
    iput-boolean p4, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->d:Z

    .line 60
    iput-boolean p5, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->e:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->c:Z

    .line 12
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->d:Z

    .line 13
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->e:Z

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->f:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Column name can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Column type can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->a:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->b:Ljava/lang/String;

    .line 79
    iput-boolean p3, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->c:Z

    .line 80
    iput-boolean p4, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->d:Z

    .line 81
    iput-boolean p5, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->e:Z

    .line 82
    if-nez p6, :cond_2

    const-string p6, ""

    :cond_2
    iput-object p6, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->f:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Lde/gdata/mobilesecurity/database/core/ColumnDefinition;)Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p1, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->a:Ljava/lang/String;

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->b:Ljava/lang/String;

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->c:Z

    iget-boolean v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->c:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->d:Z

    iget-boolean v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->f:Ljava/lang/String;

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->d:Z

    if-eqz v0, :cond_0

    const-string v0, " PRIMARY KEY"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->e:Z

    if-eqz v0, :cond_1

    const-string v0, " AUTOINCREMENT"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->c:Z

    if-nez v0, :cond_2

    const-string v0, " NOT NULL"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DEFAULT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    return-object v0

    .line 103
    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoIncrement()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->e:Z

    return v0
.end method

.method public isNullable()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->c:Z

    return v0
.end method

.method public isPrimaryKey()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->d:Z

    return v0
.end method

.method public setAutoIncrement(Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->e:Z

    .line 148
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->f:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->a:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setNullable(Z)V
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->c:Z

    .line 132
    return-void
.end method

.method public setPrimaryKey(Z)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->d:Z

    .line 140
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/ColumnDefinition;->b:Ljava/lang/String;

    .line 124
    return-void
.end method
