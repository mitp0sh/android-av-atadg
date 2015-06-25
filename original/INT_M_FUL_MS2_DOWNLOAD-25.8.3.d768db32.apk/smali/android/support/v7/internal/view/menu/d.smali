.class Landroid/support/v7/internal/view/menu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

.field private b:Landroid/support/v7/internal/view/menu/f;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/d;->b:Landroid/support/v7/internal/view/menu/f;

    .line 660
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 664
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    .line 665
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->b:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/d;->b:Landroid/support/v7/internal/view/menu/f;

    invoke-static {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)Landroid/support/v7/internal/view/menu/f;

    .line 668
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/d;)Landroid/support/v7/internal/view/menu/d;

    .line 669
    return-void
.end method
