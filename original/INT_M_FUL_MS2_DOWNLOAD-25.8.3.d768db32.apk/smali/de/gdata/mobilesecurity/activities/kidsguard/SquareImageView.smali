.class public Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field public static MAX_SIZE:F

.field public static MIN_SIZE:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->MAX_SIZE:F

    .line 11
    const v0, 0x3ecccccd    # 0.4f

    sput v0, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->MIN_SIZE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 29
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 30
    sget v1, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->MIN_SIZE:F

    sget v2, Lde/gdata/mobilesecurity/activities/kidsguard/PaddedFrameLayout;->MAX_SIZE:F

    sget v3, Lde/gdata/mobilesecurity/activities/kidsguard/PaddedFrameLayout;->MIN_SIZE:F

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardAppLayoutSize()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 32
    sget v2, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->MIN_SIZE:F

    sget v3, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->MAX_SIZE:F

    sget v4, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->MIN_SIZE:F

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardAppIconSize()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 34
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->getMeasuredWidth()I

    move-result v1

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    .line 35
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->getMeasuredHeight()I

    move-result v2

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    .line 37
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->getMeasuredHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 38
    invoke-virtual {p0, v1, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->setMeasuredDimension(II)V

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0, v0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/SquareImageView;->setMeasuredDimension(II)V

    goto :goto_0
.end method
