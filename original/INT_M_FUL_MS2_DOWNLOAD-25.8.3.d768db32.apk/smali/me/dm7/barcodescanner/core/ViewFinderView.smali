.class public Lme/dm7/barcodescanner/core/ViewFinderView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final b:[I


# instance fields
.field private a:Landroid/graphics/Rect;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lme/dm7/barcodescanner/core/ViewFinderView;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private static a(FIII)I
    .locals 1

    .prologue
    .line 141
    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 142
    if-ge v0, p2, :cond_0

    .line 148
    :goto_0
    return p2

    .line 145
    :cond_0
    if-le v0, p3, :cond_1

    move p2, p3

    .line 146
    goto :goto_0

    :cond_1
    move p2, v0

    .line 148
    goto :goto_0
.end method


# virtual methods
.method public drawLaser(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 101
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 102
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_laser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    sget-object v0, Lme/dm7/barcodescanner/core/ViewFinderView;->b:[I

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:I

    aget v0, v0, v1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lme/dm7/barcodescanner/core/ViewFinderView;->b:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:I

    .line 108
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 109
    iget-object v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    const-wide/16 v2, 0x50

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v0, -0xa

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v0, -0xa

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v0, 0xa

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v0, 0xa

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lme/dm7/barcodescanner/core/ViewFinderView;->postInvalidateDelayed(JIIII)V

    .line 116
    return-void
.end method

.method public drawViewFinderBorder(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 80
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 81
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    sget v1, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    sget v1, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 87
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v6

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 88
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v6

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v6

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 91
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v6

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 93
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v6

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 94
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v6

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v6

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v6

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 98
    return-void
.end method

.method public drawViewFinderMask(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 66
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 67
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    sget v2, Lme/dm7/barcodescanner/core/R$color;->viewfinder_mask:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    .line 73
    int-to-float v3, v12

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v7, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v0

    int-to-float v9, v12

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v10, v0

    move-object v6, p1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v12

    int-to-float v4, v13

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 77
    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public declared-synchronized initFramingRect()V
    .locals 6

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 120
    if-nez v2, :cond_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 127
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 128
    const/high16 v0, 0x3f200000    # 0.625f

    iget v1, v2, Landroid/graphics/Point;->x:I

    const/16 v3, 0xf0

    const/16 v4, 0x4b0

    invoke-static {v0, v1, v3, v4}, Lme/dm7/barcodescanner/core/ViewFinderView;->a(FIII)I

    move-result v1

    .line 129
    const/high16 v0, 0x3f200000    # 0.625f

    iget v3, v2, Landroid/graphics/Point;->y:I

    const/16 v4, 0xf0

    const/16 v5, 0x2a3

    invoke-static {v0, v3, v4, v5}, Lme/dm7/barcodescanner/core/ViewFinderView;->a(FIII)I

    move-result v0

    .line 135
    :goto_1
    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 136
    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 137
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/2addr v0, v2

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_1
    const/high16 v0, 0x3f600000    # 0.875f

    :try_start_2
    iget v1, v2, Landroid/graphics/Point;->x:I

    const/16 v3, 0xf0

    const/16 v4, 0x3b1

    invoke-static {v0, v1, v3, v4}, Lme/dm7/barcodescanner/core/ViewFinderView;->a(FIII)I

    move-result v1

    .line 132
    const/high16 v0, 0x3ec00000    # 0.375f

    iget v3, v2, Landroid/graphics/Point;->y:I

    const/16 v4, 0xf0

    const/16 v5, 0x2d0

    invoke-static {v0, v3, v4, v5}, Lme/dm7/barcodescanner/core/ViewFinderView;->a(FIII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawViewFinderMask(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawViewFinderBorder(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawLaser(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setupViewFinder()V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->initFramingRect()V

    .line 47
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->invalidate()V

    .line 48
    return-void
.end method
