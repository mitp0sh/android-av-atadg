.class Landroid/support/v7/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Landroid/support/v7/app/g;

.field private b:Landroid/support/v7/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/g;Landroid/support/v7/view/ActionMode$Callback;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    iput-object p2, p0, Landroid/support/v7/app/i;->b:Landroid/support/v7/view/ActionMode$Callback;

    .line 670
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Landroid/support/v7/app/i;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Landroid/support/v7/app/i;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Landroid/support/v7/app/i;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    .line 686
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/g;

    iget-object v0, v0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    .line 687
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/g;->a(Landroid/support/v7/app/g;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 688
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Landroid/support/v7/app/i;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
