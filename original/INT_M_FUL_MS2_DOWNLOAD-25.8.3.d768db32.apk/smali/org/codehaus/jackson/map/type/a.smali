.class final Lorg/codehaus/jackson/map/type/a;
.super Ljava/util/StringTokenizer;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:I

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    const-string v0, "<,>"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/a;->a:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/a;->c:Ljava/lang/String;

    .line 123
    iget v0, p0, Lorg/codehaus/jackson/map/type/a;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/map/type/a;->b:I

    .line 124
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/a;->a:Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/jackson/map/type/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreTokens()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/a;->c:Ljava/lang/String;

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/map/type/a;->c:Ljava/lang/String;

    .line 117
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/map/type/a;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/map/type/a;->b:I

    .line 118
    return-object v0

    .line 115
    :cond_0
    invoke-super {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
