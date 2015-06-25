.class public Lcom/viewpagerindicator/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# static fields
.field public static final LOCATION_BOTTOM:I = 0x3

.field public static final LOCATION_LEFT:I = 0x0

.field public static final LOCATION_RIGHT:I = 0x2

.field public static final LOCATION_UP:I = 0x1

.field private static c:I


# instance fields
.field private a:I

.field private b:[I

.field private d:Ljava/lang/Runnable;

.field private final e:Landroid/view/View$OnClickListener;

.field private final f:Z

.field private final g:Lcom/viewpagerindicator/d;

.field private h:Landroid/support/v4/view/ViewPager;

.field private i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private j:I

.field private k:I

.field private l:Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

.field private m:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/viewpagerindicator/TabPageIndicator;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:I

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:[I

    .line 78
    new-instance v0, Lcom/viewpagerindicator/g;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/g;-><init>(Lcom/viewpagerindicator/TabPageIndicator;)V

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/view/View$OnClickListener;

    .line 110
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 112
    new-instance v0, Lcom/viewpagerindicator/d;

    sget v1, Lcom/viewpagerindicator/R$attr;->vpiTabPageIndicatorStyle:I

    invoke-direct {v0, p1, v1}, Lcom/viewpagerindicator/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Lcom/viewpagerindicator/d;

    .line 113
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Lcom/viewpagerindicator/d;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->isInEditMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Z

    .line 116
    iget-boolean v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->notifyDataSetChanged()V

    .line 118
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 120
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/viewpagerindicator/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Lcom/viewpagerindicator/d;

    invoke-virtual {v0, p1}, Lcom/viewpagerindicator/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 172
    :cond_0
    new-instance v1, Lcom/viewpagerindicator/h;

    invoke-direct {v1, p0, v0}, Lcom/viewpagerindicator/h;-><init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/view/View;)V

    iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Ljava/lang/Runnable;

    .line 179
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method

.method private a(ILjava/lang/CharSequence;I)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 200
    new-instance v0, Lcom/viewpagerindicator/i;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viewpagerindicator/i;-><init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V

    .line 201
    invoke-static {v0, p1}, Lcom/viewpagerindicator/i;->a(Lcom/viewpagerindicator/i;I)I

    .line 202
    invoke-virtual {v0, v3}, Lcom/viewpagerindicator/i;->setFocusable(Z)V

    .line 203
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/i;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    if-nez p2, :cond_0

    sget-object p2, Lcom/viewpagerindicator/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/viewpagerindicator/i;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/i;->setTypeface(Landroid/graphics/Typeface;)V

    .line 208
    if-eqz p3, :cond_1

    .line 209
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:[I

    iget v2, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:I

    aput p3, v1, v2

    .line 210
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viewpagerindicator/i;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Lcom/viewpagerindicator/d;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Lcom/viewpagerindicator/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    return-void
.end method

.method static synthetic b(Lcom/viewpagerindicator/TabPageIndicator;)Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->l:Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    return-object v0
.end method

.method static synthetic c(Lcom/viewpagerindicator/TabPageIndicator;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->j:I

    return v0
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 256
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Lcom/viewpagerindicator/d;

    invoke-virtual {v1}, Lcom/viewpagerindicator/d;->removeAllViews()V

    .line 262
    iget-boolean v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Z

    if-eqz v1, :cond_0

    .line 264
    const/4 v1, 0x5

    move-object v2, v0

    :goto_0
    move v6, v4

    .line 276
    :goto_1
    if-ge v6, v1, :cond_4

    .line 280
    iget-boolean v3, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Z

    if-eqz v3, :cond_2

    .line 281
    const-string v3, "Page %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v7, v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move v3, v4

    .line 288
    :goto_2
    invoke-direct {p0, v6, v5, v3}, Lcom/viewpagerindicator/TabPageIndicator;->a(ILjava/lang/CharSequence;I)V

    .line 276
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 269
    instance-of v3, v1, Lcom/viewpagerindicator/IconPagerAdapter;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 270
    check-cast v0, Lcom/viewpagerindicator/IconPagerAdapter;

    move v8, v2

    move-object v2, v1

    move v1, v8

    goto :goto_0

    :cond_1
    move v8, v2

    move-object v2, v1

    move v1, v8

    .line 272
    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {v2, v6}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 285
    if-nez v0, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    invoke-interface {v0, v6}, Lcom/viewpagerindicator/IconPagerAdapter;->getIconResId(I)I

    move-result v3

    goto :goto_2

    .line 290
    :cond_4
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->k:I

    if-le v0, v1, :cond_5

    .line 291
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->k:I

    .line 294
    :cond_5
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->k:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 295
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->requestLayout()V

    .line 296
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 185
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 189
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 194
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x1

    .line 142
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 143
    if-ne v2, v4, :cond_2

    move v0, v1

    .line 144
    :goto_0
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setFillViewport(Z)V

    .line 146
    iget-object v3, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Lcom/viewpagerindicator/d;

    invoke-virtual {v3}, Lcom/viewpagerindicator/d;->getChildCount()I

    move-result v3

    .line 147
    if-le v3, v1, :cond_4

    if-eq v2, v4, :cond_0

    const/high16 v1, -0x80000000

    if-ne v2, v1, :cond_4

    .line 148
    :cond_0
    const/4 v1, 0x2

    if-le v3, v1, :cond_3

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->j:I

    .line 157
    :goto_1
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v1

    .line 158
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 159
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v2

    .line 161
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    .line 163
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->k:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 165
    :cond_1
    return-void

    .line 143
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->j:I

    goto :goto_1

    .line 154
    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->j:I

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 221
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 228
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 233
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 236
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 306
    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->k:I

    .line 307
    iget-boolean v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Z

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Lcom/viewpagerindicator/d;

    invoke-virtual {v0}, Lcom/viewpagerindicator/d;->getChildCount()I

    move-result v3

    move v2, v1

    .line 315
    :goto_0
    if-ge v2, v3, :cond_4

    .line 316
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Lcom/viewpagerindicator/d;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/d;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 317
    if-ne v2, p1, :cond_3

    const/4 v0, 0x1

    .line 318
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 319
    if-eqz v0, :cond_2

    .line 320
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->a(I)V

    .line 315
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 317
    goto :goto_1

    .line 323
    :cond_4
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 328
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->l:Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    .line 138
    return-void
.end method

.method public setTabIconLocation(I)V
    .locals 3

    .prologue
    .line 128
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:I

    if-gez v0, :cond_1

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:I

    .line 131
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:[I

    sget v2, Lcom/viewpagerindicator/TabPageIndicator;->c:I

    aput v2, v1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_2
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->m:Landroid/graphics/Typeface;

    .line 124
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->notifyDataSetChanged()V

    .line 125
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 246
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 247
    if-nez v0, :cond_2

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:Landroid/support/v4/view/ViewPager;

    .line 251
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 252
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 301
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 302
    return-void
.end method
