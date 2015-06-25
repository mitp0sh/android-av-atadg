.class public final Lorg/codehaus/jackson/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final _threadEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/io/JsonStringEncoder;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final a:[C

.field private static final b:[B


# instance fields
.field protected _byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

.field protected final _quoteBuffer:[C

.field protected _textBuffer:Lorg/codehaus/jackson/util/TextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->a:[C

    .line 24
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[B

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x2

    aput-char v3, v0, v1

    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    .line 72
    return-void
.end method

.method private a(II)I
    .locals 3

    .prologue
    const v2, 0xdc00

    .line 392
    if-lt p2, v2, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_1

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private a(IILorg/codehaus/jackson/util/ByteArrayBuilder;I)I
    .locals 3

    .prologue
    const/16 v1, 0x30

    .line 365
    invoke-virtual {p3, p4}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->setCurrentSegmentLength(I)V

    .line 366
    const/16 v0, 0x5c

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 367
    if-gez p2, :cond_1

    .line 368
    const/16 v0, 0x75

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 369
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 370
    shr-int/lit8 v0, p1, 0x8

    .line 371
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 372
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[B

    and-int/lit8 v0, v0, 0xf

    aget-byte v0, v1, v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 373
    and-int/lit16 p1, p1, 0xff

    .line 378
    :goto_0
    sget-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[B

    shr-int/lit8 v1, p1, 0x4

    aget-byte v0, v0, v1

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 379
    sget-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[B

    and-int/lit8 v1, p1, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 383
    :goto_1
    invoke-virtual {p3}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->getCurrentSegmentLength()I

    move-result v0

    return v0

    .line 375
    :cond_0
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 376
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_0

    .line 381
    :cond_1
    int-to-byte v0, p2

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_1
.end method

.method private a(I[C)I
    .locals 3

    .prologue
    .line 350
    const/4 v0, 0x1

    const/16 v1, 0x75

    aput-char v1, p2, v0

    .line 352
    const/4 v0, 0x4

    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->a:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 353
    const/4 v0, 0x5

    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->a:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 354
    const/4 v0, 0x6

    return v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 400
    const v0, 0x10ffff

    if-le p1, v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    .line 404
    const v0, 0xdbff

    if-gt p1, v0, :cond_1

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(I[C)I
    .locals 2

    .prologue
    .line 359
    const/4 v0, 0x1

    int-to-char v1, p1

    aput-char v1, p2, v0

    .line 360
    const/4 v0, 0x2

    return v0
.end method

.method public static getInstance()Lorg/codehaus/jackson/io/JsonStringEncoder;
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 81
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 83
    :goto_0
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lorg/codehaus/jackson/io/JsonStringEncoder;

    invoke-direct {v0}, Lorg/codehaus/jackson/io/JsonStringEncoder;-><init>()V

    .line 85
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-object v0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/io/JsonStringEncoder;

    goto :goto_0
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/String;)[B
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 258
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 259
    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 264
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 266
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v3

    .line 267
    array-length v2, v3

    move v1, v4

    move v6, v4

    .line 270
    :goto_0
    if-ge v6, v9, :cond_f

    .line 271
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v10, v2

    move-object v2, v3

    move v3, v1

    move v1, v10

    .line 274
    :goto_1
    const/16 v5, 0x7f

    if-gt v6, v5, :cond_3

    .line 275
    if-lt v3, v1, :cond_1

    .line 276
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    .line 277
    array-length v1, v2

    move v3, v4

    .line 280
    :cond_1
    add-int/lit8 v5, v3, 0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    .line 281
    if-lt v7, v9, :cond_2

    move v0, v5

    .line 339
    :goto_2
    iget-object v1, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v0

    return-object v0

    .line 284
    :cond_2
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v3

    move v3, v5

    goto :goto_1

    .line 288
    :cond_3
    if-lt v3, v1, :cond_e

    .line 289
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    .line 290
    array-length v1, v2

    move v5, v4

    .line 293
    :goto_3
    const/16 v3, 0x800

    if-ge v6, v3, :cond_5

    .line 294
    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v8, v6, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    move v5, v6

    move v6, v7

    .line 332
    :goto_4
    if-lt v3, v1, :cond_4

    .line 333
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    .line 334
    array-length v1, v2

    move v3, v4

    .line 337
    :cond_4
    add-int/lit8 v7, v3, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    move-object v3, v2

    move v2, v1

    move v1, v7

    .line 338
    goto :goto_0

    .line 297
    :cond_5
    const v3, 0xd800

    if-lt v6, v3, :cond_6

    const v3, 0xdfff

    if-le v6, v3, :cond_8

    .line 298
    :cond_6
    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v8, v6, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    .line 299
    if-lt v3, v1, :cond_7

    .line 300
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    .line 301
    array-length v1, v2

    move v3, v4

    .line 304
    :cond_7
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    move v3, v5

    move v5, v6

    move v6, v7

    goto :goto_4

    .line 306
    :cond_8
    const v3, 0xdbff

    if-le v6, v3, :cond_9

    .line 307
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I)V

    .line 310
    :cond_9
    if-lt v7, v9, :cond_a

    .line 311
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I)V

    .line 313
    :cond_a
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v6, v3}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(II)I

    move-result v6

    .line 314
    const v3, 0x10ffff

    if-le v6, v3, :cond_b

    .line 315
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I)V

    .line 317
    :cond_b
    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v7, v6, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v2, v5

    .line 318
    if-lt v3, v1, :cond_c

    .line 319
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    .line 320
    array-length v1, v2

    move v3, v4

    .line 323
    :cond_c
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v7, v6, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    .line 324
    if-lt v5, v1, :cond_d

    .line 325
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    .line 326
    array-length v1, v2

    move v3, v4

    .line 329
    :goto_5
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    move v3, v5

    move v5, v6

    move v6, v8

    goto/16 :goto_4

    :cond_d
    move v3, v5

    goto :goto_5

    :cond_e
    move v5, v3

    goto/16 :goto_3

    :cond_f
    move v0, v1

    goto/16 :goto_2
.end method

.method public quoteAsString(Ljava/lang/String;)[C
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 102
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    .line 103
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/codehaus/jackson/util/TextBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    .line 107
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    .line 108
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v6

    .line 109
    array-length v7, v6

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    move v1, v5

    move v2, v5

    .line 115
    :goto_0
    if-ge v2, v8, :cond_4

    .line 118
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 119
    if-ge v9, v7, :cond_3

    aget v4, v6, v9

    if-eqz v4, :cond_3

    .line 132
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 133
    aget v9, v6, v2

    .line 134
    if-gez v9, :cond_5

    iget-object v9, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-direct {p0, v2, v9}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I[C)I

    move-result v2

    .line 138
    :goto_1
    add-int v9, v1, v2

    array-length v10, v3

    if-le v9, v10, :cond_6

    .line 139
    array-length v9, v3

    sub-int/2addr v9, v1

    .line 140
    if-lez v9, :cond_2

    .line 141
    iget-object v10, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-static {v10, v5, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :cond_2
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v3

    .line 144
    sub-int v1, v2, v9

    .line 145
    iget-object v2, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-static {v2, v9, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    move v2, v4

    .line 151
    goto :goto_0

    .line 122
    :cond_3
    array-length v4, v3

    if-lt v1, v4, :cond_7

    .line 123
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v3

    move v4, v5

    .line 126
    :goto_3
    add-int/lit8 v1, v4, 0x1

    aput-char v9, v3, v4

    .line 127
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v8, :cond_1

    .line 152
    :cond_4
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 153
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    return-object v0

    .line 134
    :cond_5
    iget-object v2, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-direct {p0, v9, v2}, Lorg/codehaus/jackson/io/JsonStringEncoder;->b(I[C)I

    move-result v2

    goto :goto_1

    .line 148
    :cond_6
    iget-object v9, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-static {v9, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    add-int/2addr v1, v2

    goto :goto_2

    :cond_7
    move v4, v1

    goto :goto_3
.end method

.method public quoteAsUTF8(Ljava/lang/String;)[B
    .locals 11

    .prologue
    const/16 v9, 0x7f

    const/4 v5, 0x0

    .line 162
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 163
    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 170
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v1

    move v2, v5

    move v3, v5

    .line 173
    :goto_0
    if-ge v3, v7, :cond_5

    .line 174
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v6

    .line 178
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 179
    if-gt v8, v9, :cond_2

    aget v4, v6, v8

    if-eqz v4, :cond_4

    .line 191
    :cond_2
    array-length v4, v1

    if-lt v2, v4, :cond_3

    .line 192
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v2, v5

    .line 196
    :cond_3
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 197
    if-gt v8, v9, :cond_6

    .line 198
    aget v1, v6, v8

    .line 200
    invoke-direct {p0, v8, v1, v0, v2}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(IILorg/codehaus/jackson/util/ByteArrayBuilder;I)I

    move-result v2

    .line 201
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->getCurrentSegment()[B

    move-result-object v1

    move v3, v4

    .line 202
    goto :goto_0

    .line 182
    :cond_4
    array-length v4, v1

    if-lt v2, v4, :cond_11

    .line 183
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v4, v5

    .line 186
    :goto_1
    add-int/lit8 v2, v4, 0x1

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    .line 187
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v7, :cond_1

    .line 248
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v0

    return-object v0

    .line 203
    :cond_6
    const/16 v3, 0x7ff

    if-gt v8, v3, :cond_8

    .line 204
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v8, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 205
    and-int/lit8 v2, v8, 0x3f

    or-int/lit16 v2, v2, 0x80

    move v10, v2

    move-object v2, v1

    move v1, v10

    .line 242
    :goto_2
    array-length v6, v2

    if-lt v3, v6, :cond_7

    .line 243
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    move v3, v5

    .line 246
    :cond_7
    add-int/lit8 v6, v3, 0x1

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    move-object v1, v2

    move v3, v4

    move v2, v6

    .line 247
    goto :goto_0

    .line 208
    :cond_8
    const v3, 0xd800

    if-lt v8, v3, :cond_9

    const v3, 0xdfff

    if-le v8, v3, :cond_a

    .line 209
    :cond_9
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v8, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 210
    array-length v2, v1

    if-lt v3, v2, :cond_10

    .line 211
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v2, v5

    .line 214
    :goto_3
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v8, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 215
    and-int/lit8 v2, v8, 0x3f

    or-int/lit16 v2, v2, 0x80

    move v10, v2

    move-object v2, v1

    move v1, v10

    goto :goto_2

    .line 217
    :cond_a
    const v3, 0xdbff

    if-le v8, v3, :cond_b

    .line 218
    invoke-direct {p0, v8}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I)V

    .line 221
    :cond_b
    if-lt v4, v7, :cond_c

    .line 222
    invoke-direct {p0, v8}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I)V

    .line 224
    :cond_c
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v8, v3}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(II)I

    move-result v4

    .line 225
    const v3, 0x10ffff

    if-le v4, v3, :cond_d

    .line 226
    invoke-direct {p0, v4}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I)V

    .line 228
    :cond_d
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v4, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 229
    array-length v2, v1

    if-lt v3, v2, :cond_f

    .line 230
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v2, v5

    .line 233
    :goto_4
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v4, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 234
    array-length v2, v1

    if-lt v3, v2, :cond_e

    .line 235
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v2, v5

    .line 238
    :goto_5
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 239
    and-int/lit8 v2, v4, 0x3f

    or-int/lit16 v2, v2, 0x80

    move v4, v6

    move-object v10, v1

    move v1, v2

    move-object v2, v10

    goto/16 :goto_2

    :cond_e
    move v2, v3

    goto :goto_5

    :cond_f
    move v2, v3

    goto :goto_4

    :cond_10
    move v2, v3

    goto :goto_3

    :cond_11
    move v4, v2

    goto/16 :goto_1
.end method
