.class public Lde/gdata/mobilesecurity/util/FitEndScaledImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Matrix;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->b:Z

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->a:Landroid/graphics/Matrix;

    .line 23
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 24
    return-void
.end method

.method private a(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 40
    :cond_0
    int-to-float v1, p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 41
    int-to-float v2, p2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 43
    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    .line 44
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1, v4, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 45
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->a:Landroid/graphics/Matrix;

    int-to-float v3, p2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float v0, v3, v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 52
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v2, v4, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 49
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->a:Landroid/graphics/Matrix;

    int-to-float v3, p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float v0, v3, v0

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1
.end method


# virtual methods
.method protected setFrame(IIII)Z
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->a:Landroid/graphics/Matrix;

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->b:Z

    .line 63
    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-direct {p0, v1, v2}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->a(II)V

    .line 66
    :cond_0
    return v0
.end method

.method public setImageResource(I)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->a(II)V

    .line 74
    return-void
.end method
