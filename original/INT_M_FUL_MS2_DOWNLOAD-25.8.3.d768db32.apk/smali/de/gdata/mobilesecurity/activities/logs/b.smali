.class Lde/gdata/mobilesecurity/activities/logs/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/logs/a;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/a;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/b;->a:Lde/gdata/mobilesecurity/activities/logs/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 283
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/b;->a:Lde/gdata/mobilesecurity/activities/logs/a;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/a;->f:Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->setExpanded(Z)V

    .line 284
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/b;->a:Lde/gdata/mobilesecurity/activities/logs/a;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/b;->a:Lde/gdata/mobilesecurity/activities/logs/a;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setClickable(Z)V

    .line 286
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/b;->a:Lde/gdata/mobilesecurity/activities/logs/a;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->c(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 287
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/b;->a:Lde/gdata/mobilesecurity/activities/logs/a;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->c(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 288
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/b;->a:Lde/gdata/mobilesecurity/activities/logs/a;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->c(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 292
    return-void
.end method
