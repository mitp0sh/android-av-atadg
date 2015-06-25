.class Lde/gdata/mobilesecurity/activities/logs/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/l;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean p2, p0, Lde/gdata/mobilesecurity/activities/logs/l;->a:Z

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/logs/l;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 404
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/l;->a:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/l;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/l;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/l;->b:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Landroid/widget/ListView;Landroid/view/View;)V

    .line 406
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/l;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->d(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/l;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->f(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0518

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->showUndoBar(ZLjava/lang/CharSequence;Landroid/os/Parcelable;)V

    .line 412
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/l;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v3, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->c:Z

    .line 413
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/l;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v3, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b:Z

    .line 409
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/l;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v3, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->d:Z

    .line 410
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/l;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setEnabled(Z)V

    goto :goto_0
.end method
