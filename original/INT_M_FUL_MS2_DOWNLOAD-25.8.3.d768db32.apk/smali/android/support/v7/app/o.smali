.class Landroid/support/v7/app/o;
.super Landroid/support/v7/view/ActionMode;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarImplBase;

.field private b:Landroid/support/v7/view/ActionMode$Callback;

.field private c:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarImplBase;Landroid/support/v7/view/ActionMode$Callback;)V
    .locals 2

    .prologue
    .line 756
    iput-object p1, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-direct {p0}, Landroid/support/v7/view/ActionMode;-><init>()V

    .line 757
    iput-object p2, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/view/ActionMode$Callback;

    .line 758
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarImplBase;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 760
    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V

    .line 761
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 815
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 817
    iget-object v1, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 775
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarImplBase;->a:Landroid/support/v7/app/o;

    if-eq v0, p0, :cond_0

    .line 800
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->c(Landroid/support/v7/app/ActionBarImplBase;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v1}, Landroid/support/v7/app/ActionBarImplBase;->d(Landroid/support/v7/app/ActionBarImplBase;)Z

    move-result v1

    invoke-static {v0, v1, v2}, Landroid/support/v7/app/ActionBarImplBase;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    iput-object p0, v0, Landroid/support/v7/app/ActionBarImplBase;->b:Landroid/support/v7/view/ActionMode;

    .line 788
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    iget-object v1, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/view/ActionMode$Callback;

    iput-object v1, v0, Landroid/support/v7/app/ActionBarImplBase;->c:Landroid/support/v7/view/ActionMode$Callback;

    .line 792
    :goto_1
    iput-object v3, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/view/ActionMode$Callback;

    .line 793
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBarImplBase;->a(Z)V

    .line 796
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->e(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->closeMode()V

    .line 797
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->f(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarView;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->sendAccessibilityEvent(I)V

    .line 799
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    iput-object v3, v0, Landroid/support/v7/app/ActionBarImplBase;->a:Landroid/support/v7/app/o;

    goto :goto_0

    .line 790
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Landroid/support/v7/app/o;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/o;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 765
    new-instance v0, Landroid/support/v7/internal/view/SupportMenuInflater;

    iget-object v1, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarImplBase;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->e(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->e(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 806
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 810
    return-void

    .line 808
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->e(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 877
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 888
    :goto_0
    return-void

    .line 886
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/o;->invalidate()V

    .line 887
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->e(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->e(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 824
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/app/o;->d:Ljava/lang/ref/WeakReference;

    .line 825
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->b(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/o;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 845
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->e(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 830
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->b(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/o;->setTitle(Ljava/lang/CharSequence;)V

    .line 840
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->e(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 835
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .prologue
    .line 859
    invoke-super {p0, p1}, Landroid/support/v7/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 860
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->e(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 861
    return-void
.end method
