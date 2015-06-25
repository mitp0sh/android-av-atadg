.class Ln/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:[I

.field private c:[I

.field private d:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method

.method private static final a([II)I
    .locals 2

    .prologue
    .line 234
    div-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    .line 235
    rem-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 236
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 238
    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method public static a(Ln/d;)Ln/e;
    .locals 6

    .prologue
    .line 35
    const v0, 0x1c0001

    invoke-static {p0, v0}, Ln/c;->a(Ln/d;I)V

    .line 36
    invoke-virtual {p0}, Ln/d;->b()I

    move-result v2

    .line 37
    invoke-virtual {p0}, Ln/d;->b()I

    move-result v1

    .line 38
    invoke-virtual {p0}, Ln/d;->b()I

    move-result v3

    .line 39
    invoke-virtual {p0}, Ln/d;->b()I

    .line 40
    invoke-virtual {p0}, Ln/d;->b()I

    move-result v4

    .line 41
    invoke-virtual {p0}, Ln/d;->b()I

    move-result v0

    .line 42
    rem-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_0

    .line 44
    rem-int/lit8 v5, v0, 0x4

    rsub-int/lit8 v5, v5, 0x4

    add-int/2addr v0, v5

    .line 47
    :cond_0
    new-instance v5, Ln/e;

    invoke-direct {v5}, Ln/e;-><init>()V

    .line 48
    invoke-virtual {p0, v1}, Ln/d;->b(I)[I

    move-result-object v1

    iput-object v1, v5, Ln/e;->a:[I

    .line 49
    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {p0, v3}, Ln/d;->b(I)[I

    move-result-object v1

    iput-object v1, v5, Ln/e;->c:[I

    .line 53
    :cond_1
    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    sub-int/2addr v1, v4

    .line 54
    rem-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_3

    .line 55
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String data size is not multiple of 4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v0

    .line 53
    goto :goto_0

    .line 57
    :cond_3
    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ln/d;->b(I)[I

    move-result-object v1

    iput-object v1, v5, Ln/e;->b:[I

    .line 59
    if-eqz v0, :cond_5

    .line 60
    sub-int v0, v2, v0

    .line 61
    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    .line 62
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Style data size is not multiple of 4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_4
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ln/d;->b(I)[I

    move-result-object v0

    iput-object v0, v5, Ln/e;->d:[I

    .line 67
    :cond_5
    return-object v5
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 168
    if-nez p1, :cond_0

    move v0, v2

    .line 188
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 171
    :goto_1
    iget-object v3, p0, Ln/e;->a:[I

    array-length v3, v3

    if-eq v0, v3, :cond_5

    .line 172
    iget-object v3, p0, Ln/e;->a:[I

    aget v3, v3, v0

    .line 173
    iget-object v4, p0, Ln/e;->b:[I

    invoke-static {v4, v3}, Ln/e;->a([II)I

    move-result v5

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v5, v4, :cond_2

    .line 171
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    move v3, v1

    .line 178
    :goto_2
    if-eq v3, v5, :cond_3

    .line 179
    add-int/lit8 v4, v4, 0x2

    .line 180
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p0, Ln/e;->b:[I

    invoke-static {v7, v4}, Ln/e;->a([II)I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 184
    :cond_3
    if-ne v3, v5, :cond_1

    goto :goto_0

    .line 178
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    .line 188
    goto :goto_0
.end method

.method public a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    if-ltz p1, :cond_0

    iget-object v0, p0, Ln/e;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln/e;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 89
    :cond_1
    iget-object v0, p0, Ln/e;->a:[I

    aget v1, v0, p1

    .line 90
    iget-object v0, p0, Ln/e;->b:[I

    invoke-static {v0, v1}, Ln/e;->a([II)I

    move-result v0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    :goto_1
    if-eqz v0, :cond_2

    .line 93
    add-int/lit8 v1, v1, 0x2

    .line 94
    iget-object v3, p0, Ln/e;->b:[I

    invoke-static {v3, v1}, Ln/e;->a([II)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
