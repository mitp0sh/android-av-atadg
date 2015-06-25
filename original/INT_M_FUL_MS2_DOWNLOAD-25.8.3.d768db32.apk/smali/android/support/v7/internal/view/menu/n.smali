.class Landroid/support/v7/internal/view/menu/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

.field final synthetic b:Landroid/support/v7/internal/view/menu/m;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/m;Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->b:Landroid/support/v7/internal/view/menu/m;

    iput-object p2, p0, Landroid/support/v7/internal/view/menu/n;->a:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->b:Landroid/support/v7/internal/view/menu/m;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->b:Landroid/support/v7/internal/view/menu/m;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->b(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->b:Landroid/support/v7/internal/view/menu/m;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->a(Z)Landroid/view/MenuItem;

    .line 406
    :cond_0
    return-void
.end method
