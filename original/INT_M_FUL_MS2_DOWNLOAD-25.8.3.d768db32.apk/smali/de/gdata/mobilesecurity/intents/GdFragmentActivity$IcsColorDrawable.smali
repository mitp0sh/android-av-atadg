.class public Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/GdFragmentActivity;

.field private b:I

.field private final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/intents/GdFragmentActivity;I)V
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->a:Lde/gdata/mobilesecurity/intents/GdFragmentActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->c:Landroid/graphics/Paint;

    .line 43
    iput p2, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->b:I

    .line 44
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->b:I

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->c:Landroid/graphics/Paint;

    iget v1, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 52
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->b:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->b:I

    ushr-int/lit8 v0, v0, 0x18

    if-eq p1, v0, :cond_0

    .line 57
    iget v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->b:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x18

    and-int/2addr v0, v1

    iput v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->b:I

    .line 58
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;->invalidateSelf()V

    .line 60
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
