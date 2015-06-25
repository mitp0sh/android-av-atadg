.class public Lcom/viewpagerindicator/TitlePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# static fields
.field static final synthetic a:Z


# instance fields
.field private A:I

.field private B:Z

.field private C:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

.field private final b:Z

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private e:I

.field private f:F

.field private g:I

.field private final h:Landroid/graphics/Paint;

.field private i:Z

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Path;

.field private final m:Landroid/graphics/Rect;

.field private final n:Landroid/graphics/Paint;

.field private o:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field private p:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

.field private final q:Landroid/graphics/Paint;

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/viewpagerindicator/R$attr;->vpiTitlePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21

    .prologue
    .line 157
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    .line 119
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    .line 123
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    .line 124
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Rect;

    .line 125
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    .line 128
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:Landroid/graphics/Paint;

    .line 141
    const/high16 v5, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->z:F

    .line 142
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 161
    sget-boolean v6, Lcom/viewpagerindicator/TitlePageIndicator;->a:Z

    if-nez v6, :cond_0

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 163
    :cond_0
    sget v6, Lcom/viewpagerindicator/R$color;->default_title_indicator_footer_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 164
    sget v7, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_line_height:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 165
    sget v8, Lcom/viewpagerindicator/R$integer;->default_title_indicator_footer_indicator_style:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 166
    sget v9, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_indicator_height:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 167
    sget v10, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_indicator_underline_padding:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 168
    sget v11, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_padding:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 169
    sget v12, Lcom/viewpagerindicator/R$integer;->default_title_indicator_line_position:I

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 170
    sget v13, Lcom/viewpagerindicator/R$color;->default_title_indicator_selected_color:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 171
    sget v14, Lcom/viewpagerindicator/R$bool;->default_title_indicator_selected_bold:I

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 172
    sget v15, Lcom/viewpagerindicator/R$color;->default_title_indicator_text_color:I

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 173
    sget v16, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_text_size:I

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    .line 174
    sget v17, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_title_padding:I

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 175
    sget v18, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_clip_padding:I

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 176
    sget v19, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_top_padding:I

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 179
    sget-object v19, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator:[I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 180
    sget-boolean v20, Lcom/viewpagerindicator/TitlePageIndicator;->a:Z

    if-nez v20, :cond_1

    if-nez v19, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 183
    :cond_1
    const/16 v20, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    .line 184
    const/4 v7, 0x7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-static {v7}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 185
    const/16 v7, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    .line 186
    const/16 v7, 0x9

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    .line 187
    const/16 v7, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    .line 188
    const/16 v7, 0xb

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-static {v7}, Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;->fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    .line 189
    const/16 v7, 0xe

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    .line 190
    const/16 v5, 0xd

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    .line 191
    const/4 v5, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    .line 192
    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->k:I

    .line 193
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:I

    .line 194
    const/16 v5, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Z

    .line 196
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 197
    const/4 v7, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 198
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 199
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 207
    if-eqz v5, :cond_2

    .line 208
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/viewpagerindicator/TitlePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 214
    invoke-static {v5}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->isInEditMode()Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Z

    .line 217
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Z

    if-eqz v5, :cond_3

    .line 218
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    .line 220
    :cond_3
    return-void
.end method

.method private a(ILandroid/graphics/Paint;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 716
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 718
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 719
    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 720
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 722
    return-object v1
.end method

.method private a(I)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Z

    if-eqz v0, :cond_1

    .line 884
    const-string v0, "Page %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 891
    :cond_0
    :goto_0
    return-object v0

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 887
    if-nez v0, :cond_0

    .line 888
    sget-object v0, Lcom/viewpagerindicator/TitlePageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private a(Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 681
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 684
    iget-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Z

    if-eqz v0, :cond_0

    .line 685
    const/4 v0, 0x5

    .line 690
    :goto_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v4

    .line 691
    div-int/lit8 v5, v4, 0x2

    move v1, v2

    .line 694
    :goto_1
    if-ge v1, v0, :cond_1

    .line 695
    invoke-direct {p0, v1, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->a(ILandroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v6

    .line 696
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    .line 697
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    .line 698
    int-to-float v9, v5

    int-to-float v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    sub-int v10, v1, v10

    int-to-float v10, v10

    iget v11, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:F

    sub-float/2addr v10, v11

    int-to-float v11, v4

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 699
    iget v9, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v9

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 700
    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 701
    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 702
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 705
    :cond_1
    return-object v3
.end method

.method private a(Landroid/graphics/Rect;FI)V
    .locals 2

    .prologue
    .line 659
    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 660
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 661
    return-void
.end method

.method private b(Landroid/graphics/Rect;FI)V
    .locals 2

    .prologue
    .line 670
    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 671
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 672
    return-void
.end method


# virtual methods
.method public getClipPadding()F
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    return v0
.end method

.method public getFooterColor()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFooterIndicatorHeight()F
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    return v0
.end method

.method public getFooterIndicatorPadding()F
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    return v0
.end method

.method public getFooterIndicatorStyle()Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public getFooterLineHeight()F
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    return v0
.end method

.method public getLinePosition()Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->p:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->j:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTitlePadding()F
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    return v0
.end method

.method public getTopPadding()F
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isSelectedBold()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 750
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25

    .prologue
    .line 359
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 362
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Z

    if-eqz v2, :cond_1

    .line 363
    const/4 v2, 0x5

    move v15, v2

    .line 368
    :goto_0
    if-nez v15, :cond_2

    .line 555
    :cond_0
    :goto_1
    return-void

    .line 365
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    move v15, v2

    goto :goto_0

    .line 373
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_3

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    .line 378
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v16

    .line 381
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 382
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    move/from16 v0, v17

    if-lt v2, v0, :cond_4

    .line 383
    add-int/lit8 v2, v17, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    goto :goto_1

    .line 387
    :cond_4
    add-int/lit8 v5, v15, -0x1

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v18, v2, v3

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getLeft()I

    move-result v19

    .line 390
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    add-float v6, v2, v3

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v20

    .line 392
    add-int v21, v19, v20

    .line 393
    move/from16 v0, v21

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    sub-float v7, v2, v3

    .line 397
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:F

    float-to-double v2, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_8

    .line 398
    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    .line 399
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:F

    move v14, v3

    move v3, v2

    .line 404
    :goto_2
    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_9

    const/4 v2, 0x1

    move v13, v2

    .line 405
    :goto_3
    const v2, 0x3d4ccccd    # 0.05f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_a

    const/4 v2, 0x1

    move v10, v2

    .line 406
    :goto_4
    const/high16 v2, 0x3e800000    # 0.25f

    sub-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    div-float v22, v2, v3

    .line 409
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 410
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 411
    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_5

    .line 413
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->b(Landroid/graphics/Rect;FI)V

    .line 415
    :cond_5
    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    .line 417
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Rect;FI)V

    .line 421
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    if-lez v2, :cond_b

    .line 422
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_5
    if-ltz v4, :cond_b

    .line 423
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 425
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_7

    .line 426
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v3, v8

    .line 428
    int-to-float v3, v8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->b(Landroid/graphics/Rect;FI)V

    .line 430
    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 432
    iget v9, v2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float/2addr v9, v11

    iget v11, v3, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpl-float v9, v9, v11

    if-lez v9, :cond_7

    .line 433
    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    sub-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 434
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 422
    :cond_7
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_5

    .line 401
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    add-int/lit8 v3, v2, 0x1

    .line 402
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:F

    sub-float/2addr v2, v4

    move v14, v3

    move v3, v2

    goto/16 :goto_2

    .line 404
    :cond_9
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_3

    .line 405
    :cond_a
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_4

    .line 441
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    if-ge v2, v5, :cond_d

    .line 442
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    :goto_6
    if-ge v4, v15, :cond_d

    .line 443
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 445
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_c

    .line 446
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    .line 448
    int-to-float v3, v5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Rect;FI)V

    .line 450
    add-int/lit8 v3, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 452
    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    sub-float/2addr v6, v8

    iget v8, v3, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_c

    .line 453
    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 454
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 442
    :cond_c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_6

    .line 461
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:I

    ushr-int/lit8 v23, v2, 0x18

    .line 462
    const/4 v2, 0x0

    move v12, v2

    :goto_7
    if-ge v12, v15, :cond_15

    .line 464
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/graphics/Rect;

    .line 466
    iget v2, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, v19

    if-le v2, v0, :cond_e

    iget v2, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, v21

    if-lt v2, v0, :cond_f

    :cond_e
    iget v2, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, v19

    if-le v2, v0, :cond_12

    iget v2, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, v21

    if-ge v2, v0, :cond_12

    .line 467
    :cond_f
    if-ne v12, v14, :cond_13

    const/4 v2, 0x1

    move v11, v2

    .line 468
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/viewpagerindicator/TitlePageIndicator;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    if-eqz v11, :cond_14

    if-eqz v10, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    if-eqz v11, :cond_10

    if-eqz v13, :cond_10

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    move/from16 v0, v23

    int-to-float v4, v0

    mul-float v4, v4, v22

    float-to-int v4, v4

    sub-int v4, v23, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 481
    :cond_10
    add-int/lit8 v2, v17, -0x1

    if-ge v12, v2, :cond_11

    .line 482
    add-int/lit8 v2, v12, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 484
    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_11

    .line 485
    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v5, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 486
    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 487
    iget v2, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 490
    :cond_11
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 493
    if-eqz v11, :cond_12

    if-eqz v13, :cond_12

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->k:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->k:I

    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    mul-float v4, v4, v22

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 496
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 462
    :cond_12
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_7

    .line 467
    :cond_13
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_8

    .line 471
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 505
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    sget-object v3, Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;->Top:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    if-ne v2, v3, :cond_16

    .line 506
    const/4 v4, 0x0

    .line 507
    const/4 v3, 0x0

    .line 508
    const/4 v2, 0x0

    move/from16 v24, v2

    move v2, v3

    move/from16 v3, v24

    .line 516
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 517
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    const/4 v6, 0x0

    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 518
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    move/from16 v0, v20

    int-to-float v6, v0

    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 519
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 520
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 522
    int-to-float v4, v4

    sub-float/2addr v4, v2

    .line 523
    sget-object v2, Lcom/viewpagerindicator/j;->a:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v5}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 525
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    sub-float v5, v4, v3

    move/from16 v0, v18

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    add-float v5, v18, v3

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    sub-float v3, v18, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 510
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getHeight()I

    move-result v4

    .line 511
    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    .line 512
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    move/from16 v24, v2

    move v2, v3

    move/from16 v3, v24

    goto/16 :goto_a

    .line 534
    :pswitch_1
    if-eqz v13, :cond_0

    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 538
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 539
    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    add-float/2addr v5, v6

    .line 540
    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    sub-float/2addr v2, v6

    .line 541
    sub-float v3, v4, v3

    .line 543
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 544
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 545
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, v22

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    .line 523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 811
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 815
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 816
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    .line 818
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 828
    :cond_0
    :goto_0
    float-to-int v0, v0

    .line 830
    invoke-virtual {p0, v1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    .line 831
    return-void

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 822
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 823
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    add-float/2addr v0, v2

    .line 824
    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    sget-object v3, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    if-eq v2, v3, :cond_0

    .line 825
    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    add-float/2addr v0, v2

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 773
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->g:I

    .line 775
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 778
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 782
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    .line 783
    iput p2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:F

    .line 784
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 786
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 789
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 793
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->g:I

    if-nez v0, :cond_0

    .line 794
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    .line 795
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 801
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 835
    check-cast p1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    .line 836
    invoke-virtual {p1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 837
    iget v0, p1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    .line 838
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->requestLayout()V

    .line 839
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 843
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 844
    new-instance v1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 845
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->a:I

    .line 846
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 558
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v1

    .line 561
    :cond_1
    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 562
    goto :goto_0

    .line 565
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 566
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 568
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    .line 569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:F

    goto :goto_0

    .line 573
    :pswitch_2
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 574
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 575
    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:F

    sub-float v2, v0, v2

    .line 577
    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->B:Z

    if-nez v3, :cond_4

    .line 578
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 579
    iput-boolean v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->B:Z

    .line 583
    :cond_4
    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->B:Z

    if-eqz v3, :cond_0

    .line 584
    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:F

    .line 585
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 595
    :pswitch_3
    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->B:Z

    if-nez v3, :cond_8

    .line 596
    iget-object v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 597
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v4

    .line 598
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 599
    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 600
    sub-float v6, v5, v4

    .line 601
    add-float/2addr v4, v5

    .line 602
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 604
    cmpg-float v6, v5, v6

    if-gez v6, :cond_6

    .line 605
    iget v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    if-lez v3, :cond_8

    .line 606
    if-eq v2, v7, :cond_0

    .line 607
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 611
    :cond_6
    cmpl-float v4, v5, v4

    if-lez v4, :cond_7

    .line 612
    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_8

    .line 613
    if-eq v2, v7, :cond_0

    .line 614
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 620
    :cond_7
    iget-object v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->C:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    if-eqz v3, :cond_8

    if-eq v2, v7, :cond_8

    .line 621
    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->C:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    iget v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    invoke-interface {v2, v3}, Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;->onCenterItemClick(I)V

    .line 626
    :cond_8
    iput-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->B:Z

    .line 627
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    .line 628
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    .line 632
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 633
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:F

    .line 634
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    goto/16 :goto_0

    .line 639
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 640
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 641
    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    if-ne v3, v4, :cond_a

    .line 642
    if-nez v2, :cond_9

    move v0, v1

    .line 643
    :cond_9
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    .line 645
    :cond_a
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:F

    goto/16 :goto_0

    .line 566
    nop

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

.method public setClipPadding(F)V
    .locals 0

    .prologue
    .line 339
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    .line 340
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 341
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 767
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    .line 768
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 769
    return-void
.end method

.method public setFooterColor(I)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 231
    return-void
.end method

.method public setFooterIndicatorHeight(F)V
    .locals 0

    .prologue
    .line 248
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    .line 249
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 250
    return-void
.end method

.method public setFooterIndicatorPadding(F)V
    .locals 0

    .prologue
    .line 257
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    .line 258
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 259
    return-void
.end method

.method public setFooterIndicatorStyle(Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 267
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 268
    return-void
.end method

.method public setFooterLineHeight(F)V
    .locals 2

    .prologue
    .line 238
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    .line 239
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 240
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 241
    return-void
.end method

.method public setLinePosition(Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->p:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    .line 276
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 277
    return-void
.end method

.method public setOnCenterItemClickListener(Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->C:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    .line 759
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 806
    return-void
.end method

.method public setSelectedBold(Z)V
    .locals 0

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Z

    .line 294
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 295
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    .prologue
    .line 284
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:I

    .line 285
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 286
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->j:I

    .line 304
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 305
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 313
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 314
    return-void
.end method

.method public setTitlePadding(F)V
    .locals 0

    .prologue
    .line 321
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    .line 322
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 323
    return-void
.end method

.method public setTopPadding(F)V
    .locals 0

    .prologue
    .line 330
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    .line 331
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 332
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 345
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 346
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 739
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 733
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 734
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    .line 737
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 738
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 743
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 744
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    .line 745
    return-void
.end method
