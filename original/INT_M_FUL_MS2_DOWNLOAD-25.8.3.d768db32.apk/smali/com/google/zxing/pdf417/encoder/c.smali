.class final Lcom/google/zxing/pdf417/encoder/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v3, 0x80

    const/16 v2, 0x1e

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 116
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/encoder/c;->a:[B

    .line 123
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/encoder/c;->b:[B

    .line 127
    new-array v0, v3, [B

    sput-object v0, Lcom/google/zxing/pdf417/encoder/c;->c:[B

    .line 128
    new-array v0, v3, [B

    sput-object v0, Lcom/google/zxing/pdf417/encoder/c;->d:[B

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Cp437"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "IBM437"

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/encoder/c;->e:Ljava/util/List;

    .line 137
    sget-object v0, Lcom/google/zxing/pdf417/encoder/c;->c:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    move v0, v1

    .line 138
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/encoder/c;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 139
    sget-object v2, Lcom/google/zxing/pdf417/encoder/c;->a:[B

    aget-byte v2, v2, v0

    .line 140
    if-lez v2, :cond_0

    .line 141
    sget-object v3, Lcom/google/zxing/pdf417/encoder/c;->c:[B

    aput-byte v0, v3, v2

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    .line 144
    :cond_1
    sget-object v0, Lcom/google/zxing/pdf417/encoder/c;->d:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 145
    :goto_1
    sget-object v0, Lcom/google/zxing/pdf417/encoder/c;->b:[B

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 146
    sget-object v0, Lcom/google/zxing/pdf417/encoder/c;->b:[B

    aget-byte v0, v0, v1

    .line 147
    if-lez v0, :cond_2

    .line 148
    sget-object v2, Lcom/google/zxing/pdf417/encoder/c;->d:[B

    aput-byte v1, v2, v0

    .line 145
    :cond_2
    add-int/lit8 v0, v1, 0x1

    int-to-byte v1, v0

    goto :goto_1

    .line 151
    :cond_3
    return-void

    .line 116
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 123
    nop

    :array_1
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .locals 4

    .prologue
    .line 493
    const/4 v1, 0x0

    .line 494
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 496
    if-ge p1, v2, :cond_1

    .line 497
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 498
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/c;->a(C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ge p1, v2, :cond_1

    .line 499
    add-int/lit8 v1, v1, 0x1

    .line 500
    add-int/lit8 p1, p1, 0x1

    .line 501
    if-ge p1, v2, :cond_0

    .line 502
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 506
    :cond_1
    return v1
.end method

.method private static a(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .locals 9

    .prologue
    const/16 v8, 0x1c

    const/16 v7, 0x1b

    const/4 v2, 0x1

    const/16 v6, 0x1d

    const/4 v1, 0x0

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 277
    :cond_0
    :goto_0
    add-int v3, p1, v0

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 278
    packed-switch p4, :pswitch_data_0

    .line 353
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/c;->e(C)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 354
    sget-object v4, Lcom/google/zxing/pdf417/encoder/c;->d:[B

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 362
    if-lt v0, p2, :cond_0

    .line 367
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move v3, v1

    move v4, v1

    .line 368
    :goto_2
    if-ge v3, v6, :cond_10

    .line 369
    rem-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_e

    move v0, v2

    .line 370
    :goto_3
    if-eqz v0, :cond_f

    .line 371
    mul-int/lit8 v0, v4, 0x1e

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    add-int/2addr v0, v4

    int-to-char v0, v0

    .line 372
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_2

    .line 280
    :pswitch_0
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/c;->b(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 281
    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 282
    const/16 v3, 0x1a

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    :cond_1
    add-int/lit8 v3, v3, -0x41

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 287
    :cond_2
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/c;->c(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 289
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p4, v2

    .line 290
    goto :goto_0

    .line 291
    :cond_3
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/c;->d(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 292
    const/4 p4, 0x2

    .line 293
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 296
    :cond_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    sget-object v4, Lcom/google/zxing/pdf417/encoder/c;->d:[B

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    :pswitch_1
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/c;->c(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 304
    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 305
    const/16 v3, 0x1a

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 307
    :cond_5
    add-int/lit8 v3, v3, -0x61

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 310
    :cond_6
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/c;->b(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 311
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v3, v3, -0x41

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 315
    :cond_7
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/c;->d(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 316
    const/4 p4, 0x2

    .line 317
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 320
    :cond_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    sget-object v4, Lcom/google/zxing/pdf417/encoder/c;->d:[B

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 327
    :pswitch_2
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/c;->d(C)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 328
    sget-object v4, Lcom/google/zxing/pdf417/encoder/c;->c:[B

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 330
    :cond_9
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/c;->b(C)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 332
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p4, v1

    .line 333
    goto/16 :goto_0

    .line 334
    :cond_a
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/c;->c(C)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 336
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p4, v2

    .line 337
    goto/16 :goto_0

    .line 339
    :cond_b
    add-int v4, p1, v0

    add-int/lit8 v4, v4, 0x1

    if-ge v4, p2, :cond_c

    .line 340
    add-int v4, p1, v0

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 341
    invoke-static {v4}, Lcom/google/zxing/pdf417/encoder/c;->e(C)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 342
    const/4 p4, 0x3

    .line 343
    const/16 v3, 0x19

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 347
    :cond_c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    sget-object v4, Lcom/google/zxing/pdf417/encoder/c;->d:[B

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 357
    :cond_d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p4, v1

    .line 358
    goto/16 :goto_0

    :cond_e
    move v0, v1

    .line 369
    goto/16 :goto_3

    .line 374
    :cond_f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    goto/16 :goto_4

    .line 377
    :cond_10
    rem-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_11

    .line 378
    mul-int/lit8 v0, v4, 0x1e

    add-int/lit8 v0, v0, 0x1d

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    :cond_11
    return p4

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/CharSequence;[BI)I
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0xd

    const/4 v6, 0x5

    const/4 v1, 0x0

    .line 557
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v3, p2

    .line 559
    :goto_0
    if-ge v3, v4, :cond_7

    .line 560
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v2, v1

    .line 563
    :goto_1
    if-ge v2, v7, :cond_0

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/c;->a(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 564
    add-int/lit8 v2, v2, 0x1

    .line 566
    add-int v5, v3, v2

    .line 567
    if-lt v5, v4, :cond_1

    .line 572
    :cond_0
    if-lt v2, v7, :cond_2

    .line 573
    sub-int v0, v3, p2

    .line 597
    :goto_2
    return v0

    .line 570
    :cond_1
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    move v2, v0

    move v0, v1

    .line 576
    :goto_3
    if-ge v0, v6, :cond_3

    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/c;->f(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 577
    add-int/lit8 v0, v0, 0x1

    .line 578
    add-int v2, v3, v0

    .line 579
    if-lt v2, v4, :cond_4

    .line 584
    :cond_3
    if-lt v0, v6, :cond_5

    .line 585
    sub-int v0, v3, p2

    goto :goto_2

    .line 582
    :cond_4
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_3

    .line 587
    :cond_5
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 592
    aget-byte v2, p1, v3

    if-ne v2, v8, :cond_6

    if-eq v0, v8, :cond_6

    .line 593
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-encodable character detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Unicode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 596
    goto :goto_0

    .line 597
    :cond_7
    sub-int v0, v3, p2

    goto :goto_2
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0x386

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/zxing/pdf417/encoder/c;->e:Ljava/util/List;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    invoke-static {v0, v7}, Lcom/google/zxing/pdf417/encoder/c;->a(ILjava/lang/StringBuilder;)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 181
    const/4 v0, 0x0

    .line 182
    sget-object v1, Lcom/google/zxing/pdf417/encoder/Compaction;->TEXT:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v1, :cond_2

    .line 183
    invoke-static {p0, v4, v8, v7, v4}, Lcom/google/zxing/pdf417/encoder/c;->a(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    .line 236
    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_2
    sget-object v1, Lcom/google/zxing/pdf417/encoder/Compaction;->BYTE:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v1, :cond_3

    .line 186
    invoke-static {p0, p2}, Lcom/google/zxing/pdf417/encoder/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 187
    array-length v1, v0

    invoke-static {v0, v4, v1, v2, v7}, Lcom/google/zxing/pdf417/encoder/c;->a([BIIILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 189
    :cond_3
    sget-object v1, Lcom/google/zxing/pdf417/encoder/Compaction;->NUMERIC:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v1, :cond_4

    .line 190
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {p0, v4, v8, v7}, Lcom/google/zxing/pdf417/encoder/c;->a(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_0

    :cond_4
    move v1, v4

    move v3, v4

    move v5, v4

    .line 195
    :goto_1
    if-ge v5, v8, :cond_1

    .line 196
    invoke-static {p0, v5}, Lcom/google/zxing/pdf417/encoder/c;->a(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 197
    const/16 v9, 0xd

    if-lt v6, v9, :cond_5

    .line 198
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    const/4 v1, 0x2

    .line 201
    invoke-static {p0, v5, v6, v7}, Lcom/google/zxing/pdf417/encoder/c;->a(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 202
    add-int v3, v5, v6

    move v5, v3

    move v3, v4

    goto :goto_1

    .line 204
    :cond_5
    invoke-static {p0, v5}, Lcom/google/zxing/pdf417/encoder/c;->b(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 205
    const/4 v10, 0x5

    if-ge v9, v10, :cond_6

    if-ne v6, v8, :cond_8

    .line 206
    :cond_6
    if-eqz v1, :cond_7

    .line 207
    const/16 v1, 0x384

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v4

    move v3, v4

    .line 211
    :cond_7
    invoke-static {p0, v5, v9, v7, v3}, Lcom/google/zxing/pdf417/encoder/c;->a(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v3

    .line 212
    add-int/2addr v5, v9

    goto :goto_1

    .line 214
    :cond_8
    if-nez v0, :cond_9

    .line 215
    invoke-static {p0, p2}, Lcom/google/zxing/pdf417/encoder/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 217
    :cond_9
    invoke-static {p0, v0, v5}, Lcom/google/zxing/pdf417/encoder/c;->a(Ljava/lang/CharSequence;[BI)I

    move-result v6

    .line 218
    if-nez v6, :cond_a

    move v6, v2

    .line 221
    :cond_a
    if-ne v6, v2, :cond_b

    if-nez v1, :cond_b

    .line 223
    invoke-static {v0, v5, v2, v4, v7}, Lcom/google/zxing/pdf417/encoder/c;->a([BIIILjava/lang/StringBuilder;)V

    .line 230
    :goto_2
    add-int/2addr v5, v6

    goto :goto_1

    .line 226
    :cond_b
    invoke-static {v0, v5, v6, v1, v7}, Lcom/google/zxing/pdf417/encoder/c;->a([BIIILjava/lang/StringBuilder;)V

    move v1, v2

    move v3, v4

    .line 228
    goto :goto_2
.end method

.method private static a(ILjava/lang/StringBuilder;)V
    .locals 3

    .prologue
    const v1, 0xc5f94

    .line 601
    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-ge p0, v0, :cond_0

    .line 602
    const/16 v0, 0x39f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    int-to-char v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    :goto_0
    return-void

    .line 604
    :cond_0
    if-ge p0, v1, :cond_1

    .line 605
    const/16 v0, 0x39e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 606
    div-int/lit16 v0, p0, 0x384

    add-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    rem-int/lit16 v0, p0, 0x384

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 608
    :cond_1
    const v0, 0xc6318

    if-ge p0, v0, :cond_2

    .line 609
    const/16 v0, 0x39d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    sub-int v0, v1, p0

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 612
    :cond_2
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECI number not in valid range from 0..811799, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 438
    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 440
    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 441
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move v1, v2

    .line 442
    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-ge v1, v0, :cond_2

    .line 443
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 444
    const/16 v0, 0x2c

    sub-int v6, p2, v1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v7, p1, v1

    add-int v8, p1, v1

    add-int/2addr v8, v6

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 446
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 448
    :cond_0
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 450
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 453
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 454
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 456
    :cond_1
    add-int v0, v1, v6

    move v1, v0

    .line 457
    goto :goto_0

    .line 458
    :cond_2
    return-void
.end method

.method private static a([BIIILjava/lang/StringBuilder;)V
    .locals 8

    .prologue
    .line 399
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 400
    const/16 v0, 0x391

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    :goto_0
    const/4 v0, 0x6

    if-lt p2, v0, :cond_8

    .line 413
    const/4 v0, 0x5

    new-array v4, v0, [C

    move v0, p1

    .line 414
    :goto_1
    add-int v1, p1, p2

    sub-int/2addr v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_6

    .line 415
    const-wide/16 v2, 0x0

    .line 416
    const/4 v1, 0x0

    :goto_2
    const/4 v5, 0x6

    if-ge v1, v5, :cond_3

    .line 417
    const/16 v5, 0x8

    shl-long/2addr v2, v5

    .line 418
    add-int v5, v0, v1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 402
    :cond_0
    rem-int/lit8 v0, p2, 0x6

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 403
    :goto_3
    if-eqz v0, :cond_2

    .line 404
    const/16 v0, 0x39c

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 402
    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    .line 406
    :cond_2
    const/16 v0, 0x385

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 420
    :cond_3
    const/4 v1, 0x0

    :goto_4
    const/4 v5, 0x5

    if-ge v1, v5, :cond_4

    .line 421
    const-wide/16 v6, 0x384

    rem-long v6, v2, v6

    long-to-int v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v1

    .line 422
    const-wide/16 v6, 0x384

    div-long/2addr v2, v6

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 424
    :cond_4
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_5

    .line 425
    aget-char v2, v4, v1

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 427
    :cond_5
    add-int/lit8 v0, v0, 0x6

    .line 428
    goto :goto_1

    .line 431
    :cond_6
    :goto_6
    add-int v1, p1, p2

    if-ge v0, v1, :cond_7

    .line 432
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 433
    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 435
    :cond_7
    return-void

    :cond_8
    move v0, p1

    goto :goto_6
.end method

.method private static a(C)Z
    .locals 1

    .prologue
    .line 462
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 3

    .prologue
    .line 242
    if-nez p1, :cond_1

    .line 243
    sget-object v0, Lcom/google/zxing/pdf417/encoder/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 250
    :cond_0
    if-nez p1, :cond_1

    .line 251
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No support for any encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/pdf417/encoder/c;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/CharSequence;I)I
    .locals 6

    .prologue
    const/16 v5, 0xd

    .line 517
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v0, p1

    .line 519
    :cond_0
    :goto_0
    if-ge v0, v4, :cond_3

    .line 520
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 521
    const/4 v1, 0x0

    .line 522
    :goto_1
    if-ge v1, v5, :cond_1

    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/c;->a(C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ge v0, v4, :cond_1

    .line 523
    add-int/lit8 v1, v1, 0x1

    .line 524
    add-int/lit8 v3, v0, 0x1

    .line 525
    if-ge v3, v4, :cond_5

    .line 526
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 529
    :cond_1
    if-lt v1, v5, :cond_2

    .line 530
    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    .line 544
    :goto_2
    return v0

    .line 532
    :cond_2
    if-gtz v1, :cond_0

    .line 536
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 539
    invoke-static {v1}, Lcom/google/zxing/pdf417/encoder/c;->f(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 544
    :cond_3
    sub-int/2addr v0, p1

    goto :goto_2

    .line 542
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 543
    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method private static b(C)Z
    .locals 1

    .prologue
    .line 466
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(C)Z
    .locals 1

    .prologue
    .line 470
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(C)Z
    .locals 2

    .prologue
    .line 474
    sget-object v0, Lcom/google/zxing/pdf417/encoder/c;->c:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(C)Z
    .locals 2

    .prologue
    .line 478
    sget-object v0, Lcom/google/zxing/pdf417/encoder/c;->d:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(C)Z
    .locals 1

    .prologue
    .line 482
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
