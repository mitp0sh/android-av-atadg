.class Lde/gdata/mobilesecurity/activities/browser/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# instance fields
.field a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

.field b:Landroid/app/Activity;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/t;->c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/browser/t;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    .line 375
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/browser/t;->b:Landroid/app/Activity;

    .line 376
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 396
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    .line 397
    invoke-static {}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 398
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 401
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    const v0, 0x7f0d0152

    invoke-virtual {p1, v0}, Landroid/support/v7/view/ActionMode;->setTitle(I)V

    .line 382
    const/16 v0, 0x68

    const v1, 0x7f0d015d

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020094

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 384
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a(Z)Z

    .line 408
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/t;->c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/t;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->removeSelectedItems(Landroid/content/Context;)V

    .line 410
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/t;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->notifyDataSetChanged()V

    .line 411
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method
