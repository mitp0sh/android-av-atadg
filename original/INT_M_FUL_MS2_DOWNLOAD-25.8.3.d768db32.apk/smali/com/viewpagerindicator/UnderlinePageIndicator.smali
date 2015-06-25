.class public Lcom/viewpagerindicator/UnderlinePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Z

.field private final c:Landroid/graphics/Paint;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/support/v4/view/ViewPager;

.field private i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private j:I

.field private k:I

.field private l:F

.field private m:I

.field private n:F

.field private o:I

.field private p:Z

.field private final q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viewpagerindicator/UnderlinePageIndicator;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/viewpagerindicator/R$attr;->vpiUnderlinePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->c:Landroid/graphics/Paint;

    .line 58
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->n:F

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:I

    .line 62
    new-instance v0, Lcom/viewpagerindicator/l;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/l;-><init>(Lcom/viewpagerindicator/UnderlinePageIndicator;)V

    iput-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->q:Ljava/lang/Runnable;

    .line 87
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    sget-boolean v1, Lcom/viewpagerindicator/UnderlinePageIndicator;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_0
    sget v1, Lcom/viewpagerindicator/R$bool;->default_underline_indicator_fades:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 92
    sget v2, Lcom/viewpagerindicator/R$integer;->default_underline_indicator_fade_delay:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 93
    sget v3, Lcom/viewpagerindicator/R$integer;->default_underline_indicator_fade_length:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 94
    sget v4, Lcom/viewpagerindicator/R$color;->default_underline_indicator_selected_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 97
    sget-object v4, Lcom/viewpagerindicator/R$styleable;->UnderlinePageIndicator:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 98
    sget-boolean v5, Lcom/viewpagerindicator/UnderlinePageIndicator;->a:Z

    if-nez v5, :cond_1

    if-nez v4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_1
    invoke-virtual {v4, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setFades(Z)V

    .line 101
    invoke-virtual {v4, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setSelectedColor(I)V

    .line 102
    const/4 v0, 0x3

    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setFadeDelay(I)V

    .line 103
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setFadeLength(I)V

    .line 105
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->m:I

    .line 115
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->isInEditMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->b:Z

    .line 116
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->b:Z

    if-eqz v0, :cond_3

    .line 117
    iput v8, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    .line 119
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/viewpagerindicator/UnderlinePageIndicator;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/viewpagerindicator/UnderlinePageIndicator;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic c(Lcom/viewpagerindicator/UnderlinePageIndicator;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->g:I

    return v0
.end method

.method static synthetic d(Lcom/viewpagerindicator/UnderlinePageIndicator;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->q:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getFadeDelay()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->e:I

    return v0
.end method

.method public getFadeLength()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:I

    return v0
.end method

.method public getFades()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->d:Z

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 320
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 169
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->b:Z

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x5

    .line 175
    :goto_0
    if-nez v0, :cond_1

    .line 191
    :goto_1
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 179
    :cond_1
    iget v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    if-lt v1, v0, :cond_2

    .line 180
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setCurrentItem(I)V

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingLeft()I

    move-result v1

    .line 185
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float/2addr v0, v3

    div-float v0, v2, v0

    .line 186
    int-to-float v1, v1

    iget v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    int-to-float v2, v2

    iget v3, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->l:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 187
    add-float v3, v1, v0

    .line 188
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 189
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    .line 190
    iget-object v5, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 324
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->j:I

    .line 326
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 329
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .prologue
    .line 333
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    .line 334
    iput p2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->l:F

    .line 335
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->d:Z

    if-eqz v0, :cond_0

    .line 336
    if-lez p3, :cond_2

    .line 337
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 338
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->c:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 343
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 345
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 348
    :cond_1
    return-void

    .line 339
    :cond_2
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->q:Ljava/lang/Runnable;

    iget v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->e:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/viewpagerindicator/UnderlinePageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->j:I

    if-nez v0, :cond_0

    .line 353
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->l:F

    .line 355
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 356
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->q:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 361
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 370
    check-cast p1, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;

    .line 371
    invoke-virtual {p1}, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 372
    iget v0, p1, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    .line 373
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->requestLayout()V

    .line 374
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 378
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 379
    new-instance v1, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 380
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    iput v0, v1, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;->a:I

    .line 381
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 194
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 198
    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 202
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 204
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:I

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->n:F

    goto :goto_0

    .line 209
    :pswitch_2
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 210
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 211
    iget v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->n:F

    sub-float v2, v0, v2

    .line 213
    iget-boolean v3, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->p:Z

    if-nez v3, :cond_4

    .line 214
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->m:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 215
    iput-boolean v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->p:Z

    .line 219
    :cond_4
    iget-boolean v3, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->p:Z

    if-eqz v3, :cond_0

    .line 220
    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->n:F

    .line 221
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 231
    :pswitch_3
    iget-boolean v3, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->p:Z

    if-nez v3, :cond_7

    .line 232
    iget-object v3, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 233
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getWidth()I

    move-result v4

    .line 234
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 235
    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 237
    iget v6, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    if-lez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 238
    if-eq v2, v8, :cond_0

    .line 239
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 242
    :cond_6
    iget v6, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 243
    if-eq v2, v8, :cond_0

    .line 244
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 250
    :cond_7
    iput-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->p:Z

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:I

    .line 252
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    .line 256
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 257
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->n:F

    .line 258
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:I

    goto/16 :goto_0

    .line 263
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 264
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 265
    iget v4, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:I

    if-ne v3, v4, :cond_9

    .line 266
    if-nez v2, :cond_8

    move v0, v1

    .line 267
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:I

    .line 269
    :cond_9
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->o:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->n:F

    goto/16 :goto_0

    .line 202
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

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 313
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->k:I

    .line 314
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 315
    return-void
.end method

.method public setFadeDelay(I)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->e:I

    .line 144
    return-void
.end method

.method public setFadeLength(I)V
    .locals 2

    .prologue
    .line 151
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:I

    .line 152
    const/16 v0, 0xff

    iget v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->f:I

    div-int/lit8 v1, v1, 0x1e

    div-int/2addr v0, v1

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->g:I

    .line 153
    return-void
.end method

.method public setFades(Z)V
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->d:Z

    if-eq p1, v0, :cond_0

    .line 127
    iput-boolean p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->d:Z

    .line 128
    if-eqz p1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 132
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->c:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 366
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 162
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    .line 289
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 290
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 291
    new-instance v0, Lcom/viewpagerindicator/m;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/m;-><init>(Lcom/viewpagerindicator/UnderlinePageIndicator;)V

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 304
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setCurrentItem(I)V

    .line 305
    return-void
.end method
