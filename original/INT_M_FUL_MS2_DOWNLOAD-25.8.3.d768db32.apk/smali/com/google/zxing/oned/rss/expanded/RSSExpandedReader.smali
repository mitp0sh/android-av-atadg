.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[[I

.field private static final e:[[I

.field private static final f:[[I


# instance fields
.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/c;",
            ">;"
        }
    .end annotation
.end field

.field private final i:[I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 54
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a:[I

    .line 55
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->b:[I

    .line 56
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->c:[I

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->d:[[I

    .line 67
    const/16 v0, 0x17

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->e:[[I

    .line 100
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v6, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v7, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->f:[[I

    return-void

    .line 54
    :array_0
    .array-data 4
        0x7
        0x5
        0x4
        0x3
        0x1
    .end array-data

    .line 55
    :array_1
    .array-data 4
        0x4
        0x14
        0x34
        0x68
        0xcc
    .end array-data

    .line 56
    :array_2
    .array-data 4
        0x0
        0x15c
        0x56c
        0xb84
        0xf94
    .end array-data

    .line 58
    :array_3
    .array-data 4
        0x1
        0x8
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x6
        0x4
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x4
        0x6
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x2
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x6
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x2
        0x9
        0x1
    .end array-data

    .line 67
    :array_9
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_b
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_c
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_d
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_e
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_f
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_10
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_11
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_12
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_14
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_15
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_16
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_17
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_18
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_1b
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_1c
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_1d
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_1e
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_1f
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    .line 100
    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->i:[I

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->j:Z

    return-void
.end method

.method private static a(Lcom/google/zxing/common/BitArray;I)I
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    .line 417
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 422
    :goto_0
    return v0

    .line 419
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 420
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    goto :goto_0
.end method

.method static a(Ljava/util/List;)Lcom/google/zxing/Result;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/b;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 367
    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/a;->a(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 369
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/b;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/b;->c()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 373
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/b;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/b;->c()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 375
    new-instance v3, Lcom/google/zxing/Result;

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    aget-object v6, v2, v7

    aput-object v6, v5, v7

    aget-object v2, v2, v8

    aput-object v2, v5, v8

    const/4 v2, 0x2

    aget-object v6, v0, v7

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aget-object v0, v0, v8

    aput-object v0, v5, v2

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v3, v1, v4, v5, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v3
.end method

.method private a(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 551
    if-eqz p3, :cond_1

    .line 554
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->i:[I

    aget v0, v0, v5

    add-int/lit8 v0, v0, -0x1

    .line 556
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 560
    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 561
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->i:[I

    aget v0, v0, v5

    sub-int/2addr v0, v3

    .line 563
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->i:[I

    aget v4, v1, v6

    .line 575
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v1

    .line 576
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v5, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    aput v0, v1, v5

    .line 581
    :try_start_0
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->d:[[I

    invoke-static {v1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 585
    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v4, v2, v6

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    :goto_2
    return-object v0

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->i:[I

    aget v3, v0, v5

    .line 570
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->i:[I

    aget v0, v0, v6

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v4

    .line 571
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->i:[I

    aget v0, v0, v6

    sub-int v0, v4, v0

    goto :goto_1

    .line 582
    :catch_0
    move-exception v0

    .line 583
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/c;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/c;

    .line 222
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 224
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    .line 225
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/c;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/c;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    .line 242
    :goto_3
    return-object v0

    .line 237
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, p2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    .line 248
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 243
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private a(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 193
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_1

    .line 194
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 214
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 199
    if-eqz p1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 205
    :cond_2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_1
    if-eqz p1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private a(I)V
    .locals 13

    .prologue
    const/16 v11, 0xd

    const/4 v10, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 699
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v7

    .line 700
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v8

    .line 701
    add-int v2, v7, v8

    sub-int v9, v2, p1

    .line 702
    and-int/lit8 v2, v7, 0x1

    if-ne v2, v1, :cond_0

    move v6, v1

    .line 703
    :goto_0
    and-int/lit8 v2, v8, 0x1

    if-nez v2, :cond_1

    move v5, v1

    .line 708
    :goto_1
    if-le v7, v11, :cond_2

    move v3, v1

    move v4, v0

    .line 715
    :goto_2
    if-le v8, v11, :cond_3

    move v2, v0

    move v0, v1

    .line 721
    :goto_3
    if-ne v9, v1, :cond_7

    .line 722
    if-eqz v6, :cond_5

    .line 723
    if-eqz v5, :cond_4

    .line 724
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_0
    move v6, v0

    .line 702
    goto :goto_0

    :cond_1
    move v5, v0

    .line 703
    goto :goto_1

    .line 710
    :cond_2
    if-ge v7, v10, :cond_18

    move v3, v0

    move v4, v1

    .line 711
    goto :goto_2

    .line 717
    :cond_3
    if-ge v8, v10, :cond_17

    move v2, v1

    .line 718
    goto :goto_3

    :cond_4
    move v3, v4

    move v12, v1

    move v1, v2

    move v2, v12

    .line 768
    :goto_4
    if-eqz v3, :cond_11

    .line 769
    if-eqz v2, :cond_10

    .line 770
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 728
    :cond_5
    if-nez v5, :cond_6

    .line 729
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_6
    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    .line 731
    goto :goto_4

    .line 733
    :cond_7
    const/4 v10, -0x1

    if-ne v9, v10, :cond_b

    .line 734
    if-eqz v6, :cond_9

    .line 735
    if-eqz v5, :cond_8

    .line 736
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_8
    move v12, v2

    move v2, v3

    move v3, v1

    move v1, v12

    .line 738
    goto :goto_4

    .line 740
    :cond_9
    if-nez v5, :cond_a

    .line 741
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_a
    move v2, v3

    move v3, v4

    .line 743
    goto :goto_4

    .line 745
    :cond_b
    if-nez v9, :cond_f

    .line 746
    if-eqz v6, :cond_e

    .line 747
    if-nez v5, :cond_c

    .line 748
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 751
    :cond_c
    if-ge v7, v8, :cond_d

    move v0, v1

    move v12, v2

    move v2, v3

    move v3, v1

    move v1, v12

    .line 753
    goto :goto_4

    :cond_d
    move v2, v1

    move v3, v4

    .line 756
    goto :goto_4

    .line 759
    :cond_e
    if-eqz v5, :cond_16

    .line 760
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 765
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 772
    :cond_10
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    .line 774
    :cond_11
    if-eqz v2, :cond_12

    .line 775
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 777
    :cond_12
    if-eqz v1, :cond_14

    .line 778
    if-eqz v0, :cond_13

    .line 779
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 781
    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    .line 783
    :cond_14
    if-eqz v0, :cond_15

    .line 784
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 786
    :cond_15
    return-void

    :cond_16
    move v1, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_4

    :cond_17
    move v2, v0

    goto/16 :goto_3

    :cond_18
    move v3, v0

    move v4, v0

    goto/16 :goto_2
.end method

.method private a(IZ)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 277
    move v1, v2

    move v3, v2

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/c;

    .line 282
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/c;->b()I

    move-result v4

    if-le v4, p1, :cond_2

    .line 283
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/zxing/oned/rss/expanded/c;->a(Ljava/util/List;)Z

    move-result v2

    .line 289
    :cond_0
    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    .line 305
    :cond_1
    :goto_1
    return-void

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/c;->a(Ljava/util/List;)Z

    move-result v0

    .line 287
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    .line 288
    goto :goto_0

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    new-instance v1, Lcom/google/zxing/oned/rss/expanded/c;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/zxing/oned/rss/expanded/c;-><init>(Ljava/util/List;IZ)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 309
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/c;

    .line 311
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/b;

    .line 317
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/b;

    .line 318
    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 323
    :goto_1
    if-nez v0, :cond_1

    move v0, v2

    .line 328
    :goto_2
    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 333
    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method private static a([I)V
    .locals 4

    .prologue
    .line 537
    array-length v1, p0

    .line 538
    const/4 v0, 0x0

    :goto_0
    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_0

    .line 539
    aget v2, p0, v0

    .line 540
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, p0, v0

    .line 541
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aput v2, p0, v3

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 384
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/b;

    .line 385
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/b;->a()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v6

    .line 386
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/b;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    .line 388
    if-nez v0, :cond_0

    .line 410
    :goto_0
    return v5

    .line 392
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v1

    .line 393
    const/4 v0, 0x2

    move v3, v0

    move v4, v1

    move v1, v2

    .line 395
    :goto_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/b;

    .line 397
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/b;->a()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v7

    add-int/2addr v4, v7

    .line 398
    add-int/lit8 v3, v3, 0x1

    .line 399
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/b;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    add-int/2addr v4, v0

    .line 402
    add-int/lit8 v3, v3, 0x1

    .line 395
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 406
    :cond_2
    rem-int/lit16 v0, v4, 0xd3

    .line 408
    add-int/lit8 v1, v3, -0x4

    mul-int/lit16 v1, v1, 0xd3

    add-int/2addr v0, v1

    .line 410
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    :goto_2
    move v5, v2

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_2
.end method

.method private static a(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .locals 1

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/b;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/c;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 337
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/c;

    .line 339
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/b;

    .line 341
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/c;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/b;

    .line 342
    invoke-virtual {v1, v2}, Lcom/google/zxing/oned/rss/expanded/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    .line 347
    :goto_0
    if-nez v1, :cond_1

    move v0, v4

    .line 352
    :goto_1
    if-eqz v0, :cond_0

    move v0, v3

    .line 357
    :goto_2
    return v0

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method private b(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/b;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v5

    .line 469
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v5, v0

    .line 470
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v5, v0

    .line 471
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v5, v0

    .line 472
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v5, v0

    .line 474
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 477
    if-ltz p3, :cond_2

    .line 485
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 486
    :goto_1
    iget-boolean v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->j:Z

    if-eqz v1, :cond_0

    .line 487
    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 490
    :cond_0
    :goto_2
    const/4 v1, 0x0

    move v2, p3

    .line 491
    :goto_3
    if-ge v2, v6, :cond_1

    .line 492
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    .line 493
    :goto_4
    if-nez v1, :cond_7

    .line 499
    :cond_1
    const/4 v3, 0x0

    move v4, v2

    move v9, v2

    move v2, v3

    move v3, v1

    move v1, v9

    .line 501
    :goto_5
    if-ge v4, v6, :cond_e

    .line 502
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_8

    .line 503
    aget v7, v5, v2

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v2

    .line 501
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 479
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    const/4 p3, 0x0

    goto :goto_0

    .line 482
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/b;

    .line 483
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/b;->c()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v0

    const/4 v1, 0x1

    aget p3, v0, v1

    goto :goto_0

    .line 485
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 487
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 492
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 496
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 505
    :cond_8
    const/4 v7, 0x3

    if-ne v2, v7, :cond_c

    .line 506
    if-eqz v0, :cond_9

    .line 507
    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a([I)V

    .line 510
    :cond_9
    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 511
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->i:[I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 512
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->i:[I

    const/4 v1, 0x1

    aput v4, v0, v1

    .line 513
    return-void

    .line 516
    :cond_a
    if-eqz v0, :cond_b

    .line 517
    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a([I)V

    .line 520
    :cond_b
    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 521
    const/4 v7, 0x0

    const/4 v8, 0x2

    aget v8, v5, v8

    aput v8, v5, v7

    .line 522
    const/4 v7, 0x1

    const/4 v8, 0x3

    aget v8, v5, v8

    aput v8, v5, v7

    .line 523
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v5, v7

    .line 524
    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v5, v7

    .line 525
    add-int/lit8 v2, v2, -0x1

    .line 529
    :goto_7
    const/4 v7, 0x1

    aput v7, v5, v2

    .line 530
    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_6

    .line 527
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 530
    :cond_d
    const/4 v3, 0x0

    goto :goto_6

    .line 533
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static b(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/b;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    sget-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->f:[[I

    array-length v6, v5

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v5, v4

    .line 255
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v7

    if-le v0, v1, :cond_1

    .line 254
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 260
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 261
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/b;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/b;->c()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    aget v8, v7, v1

    if-eq v0, v8, :cond_3

    move v0, v2

    .line 267
    :goto_2
    if-eqz v0, :cond_0

    move v2, v3

    .line 272
    :cond_2
    return v2

    .line 260
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2
.end method


# virtual methods
.method a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 13

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDataCharacterCounters()[I

    move-result-object v2

    .line 593
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 594
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 595
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 596
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 597
    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 598
    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 599
    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 600
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 602
    if-eqz p4, :cond_1

    .line 603
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 614
    :cond_0
    const/16 v3, 0x11

    .line 615
    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v3

    div-float v4, v0, v1

    .line 618
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v1

    const/4 v5, 0x0

    aget v1, v1, v5

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x41700000    # 15.0f

    div-float/2addr v0, v1

    .line 619
    sub-float v1, v4, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v0, v1, v0

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 620
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 605
    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p1, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 607
    const/4 v1, 0x0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 608
    aget v3, v2, v1

    .line 609
    aget v4, v2, v0

    aput v4, v2, v1

    .line 610
    aput v3, v2, v0

    .line 607
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 623
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v5

    .line 624
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v6

    .line 625
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v7

    .line 626
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v8

    .line 628
    const/4 v0, 0x0

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_8

    .line 629
    const/high16 v1, 0x3f800000    # 1.0f

    aget v9, v2, v0

    int-to-float v9, v9

    mul-float/2addr v1, v9

    div-float v9, v1, v4

    .line 630
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, v9

    float-to-int v1, v1

    .line 631
    const/4 v10, 0x1

    if-ge v1, v10, :cond_5

    .line 632
    const v1, 0x3e99999a    # 0.3f

    cmpg-float v1, v9, v1

    if-gez v1, :cond_3

    .line 633
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 635
    :cond_3
    const/4 v1, 0x1

    .line 642
    :cond_4
    :goto_2
    div-int/lit8 v10, v0, 0x2

    .line 643
    and-int/lit8 v11, v0, 0x1

    if-nez v11, :cond_7

    .line 644
    aput v1, v5, v10

    .line 645
    int-to-float v1, v1

    sub-float v1, v9, v1

    aput v1, v7, v10

    .line 628
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 636
    :cond_5
    const/16 v10, 0x8

    if-le v1, v10, :cond_4

    .line 637
    const v1, 0x410b3333    # 8.7f

    cmpl-float v1, v9, v1

    if-lez v1, :cond_6

    .line 638
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 640
    :cond_6
    const/16 v1, 0x8

    goto :goto_2

    .line 647
    :cond_7
    aput v1, v6, v10

    .line 648
    int-to-float v1, v1

    sub-float v1, v9, v1

    aput v1, v8, v10

    goto :goto_3

    .line 652
    :cond_8
    invoke-direct {p0, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(I)V

    .line 654
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    if-eqz p3, :cond_a

    const/4 v0, 0x0

    :goto_4
    add-int/2addr v1, v0

    if-eqz p4, :cond_b

    const/4 v0, 0x0

    :goto_5
    add-int/2addr v0, v1

    add-int/lit8 v4, v0, -0x1

    .line 656
    const/4 v2, 0x0

    .line 657
    const/4 v1, 0x0

    .line 658
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_6
    if-ltz v1, :cond_c

    .line 659
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 660
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->e:[[I

    aget-object v2, v2, v4

    mul-int/lit8 v7, v1, 0x2

    aget v2, v2, v7

    .line 661
    aget v7, v5, v1

    mul-int/2addr v2, v7

    add-int/2addr v0, v2

    .line 663
    :cond_9
    aget v2, v5, v1

    add-int/2addr v2, v3

    .line 658
    add-int/lit8 v1, v1, -0x1

    move v3, v2

    goto :goto_6

    .line 654
    :cond_a
    const/4 v0, 0x2

    goto :goto_4

    :cond_b
    const/4 v0, 0x1

    goto :goto_5

    .line 665
    :cond_c
    const/4 v2, 0x0

    .line 667
    array-length v1, v6

    add-int/lit8 v1, v1, -0x1

    move v12, v1

    move v1, v2

    move v2, v12

    :goto_7
    if-ltz v2, :cond_e

    .line 668
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 669
    sget-object v7, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->e:[[I

    aget-object v7, v7, v4

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    .line 670
    aget v8, v6, v2

    mul-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 667
    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 674
    :cond_e
    add-int/2addr v0, v1

    .line 676
    and-int/lit8 v1, v3, 0x1

    if-nez v1, :cond_f

    const/16 v1, 0xd

    if-gt v3, v1, :cond_f

    const/4 v1, 0x4

    if-ge v3, v1, :cond_10

    .line 677
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 680
    :cond_10
    rsub-int/lit8 v1, v3, 0xd

    div-int/lit8 v1, v1, 0x2

    .line 681
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a:[I

    aget v2, v2, v1

    .line 682
    rsub-int/lit8 v3, v2, 0x9

    .line 683
    const/4 v4, 0x1

    invoke-static {v5, v2, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    .line 684
    const/4 v4, 0x0

    invoke-static {v6, v3, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v3

    .line 685
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->b:[I

    aget v4, v4, v1

    .line 686
    sget-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->c:[I

    aget v1, v5, v1

    .line 687
    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 689
    new-instance v2, Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v2
.end method

.method a(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/b;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/b;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 428
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    move v0, v1

    .line 429
    :goto_0
    iget-boolean v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->j:Z

    if-eqz v3, :cond_5

    .line 430
    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v3, v0

    .line 436
    :goto_2
    const/4 v0, -0x1

    move v4, v1

    .line 438
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->b(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    .line 439
    invoke-direct {p0, p1, p3, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    .line 440
    if-nez v5, :cond_3

    .line 441
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->i:[I

    aget v0, v0, v2

    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/common/BitArray;I)I

    move-result v0

    .line 445
    :goto_3
    if-nez v4, :cond_0

    .line 450
    invoke-virtual {p0, p1, v5, v3, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    .line 452
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/b;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/b;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1
    move v0, v2

    .line 428
    goto :goto_0

    :cond_2
    move v0, v2

    .line 430
    goto :goto_1

    :cond_3
    move v4, v2

    .line 443
    goto :goto_3

    .line 458
    :cond_4
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v5, v3, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 463
    :goto_4
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/b;

    invoke-direct {v3, v2, v0, v5, v1}, Lcom/google/zxing/oned/rss/expanded/b;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    return-object v3

    .line 459
    :catch_0
    move-exception v0

    .line 460
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    move v3, v0

    goto :goto_2
.end method

.method a(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-virtual {p0, p2, v0, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/b;

    move-result-object v0

    .line 155
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    throw v0

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    .line 182
    :cond_1
    return-object v0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 172
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(IZ)V

    .line 173
    if-eqz v0, :cond_3

    .line 176
    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 177
    if-nez v0, :cond_1

    .line 180
    invoke-direct {p0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 181
    if-nez v0, :cond_1

    .line 186
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_4
    move v0, v2

    .line 170
    goto :goto_1
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->j:Z

    .line 132
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Ljava/util/List;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 138
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->j:Z

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    return-void
.end method
