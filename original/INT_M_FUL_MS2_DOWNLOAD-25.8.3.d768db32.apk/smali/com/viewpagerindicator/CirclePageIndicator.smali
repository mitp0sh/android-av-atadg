.class public Lcom/viewpagerindicator/CirclePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Z

.field private c:F

.field private d:F

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private h:Landroid/support/v4/view/ViewPager;

.field private i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private j:I

.field private k:I

.field private l:F

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:F

.field private s:I

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viewpagerindicator/CirclePageIndicator;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/viewpagerindicator/R$attr;->vpiCirclePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/graphics/Paint;

    .line 65
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:F

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I

    .line 82
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    sget-boolean v1, Lcom/viewpagerindicator/CirclePageIndicator;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_0
    sget v1, Lcom/viewpagerindicator/R$color;->default_circle_indicator_page_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 86
    sget v2, Lcom/viewpagerindicator/R$color;->default_circle_indicator_fill_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 87
    sget v3, Lcom/viewpagerindicator/R$integer;->default_circle_indicator_orientation:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 88
    sget v4, Lcom/viewpagerindicator/R$color;->default_circle_indicator_stroke_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 89
    sget v5, Lcom/viewpagerindicator/R$dimen;->default_circle_indicator_stroke_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 90
    sget v6, Lcom/viewpagerindicator/R$dimen;->default_circle_indicator_radius:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 91
    sget v7, Lcom/viewpagerindicator/R$dimen;->default_circle_indicator_gap_width:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 92
    sget v8, Lcom/viewpagerindicator/R$bool;->default_circle_indicator_centered:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 93
    sget v9, Lcom/viewpagerindicator/R$bool;->default_circle_indicator_snap:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 96
    sget-object v9, Lcom/viewpagerindicator/R$styleable;->CirclePageIndicator:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 97
    sget-boolean v10, Lcom/viewpagerindicator/CirclePageIndicator;->a:Z

    if-nez v10, :cond_1

    if-nez v9, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_1
    const/4 v10, 0x2

    invoke-virtual {v9, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z

    .line 100
    const/4 v8, 0x0

    invoke-virtual {v9, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:I

    .line 101
    iget-object v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-virtual {v9, v8, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    const/16 v3, 0x9

    invoke-virtual {v9, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-virtual {v9, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/graphics/Paint;

    const/4 v3, 0x5

    invoke-virtual {v9, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    const/4 v1, 0x7

    invoke-virtual {v9, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    .line 109
    const/4 v1, 0x3

    invoke-virtual {v9, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:F

    .line 110
    const/16 v1, 0x8

    invoke-virtual {v9, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:Z

    .line 112
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:I

    .line 122
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->isInEditMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Z

    .line 123
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Z

    if-eqz v0, :cond_3

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    .line 127
    :cond_3
    return-void
.end method

.method private a(II)I
    .locals 6

    .prologue
    .line 498
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 499
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 501
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Z

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 513
    :cond_1
    :goto_0
    return v0

    .line 506
    :cond_2
    invoke-direct {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getCount()I

    move-result v0

    .line 507
    int-to-float v3, p2

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 509
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 510
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(II)I
    .locals 4

    .prologue
    .line 525
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 526
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 528
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 539
    :goto_0
    return v0

    .line 533
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    mul-float/2addr v1, v3

    int-to-float v3, p2

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 535
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 536
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private getCount()I
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Z

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x5

    .line 427
    :goto_0
    return v0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 427
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getGapWidth()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:F

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 433
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 221
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    invoke-direct {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getCount()I

    move-result v6

    .line 224
    if-nez v6, :cond_0

    .line 301
    :goto_0
    return-void

    .line 228
    :cond_0
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    if-lt v0, v6, :cond_1

    .line 229
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 237
    :cond_1
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:I

    if-nez v0, :cond_6

    .line 238
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v3

    .line 239
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 240
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    .line 241
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v0

    .line 249
    :goto_1
    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    mul-float/2addr v4, v8

    iget v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:F

    add-float v7, v4, v5

    .line 250
    int-to-float v0, v0

    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    add-float/2addr v4, v0

    .line 251
    int-to-float v0, v2

    iget v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:F

    div-float/2addr v5, v8

    add-float/2addr v0, v5

    .line 252
    iget-boolean v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z

    if-eqz v5, :cond_2

    .line 253
    sub-int v2, v3, v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    int-to-float v2, v6

    mul-float/2addr v2, v7

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 256
    :cond_2
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    .line 257
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 258
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    .line 265
    :cond_3
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-ge v5, v6, :cond_8

    .line 266
    int-to-float v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v2, v0

    .line 267
    iget v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:I

    if-nez v3, :cond_7

    move v3, v2

    move v2, v4

    .line 275
    :goto_3
    iget-object v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_4

    .line 276
    iget-object v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 280
    :cond_4
    iget v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_5

    .line 281
    iget v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    iget-object v9, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 265
    :cond_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 243
    :cond_6
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getHeight()I

    move-result v3

    .line 244
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 245
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    .line 246
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    :cond_7
    move v3, v4

    .line 272
    goto :goto_3

    .line 287
    :cond_8
    iget-boolean v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:Z

    if-eqz v1, :cond_9

    .line 288
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    .line 293
    :goto_4
    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:I

    if-nez v2, :cond_a

    .line 294
    add-float/2addr v0, v1

    .line 300
    :goto_5
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 290
    :cond_9
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    int-to-float v1, v1

    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v7

    goto :goto_4

    .line 298
    :cond_a
    add-float/2addr v0, v1

    move v10, v0

    move v0, v4

    move v4, v10

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 480
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:I

    if-nez v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->a(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, p2, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->b(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 487
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->b(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, p2, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->a(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 437
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I

    .line 439
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 442
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 446
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    .line 447
    iput p2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:F

    .line 448
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 450
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 453
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I

    if-nez v0, :cond_1

    .line 458
    :cond_0
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    .line 459
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    .line 460
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 466
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 544
    check-cast p1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    .line 545
    invoke-virtual {p1}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 546
    iget v0, p1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    .line 547
    iget v0, p1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    .line 548
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    .line 549
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 553
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 554
    new-instance v1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 555
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    :goto_0
    iput v0, v1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->a:I

    .line 556
    return-object v1

    .line 555
    :cond_0
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 304
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v1

    .line 307
    :cond_1
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 308
    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 312
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 314
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:F

    goto :goto_0

    .line 319
    :pswitch_2
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 320
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 321
    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:F

    sub-float v2, v0, v2

    .line 323
    iget-boolean v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->t:Z

    if-nez v3, :cond_4

    .line 324
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 325
    iput-boolean v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->t:Z

    .line 329
    :cond_4
    iget-boolean v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->t:Z

    if-eqz v3, :cond_0

    .line 330
    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:F

    .line 331
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 341
    :pswitch_3
    iget-boolean v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->t:Z

    if-nez v3, :cond_7

    .line 342
    iget-object v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 343
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v4

    .line 344
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 345
    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 347
    iget v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    if-lez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 348
    if-eq v2, v8, :cond_0

    .line 349
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 352
    :cond_6
    iget v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 353
    if-eq v2, v8, :cond_0

    .line 354
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 360
    :cond_7
    iput-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->t:Z

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I

    .line 362
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    .line 366
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 367
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:F

    .line 368
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I

    goto/16 :goto_0

    .line 373
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 374
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 375
    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I

    if-ne v3, v4, :cond_9

    .line 376
    if-nez v2, :cond_8

    move v0, v1

    .line 377
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I

    .line 379
    :cond_9
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:F

    goto/16 :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z

    .line 132
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 133
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 414
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    .line 415
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 416
    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 151
    return-void
.end method

.method public setGapWidth(F)V
    .locals 0

    .prologue
    .line 202
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:F

    .line 203
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 204
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 471
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_0
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:I

    .line 162
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    .line 168
    return-void

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 142
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 193
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    .line 194
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 195
    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:Z

    .line 212
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 213
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 177
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 186
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 394
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    .line 398
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 399
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 405
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 406
    return-void
.end method
