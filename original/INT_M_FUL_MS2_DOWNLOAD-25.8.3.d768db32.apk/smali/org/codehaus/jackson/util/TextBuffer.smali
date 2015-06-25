.class public final Lorg/codehaus/jackson/util/TextBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[C


# instance fields
.field private final b:Lorg/codehaus/jackson/util/BufferRecycler;

.field private c:[C

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:[C

.field private j:I

.field private k:Ljava/lang/String;

.field private l:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lorg/codehaus/jackson/util/TextBuffer;->a:[C

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    .line 122
    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    .line 123
    return-void
.end method

.method private final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iput-boolean v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    .line 250
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 252
    return-void
.end method

.method private final a(I)[C
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    goto :goto_0
.end method

.method private b(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 638
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 639
    iput v5, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 640
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 641
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 642
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 643
    const/4 v3, -0x1

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 646
    add-int v3, v0, p1

    .line 647
    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    array-length v4, v4

    if-le v3, v4, :cond_1

    .line 648
    :cond_0
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)[C

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 650
    :cond_1
    if-lez v0, :cond_2

    .line 651
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    :cond_2
    iput v5, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    .line 654
    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 655
    return-void
.end method

.method private b()[C
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 684
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 714
    :goto_0
    return-object v0

    .line 690
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_2

    .line 691
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    if-ge v0, v1, :cond_1

    .line 692
    sget-object v0, Lorg/codehaus/jackson/util/TextBuffer;->a:[C

    goto :goto_0

    .line 694
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->d(I)[C

    move-result-object v0

    .line 695
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    iget v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 698
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    .line 699
    if-ge v0, v1, :cond_3

    .line 700
    sget-object v0, Lorg/codehaus/jackson/util/TextBuffer;->a:[C

    goto :goto_0

    .line 703
    :cond_3
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->d(I)[C

    move-result-object v3

    .line 704
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 705
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    move v1, v2

    :goto_1
    if-ge v4, v5, :cond_4

    .line 706
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    .line 707
    array-length v6, v0

    .line 708
    invoke-static {v0, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    add-int/2addr v1, v6

    .line 705
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 712
    :goto_2
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    iget v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 664
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    .line 667
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 668
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    .line 669
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    .line 671
    array-length v1, v0

    .line 673
    shr-int/lit8 v0, v1, 0x1

    .line 674
    if-ge v0, p1, :cond_1

    .line 677
    :goto_0
    const/high16 v0, 0x40000

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->d(I)[C

    move-result-object v0

    .line 678
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 679
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 680
    return-void

    :cond_1
    move p1, v0

    goto :goto_0
.end method

.method private final d(I)[C
    .locals 1

    .prologue
    .line 718
    new-array v0, p1, [C

    return-object v0
.end method


# virtual methods
.method public append(C)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 430
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    .line 431
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->b(I)V

    .line 433
    :cond_0
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 434
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 436
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 437
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 438
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->c(I)V

    .line 439
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 441
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    aput-char p1, v0, v1

    .line 442
    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 485
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    .line 486
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->b(I)V

    .line 488
    :cond_0
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 489
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 492
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 493
    array-length v1, v0

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    sub-int/2addr v1, v2

    .line 494
    if-lt v1, p3, :cond_1

    .line 495
    add-int v1, p2, p3

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 496
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 517
    :goto_0
    return-void

    .line 500
    :cond_1
    if-lez v1, :cond_2

    .line 501
    add-int v2, p2, v1

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 502
    sub-int/2addr p3, v1

    .line 503
    add-int/2addr p2, v1

    .line 510
    :cond_2
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->c(I)V

    .line 511
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    array-length v0, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 512
    add-int v1, p2, v0

    iget-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 513
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 514
    add-int/2addr p2, v0

    .line 515
    sub-int/2addr p3, v0

    .line 516
    if-gtz p3, :cond_2

    goto :goto_0
.end method

.method public append([CII)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 447
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    .line 448
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->b(I)V

    .line 450
    :cond_0
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 451
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 454
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 455
    array-length v1, v0

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    sub-int/2addr v1, v2

    .line 457
    if-lt v1, p3, :cond_1

    .line 458
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 480
    :goto_0
    return-void

    .line 463
    :cond_1
    if-lez v1, :cond_2

    .line 464
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    add-int/2addr p2, v1

    .line 466
    sub-int/2addr p3, v1

    .line 473
    :cond_2
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->c(I)V

    .line 474
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    array-length v0, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 475
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 477
    add-int/2addr p2, v0

    .line 478
    sub-int/2addr p3, v0

    .line 479
    if-gtz p3, :cond_2

    goto :goto_0
.end method

.method public contentsAsArray()[C
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 373
    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->b()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 376
    :cond_0
    return-object v0
.end method

.method public contentsAsDecimal()Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    .line 399
    :goto_0
    return-object v0

    .line 391
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_1

    .line 392
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    .line 395
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    if-nez v0, :cond_2

    .line 396
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    .line 399
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public contentsAsDouble()D
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public contentsAsString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    if-eqz v0, :cond_1

    .line 336
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 367
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 339
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_3

    .line 340
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 341
    const-string v0, ""

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    goto :goto_1

    .line 343
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    goto :goto_0

    .line 346
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    .line 347
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 349
    if-nez v0, :cond_5

    .line 350
    if-nez v1, :cond_4

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 352
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 354
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 355
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_3
    if-ge v1, v4, :cond_6

    .line 356
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 357
    array-length v5, v0

    invoke-virtual {v3, v0, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 361
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-virtual {v3, v0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public final emptyAndGetCurrentSegment()[C
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 548
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 549
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 550
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 552
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 553
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 554
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 557
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->a()V

    .line 560
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 561
    if-nez v0, :cond_1

    .line 562
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 564
    :cond_1
    return-object v0
.end method

.method public ensureNotShared()V
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    .line 424
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->b(I)V

    .line 426
    :cond_0
    return-void
.end method

.method public expandCurrentSegment()[C
    .locals 5

    .prologue
    const/high16 v4, 0x40000

    const/4 v3, 0x0

    .line 599
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 601
    array-length v2, v1

    .line 603
    if-ne v2, v4, :cond_0

    const v0, 0x40001

    .line 605
    :goto_0
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->d(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 606
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 607
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    return-object v0

    .line 603
    :cond_0
    shr-int/lit8 v0, v2, 0x1

    add-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public finishCurrentSegment()[C
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    .line 580
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    .line 581
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    array-length v0, v0

    .line 583
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    .line 585
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 586
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->d(I)[C

    move-result-object v0

    .line 587
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 588
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 589
    return-object v0
.end method

.method public getCurrentSegment()[C
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 531
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_1

    .line 532
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->b(I)V

    .line 542
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    return-object v0

    .line 534
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 535
    if-nez v0, :cond_2

    .line 536
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    goto :goto_0

    .line 537
    :cond_2
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    array-length v0, v0

    if-lt v1, v0, :cond_0

    .line 539
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->c(I)V

    goto :goto_0
.end method

.method public getCurrentSegmentSize()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    return v0
.end method

.method public getTextBuffer()[C
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 322
    :goto_0
    return-object v0

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    goto :goto_0

    .line 318
    :cond_2
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    if-nez v0, :cond_3

    .line 319
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public getTextOffset()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextAsCharacters()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 295
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    if-eqz v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 300
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseBuffers()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    if-nez v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 143
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 145
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v2, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    goto :goto_0
.end method

.method public resetWithCopy([CII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 197
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 199
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 200
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 203
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->a()V

    .line 208
    :cond_0
    :goto_0
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/util/TextBuffer;->append([CII)V

    .line 210
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    goto :goto_0
.end method

.method public resetWithEmpty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 157
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 158
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 160
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 161
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 165
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->a()V

    .line 168
    :cond_0
    return-void
.end method

.method public resetWithShared([CII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 183
    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 184
    iput p2, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 185
    iput p3, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 188
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->a()V

    .line 191
    :cond_0
    return-void
.end method

.method public resetWithString(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 216
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 218
    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 219
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 221
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->a()V

    .line 224
    :cond_0
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 226
    return-void
.end method

.method public setCurrentLength(I)V
    .locals 0

    .prologue
    .line 572
    iput p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 573
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    .line 265
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 274
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    array-length v0, v0

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 274
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
