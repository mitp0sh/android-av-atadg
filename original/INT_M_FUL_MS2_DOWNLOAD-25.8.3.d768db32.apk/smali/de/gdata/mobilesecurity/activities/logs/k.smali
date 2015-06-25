.class Lde/gdata/mobilesecurity/activities/logs/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/k;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/k;->a:Landroid/view/View;

    iput-boolean p3, p0, Lde/gdata/mobilesecurity/activities/logs/k;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 380
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/k;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 381
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/k;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 382
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/k;->b:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/k;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/k;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/k;->a:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Landroid/widget/ListView;Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/k;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->d(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/k;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->e(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0518

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->showUndoBar(ZLjava/lang/CharSequence;Landroid/os/Parcelable;)V

    .line 390
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/k;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v3, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->c:Z

    .line 391
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/k;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v3, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b:Z

    .line 387
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/k;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v3, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->d:Z

    .line 388
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/k;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setEnabled(Z)V

    goto :goto_0
.end method
