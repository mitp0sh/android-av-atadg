.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    .line 53
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    .line 54
    add-int/lit8 v0, p1, 0x1f

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    .line 55
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    .line 56
    return-void
.end method

.method private constructor <init>(III[I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    .line 60
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    .line 61
    iput p3, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    .line 62
    iput-object p4, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    .line 63
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    array-length v2, v0

    move v0, v1

    .line 104
    :goto_0
    if-ge v0, v2, :cond_0

    .line 105
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aput v1, v3, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitMatrix;
    .locals 5

    .prologue
    .line 332
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(III[I)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 300
    instance-of v1, p1, Lcom/google/zxing/common/BitMatrix;

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 303
    :cond_1
    check-cast p1, Lcom/google/zxing/common/BitMatrix;

    .line 304
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    iget-object v2, p1, Lcom/google/zxing/common/BitMatrix;->d:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public flip(II)V
    .locals 5

    .prologue
    .line 95
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int/2addr v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 96
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 97
    return-void
.end method

.method public get(II)Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int/2addr v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 74
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aget v0, v1, v0

    and-int/lit8 v1, p1, 0x1f

    ushr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBottomRightOnBit()[I
    .locals 5

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 264
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 265
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 267
    :cond_0
    if-gez v0, :cond_1

    .line 268
    const/4 v0, 0x0

    .line 281
    :goto_1
    return-object v0

    .line 271
    :cond_1
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    div-int v1, v0, v1

    .line 272
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    rem-int v2, v0, v2

    mul-int/lit8 v2, v2, 0x20

    .line 274
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aget v3, v3, v0

    .line 275
    const/16 v0, 0x1f

    .line 276
    :goto_2
    ushr-int v4, v3, v0

    if-nez v4, :cond_2

    .line 277
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 279
    :cond_2
    add-int/2addr v2, v0

    .line 281
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    goto :goto_1
.end method

.method public getEnclosingRectangle()[I
    .locals 10

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 190
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    .line 191
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    move v4, v2

    move v5, v3

    move v3, v0

    move v2, v0

    move v0, v1

    .line 195
    :goto_0
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    if-ge v0, v6, :cond_5

    move v6, v1

    .line 196
    :goto_1
    iget v7, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    if-ge v6, v7, :cond_4

    .line 197
    iget-object v7, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    iget v8, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v6

    aget v8, v7, v8

    .line 198
    if-eqz v8, :cond_a

    .line 199
    if-ge v0, v4, :cond_0

    move v4, v0

    .line 202
    :cond_0
    if-le v0, v2, :cond_1

    move v2, v0

    .line 205
    :cond_1
    mul-int/lit8 v7, v6, 0x20

    if-ge v7, v5, :cond_9

    move v7, v1

    .line 207
    :goto_2
    rsub-int/lit8 v9, v7, 0x1f

    shl-int v9, v8, v9

    if-nez v9, :cond_2

    .line 208
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 210
    :cond_2
    mul-int/lit8 v9, v6, 0x20

    add-int/2addr v9, v7

    if-ge v9, v5, :cond_9

    .line 211
    mul-int/lit8 v5, v6, 0x20

    add-int/2addr v5, v7

    move v7, v5

    .line 214
    :goto_3
    mul-int/lit8 v5, v6, 0x20

    add-int/lit8 v5, v5, 0x1f

    if-le v5, v3, :cond_8

    .line 215
    const/16 v5, 0x1f

    .line 216
    :goto_4
    ushr-int v9, v8, v5

    if-nez v9, :cond_3

    .line 217
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 219
    :cond_3
    mul-int/lit8 v8, v6, 0x20

    add-int/2addr v8, v5

    if-le v8, v3, :cond_8

    .line 220
    mul-int/lit8 v3, v6, 0x20

    add-int/2addr v3, v5

    move v5, v4

    move v4, v3

    move v3, v2

    .line 196
    :goto_5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    goto :goto_1

    .line 195
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_5
    sub-int/2addr v3, v5

    .line 228
    sub-int/2addr v2, v4

    .line 230
    if-ltz v3, :cond_6

    if-gez v2, :cond_7

    .line 231
    :cond_6
    const/4 v0, 0x0

    .line 234
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v5, v0, v1

    const/4 v1, 0x1

    aput v4, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    goto :goto_6

    :cond_8
    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_5

    :cond_9
    move v7, v5

    goto :goto_3

    :cond_a
    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_5
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 5

    .prologue
    .line 146
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    if-ge v0, v1, :cond_1

    .line 147
    :cond_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    invoke-direct {p2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 151
    :goto_0
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int v1, p1, v0

    .line 152
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    if-ge v0, v2, :cond_2

    .line 153
    mul-int/lit8 v2, v0, 0x20

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_0

    .line 155
    :cond_2
    return-object p2
.end method

.method public getTopLeftOnBit()[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 243
    move v0, v1

    .line 244
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 248
    const/4 v0, 0x0

    .line 259
    :goto_1
    return-object v0

    .line 250
    :cond_1
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    div-int v2, v0, v2

    .line 251
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    rem-int v3, v0, v3

    mul-int/lit8 v3, v3, 0x20

    .line 253
    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aget v4, v4, v0

    move v0, v1

    .line 255
    :goto_2
    rsub-int/lit8 v5, v0, 0x1f

    shl-int v5, v4, v5

    if-nez v5, :cond_2

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 258
    :cond_2
    add-int/2addr v3, v0

    .line 259
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    .line 311
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    add-int/2addr v0, v1

    .line 312
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    add-int/2addr v0, v1

    .line 313
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    add-int/2addr v0, v1

    .line 314
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    return v0
.end method

.method public rotate180()V
    .locals 5

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 171
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 172
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 173
    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 174
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_0

    .line 175
    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v2

    .line 176
    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4, v1}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v1

    .line 177
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 178
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 179
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 180
    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 5

    .prologue
    .line 84
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int/2addr v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 85
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 86
    return-void
.end method

.method public setRegion(IIII)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 118
    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    if-lt p4, v8, :cond_2

    if-ge p3, v8, :cond_3

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_3
    add-int v1, p1, p3

    .line 125
    add-int v2, p2, p4

    .line 126
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    if-gt v2, v0, :cond_4

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    if-le v1, v0, :cond_6

    .line 127
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The region must fit inside the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_5
    add-int/lit8 p2, p2, 0x1

    :cond_6
    if-ge p2, v2, :cond_7

    .line 130
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int v3, p2, v0

    move v0, p1

    .line 131
    :goto_0
    if-ge v0, v1, :cond_5

    .line 132
    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    div-int/lit8 v5, v0, 0x20

    add-int/2addr v5, v3

    aget v6, v4, v5

    and-int/lit8 v7, v0, 0x1f

    shl-int v7, v8, v7

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_7
    return-void
.end method

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .locals 5

    .prologue
    .line 163
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int/2addr v3, p1

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 321
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 322
    :goto_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    if-ge v2, v3, :cond_1

    .line 323
    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "X "

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 323
    :cond_0
    const-string v3, "  "

    goto :goto_2

    .line 325
    :cond_1
    const/16 v2, 0xa

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
