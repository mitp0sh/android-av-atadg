.class final Ln/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Ln/b;->a:[I

    .line 471
    return-void
.end method

.method private final a(IZ)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 627
    iget v1, p0, Ln/b;->b:I

    if-nez v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v0

    .line 630
    :cond_1
    iget v1, p0, Ln/b;->b:I

    add-int/lit8 v2, v1, -0x1

    .line 631
    iget v1, p0, Ln/b;->d:I

    move v3, v1

    :goto_1
    if-eqz v3, :cond_0

    .line 632
    iget-object v1, p0, Ln/b;->a:[I

    aget v1, v1, v2

    .line 633
    add-int/lit8 v2, v2, -0x2

    .line 634
    :goto_2
    if-eqz v1, :cond_4

    .line 635
    if-eqz p2, :cond_2

    .line 636
    iget-object v4, p0, Ln/b;->a:[I

    aget v4, v4, v2

    if-ne v4, p1, :cond_3

    .line 637
    iget-object v0, p0, Ln/b;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    goto :goto_0

    .line 640
    :cond_2
    iget-object v4, p0, Ln/b;->a:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_3

    .line 641
    iget-object v0, p0, Ln/b;->a:[I

    aget v0, v0, v2

    goto :goto_0

    .line 644
    :cond_3
    add-int/lit8 v2, v2, -0x2

    .line 634
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 631
    :cond_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1
.end method

.method private final b(IZ)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 651
    iget v1, p0, Ln/b;->b:I

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    .line 668
    :cond_0
    :goto_0
    return v0

    .line 654
    :cond_1
    const/4 v2, 0x0

    .line 655
    iget v1, p0, Ln/b;->d:I

    :goto_1
    if-eqz v1, :cond_0

    .line 656
    iget-object v3, p0, Ln/b;->a:[I

    aget v3, v3, v2

    .line 657
    if-lt p1, v3, :cond_2

    .line 658
    sub-int/2addr p1, v3

    .line 659
    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 655
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 662
    :cond_2
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 663
    if-nez p2, :cond_3

    .line 664
    add-int/lit8 v0, v0, 0x1

    .line 666
    :cond_3
    iget-object v1, p0, Ln/b;->a:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method private e(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 616
    iget-object v0, p0, Ln/b;->a:[I

    array-length v0, v0

    iget v1, p0, Ln/b;->b:I

    sub-int/2addr v0, v1

    .line 617
    if-le v0, p1, :cond_0

    .line 624
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v1, p0, Ln/b;->a:[I

    array-length v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 621
    new-array v0, v0, [I

    .line 622
    iget-object v1, p0, Ln/b;->a:[I

    iget v2, p0, Ln/b;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    iput-object v0, p0, Ln/b;->a:[I

    goto :goto_0
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 492
    iget v1, p0, Ln/b;->b:I

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    .line 505
    :cond_0
    return v0

    .line 495
    :cond_1
    iget v1, p0, Ln/b;->d:I

    if-le p1, v1, :cond_2

    .line 496
    iget p1, p0, Ln/b;->d:I

    :cond_2
    move v1, v0

    .line 500
    :goto_0
    if-eqz p1, :cond_0

    .line 501
    iget-object v2, p0, Ln/b;->a:[I

    aget v3, v2, v1

    .line 502
    add-int v2, v0, v3

    .line 503
    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 500
    add-int/lit8 p1, p1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 474
    iput v0, p0, Ln/b;->b:I

    .line 475
    iput v0, p0, Ln/b;->c:I

    .line 476
    iput v0, p0, Ln/b;->d:I

    .line 477
    return-void
.end method

.method public final a(II)V
    .locals 5

    .prologue
    .line 509
    iget v0, p0, Ln/b;->d:I

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p0}, Ln/b;->e()V

    .line 512
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ln/b;->e(I)V

    .line 513
    iget v0, p0, Ln/b;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 514
    iget-object v1, p0, Ln/b;->a:[I

    aget v1, v1, v0

    .line 515
    iget-object v2, p0, Ln/b;->a:[I

    add-int/lit8 v3, v0, -0x1

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    aput v4, v2, v3

    .line 516
    iget-object v2, p0, Ln/b;->a:[I

    aput p1, v2, v0

    .line 517
    iget-object v2, p0, Ln/b;->a:[I

    add-int/lit8 v3, v0, 0x1

    aput p2, v2, v3

    .line 518
    iget-object v2, p0, Ln/b;->a:[I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    .line 519
    iget v0, p0, Ln/b;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ln/b;->b:I

    .line 520
    iget v0, p0, Ln/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln/b;->c:I

    .line 521
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 484
    iget v0, p0, Ln/b;->b:I

    if-nez v0, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 488
    :goto_0
    return v0

    .line 487
    :cond_0
    iget v0, p0, Ln/b;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 488
    iget-object v1, p0, Ln/b;->a:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public final b(I)I
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ln/b;->b(IZ)I

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ln/b;->b(IZ)I

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 555
    iget v1, p0, Ln/b;->b:I

    if-nez v1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return v0

    .line 558
    :cond_1
    iget v1, p0, Ln/b;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 559
    iget-object v2, p0, Ln/b;->a:[I

    aget v2, v2, v1

    .line 560
    if-eqz v2, :cond_0

    .line 563
    add-int/lit8 v0, v2, -0x1

    .line 564
    add-int/lit8 v1, v1, -0x2

    .line 565
    iget-object v2, p0, Ln/b;->a:[I

    aput v0, v2, v1

    .line 566
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    .line 567
    iget-object v2, p0, Ln/b;->a:[I

    aput v0, v2, v1

    .line 568
    iget v0, p0, Ln/b;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Ln/b;->b:I

    .line 569
    iget v0, p0, Ln/b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ln/b;->c:I

    .line 570
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Ln/b;->d:I

    return v0
.end method

.method public final d(I)I
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ln/b;->a(IZ)I

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 594
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ln/b;->e(I)V

    .line 595
    iget v0, p0, Ln/b;->b:I

    .line 596
    iget-object v1, p0, Ln/b;->a:[I

    aput v2, v1, v0

    .line 597
    iget-object v1, p0, Ln/b;->a:[I

    add-int/lit8 v0, v0, 0x1

    aput v2, v1, v0

    .line 598
    iget v0, p0, Ln/b;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ln/b;->b:I

    .line 599
    iget v0, p0, Ln/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln/b;->d:I

    .line 600
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 602
    iget v0, p0, Ln/b;->b:I

    if-nez v0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget v0, p0, Ln/b;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 606
    iget-object v1, p0, Ln/b;->a:[I

    aget v1, v1, v0

    .line 607
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 610
    iget v0, p0, Ln/b;->b:I

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Ln/b;->b:I

    .line 611
    iget v0, p0, Ln/b;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Ln/b;->c:I

    .line 612
    iget v0, p0, Ln/b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ln/b;->d:I

    goto :goto_0
.end method
