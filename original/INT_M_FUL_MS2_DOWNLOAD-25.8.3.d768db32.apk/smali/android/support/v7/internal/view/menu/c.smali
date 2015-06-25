.class Landroid/support/v7/internal/view/menu/c;
.super Landroid/support/v7/internal/view/menu/MenuDialogHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V
    .locals 1

    .prologue
    .line 621
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/c;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 622
    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/MenuDialogHelper;-><init>(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 623
    iget-object v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 624
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 628
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->onDismiss(Landroid/content/DialogInterface;)V

    .line 629
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/c;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/c;)Landroid/support/v7/internal/view/menu/c;

    .line 630
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/c;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b:I

    .line 631
    return-void
.end method
