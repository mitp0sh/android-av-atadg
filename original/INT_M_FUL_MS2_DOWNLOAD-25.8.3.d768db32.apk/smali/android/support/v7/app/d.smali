.class Landroid/support/v7/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;


# instance fields
.field final synthetic a:Landroid/support/v7/app/b;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/b;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/b;Landroid/support/v7/app/c;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Landroid/support/v7/app/d;-><init>(Landroid/support/v7/app/b;)V

    return-void
.end method


# virtual methods
.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/b;

    iget-object v0, v0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/ActionBarActivity;

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/b;

    invoke-virtual {v2}, Landroid/support/v7/app/b;->i()I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 221
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    return-object v1
.end method

.method public setActionBarDescription(I)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 232
    :cond_0
    return-void
.end method
