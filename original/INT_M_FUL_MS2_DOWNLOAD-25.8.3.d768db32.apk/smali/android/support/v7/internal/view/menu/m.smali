.class Landroid/support/v7/internal/view/menu/m;
.super Landroid/view/ActionProvider;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v4/view/ActionProvider;

.field final synthetic b:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/support/v4/view/ActionProvider;)V
    .locals 2

    .prologue
    .line 395
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    .line 396
    invoke-virtual {p2}, Landroid/support/v4/view/ActionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 397
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v4/view/ActionProvider;

    .line 399
    invoke-static {p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->a(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v4/view/ActionProvider;

    new-instance v1, Landroid/support/v7/internal/view/menu/n;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/view/menu/n;-><init>(Landroid/support/v7/internal/view/menu/m;Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    .line 409
    :cond_0
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->a(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->b()Z

    .line 418
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v4/view/ActionProvider;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 434
    return-void
.end method
