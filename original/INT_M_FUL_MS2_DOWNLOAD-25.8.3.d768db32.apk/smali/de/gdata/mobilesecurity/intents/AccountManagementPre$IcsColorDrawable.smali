.class public Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/AccountManagementPre;

.field private b:I

.field private final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/intents/AccountManagementPre;I)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->a:Lde/gdata/mobilesecurity/intents/AccountManagementPre;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->c:Landroid/graphics/Paint;

    .line 91
    iput p2, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->b:I

    .line 92
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->b:I

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->c:Landroid/graphics/Paint;

    iget v1, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 100
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->b:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->b:I

    ushr-int/lit8 v0, v0, 0x18

    if-eq p1, v0, :cond_0

    .line 105
    iget v0, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->b:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x18

    and-int/2addr v0, v1

    iput v0, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->b:I

    .line 106
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;->invalidateSelf()V

    .line 108
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
