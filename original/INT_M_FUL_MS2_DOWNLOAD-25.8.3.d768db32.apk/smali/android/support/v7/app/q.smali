.class Landroid/support/v7/app/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Landroid/support/v7/app/p;

.field private final b:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Landroid/support/v7/app/q;->b:Landroid/view/ActionMode$Callback;

    .line 77
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v7/app/q;->b:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v7/app/q;->b:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    invoke-static {v1, p1}, Landroid/support/v7/app/p;->a(Landroid/support/v7/app/p;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 86
    iget-object v1, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    invoke-virtual {v1}, Landroid/support/v7/app/p;->a()V

    .line 88
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v7/app/q;->b:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 106
    iget-object v0, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    invoke-virtual {v0}, Landroid/support/v7/app/p;->b()V

    .line 108
    iget-object v0, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/p;->a(Landroid/support/v7/app/p;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 109
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/app/q;->b:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
