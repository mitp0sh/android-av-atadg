.class public Lcom/viewpagerindicator/LinePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Z

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private g:I

.field private h:Z

.field private i:F

.field private j:F

.field private k:I

.field private l:F

.field private m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/viewpagerindicator/LinePageIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viewpagerindicator/LinePageIndicator;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/viewpagerindicator/R$attr;->vpiLinePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/graphics/Paint;

    .line 54
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:F

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->m:I

    .line 70
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    sget-boolean v1, Lcom/viewpagerindicator/LinePageIndicator;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    sget v1, Lcom/viewpagerindicator/R$color;->default_line_indicator_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 75
    sget v2, Lcom/viewpagerindicator/R$color;->default_line_indicator_unselected_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 76
    sget v3, Lcom/viewpagerindicator/R$dimen;->default_line_indicator_line_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 77
    sget v4, Lcom/viewpagerindicator/R$dimen;->default_line_indicator_gap_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 78
    sget v5, Lcom/viewpagerindicator/R$dimen;->default_line_indicator_stroke_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 79
    sget v6, Lcom/viewpagerindicator/R$bool;->default_line_indicator_centered:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 82
    sget-object v6, Lcom/viewpagerindicator/R$styleable;->LinePageIndicator:[I

    invoke-virtual {p1, p2, v6, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 83
    sget-boolean v7, Lcom/viewpagerindicator/LinePageIndicator;->a:Z

    if-nez v7, :cond_1

    if-nez v6, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_1
    invoke-virtual {v6, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:Z

    .line 86
    const/4 v0, 0x6

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->i:F

    .line 87
    invoke-virtual {v6, v10, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    .line 88
    const/4 v0, 0x4

    invoke-virtual {v6, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/LinePageIndicator;->setStrokeWidth(F)V

    .line 89
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/graphics/Paint;

    const/4 v3, 0x5

    invoke-virtual {v6, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-virtual {v6, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/LinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 102
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->isInEditMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Z

    .line 103
    iget-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Z

    if-eqz v0, :cond_3

    .line 104
    iput v10, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:I

    .line 106
    :cond_3
    return-void
.end method

.method private a(I)I
    .locals 6

    .prologue
    .line 373
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 374
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 376
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Z

    if-nez v0, :cond_2

    .line 378
    :cond_0
    int-to-float v0, v2

    .line 388
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 381
    :cond_2
    invoke-direct {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getCount()I

    move-result v0

    .line 382
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    iget v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->i:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 384
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 385
    int-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 399
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 400
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 402
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_1

    .line 404
    int-to-float v0, v2

    .line 413
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 409
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 410
    int-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private getCount()I
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Z

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x5

    .line 290
    :goto_0
    return v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getGapWidth()F
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->i:F

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 329
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 166
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 168
    invoke-direct {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getCount()I

    move-result v8

    .line 169
    if-nez v8, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:I

    if-lt v0, v8, :cond_2

    .line 174
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/LinePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 178
    :cond_2
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->i:F

    iget v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    add-float v9, v0, v1

    .line 179
    int-to-float v0, v8

    mul-float/2addr v0, v9

    iget v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    sub-float v1, v0, v1

    .line 180
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 181
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    .line 182
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    .line 184
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    .line 186
    iget-boolean v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:Z

    if-eqz v4, :cond_4

    .line 187
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float v3, v4, v3

    div-float/2addr v3, v6

    div-float/2addr v1, v6

    sub-float v1, v3, v1

    add-float/2addr v0, v1

    move v6, v0

    .line 191
    :goto_1
    const/4 v0, 0x0

    move v7, v0

    :goto_2
    if-ge v7, v8, :cond_0

    .line 192
    int-to-float v0, v7

    mul-float/2addr v0, v9

    add-float v1, v6, v0

    .line 193
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->i:F

    add-float v3, v1, v0

    .line 194
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:I

    if-ne v7, v0, :cond_3

    iget-object v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/graphics/Paint;

    :goto_3
    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 191
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    .line 194
    :cond_3
    iget-object v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/graphics/Paint;

    goto :goto_3

    :cond_4
    move v6, v0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/LinePageIndicator;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/LinePageIndicator;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setMeasuredDimension(II)V

    .line 363
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 336
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 343
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 347
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:I

    .line 348
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 350
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 353
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 418
    check-cast p1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    .line 419
    invoke-virtual {p1}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 420
    iget v0, p1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:I

    .line 421
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->requestLayout()V

    .line 422
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 426
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 427
    new-instance v1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 428
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:I

    iput v0, v1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->a:I

    .line 429
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 199
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v1

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 203
    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 207
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 209
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->m:I

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:F

    goto :goto_0

    .line 214
    :pswitch_2
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->m:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 215
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 216
    iget v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:F

    sub-float v2, v0, v2

    .line 218
    iget-boolean v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->n:Z

    if-nez v3, :cond_4

    .line 219
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 220
    iput-boolean v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->n:Z

    .line 224
    :cond_4
    iget-boolean v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->n:Z

    if-eqz v3, :cond_0

    .line 225
    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:F

    .line 226
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 236
    :pswitch_3
    iget-boolean v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->n:Z

    if-nez v3, :cond_7

    .line 237
    iget-object v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 238
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getWidth()I

    move-result v4

    .line 239
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 240
    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 242
    iget v6, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:I

    if-lez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 243
    if-eq v2, v8, :cond_0

    .line 244
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 247
    :cond_6
    iget v6, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 248
    if-eq v2, v8, :cond_0

    .line 249
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 255
    :cond_7
    iput-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->n:Z

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->m:I

    .line 257
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    .line 261
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 262
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:F

    .line 263
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->m:I

    goto/16 :goto_0

    .line 268
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 269
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 270
    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->m:I

    if-ne v3, v4, :cond_9

    .line 271
    if-nez v2, :cond_8

    move v0, v1

    .line 272
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->m:I

    .line 274
    :cond_9
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->m:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:F

    goto/16 :goto_0

    .line 207
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
    .line 110
    iput-boolean p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:Z

    .line 111
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 112
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 322
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:I

    .line 323
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 324
    return-void
.end method

.method public setGapWidth(F)V
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    .line 157
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 158
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->i:F

    .line 138
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 139
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 358
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 130
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 149
    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 121
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 302
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 306
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 307
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/LinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 313
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/LinePageIndicator;->setCurrentItem(I)V

    .line 314
    return-void
.end method
