.class Landroid/support/v7/internal/view/menu/o;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# instance fields
.field final a:Landroid/support/v7/view/CollapsibleActionView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    .line 443
    check-cast v0, Landroid/support/v7/view/CollapsibleActionView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/view/CollapsibleActionView;

    .line 444
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/o;->addView(Landroid/view/View;)V

    .line 445
    return-void
.end method


# virtual methods
.method a()Landroid/view/View;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/view/CollapsibleActionView;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onActionViewCollapsed()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 455
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 450
    return-void
.end method
