.class Lde/gdata/mobilesecurity/activities/logs/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:Landroid/widget/ListView;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Landroid/view/ViewTreeObserver;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/m;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/m;->a:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/logs/m;->b:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 448
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/m;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 450
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/m;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v10

    move v7, v8

    move v3, v9

    .line 451
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/m;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 452
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/m;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 453
    add-int v0, v10, v7

    .line 454
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/logs/m;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->getItemId(I)J

    move-result-wide v4

    .line 455
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/m;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->g(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 456
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 457
    if-nez v0, :cond_0

    .line 461
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/logs/m;->b:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 462
    if-lez v7, :cond_1

    :goto_1
    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 464
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v4, v0, v4

    .line 465
    if-eqz v4, :cond_4

    .line 466
    if-eqz v3, :cond_2

    new-instance v6, Lde/gdata/mobilesecurity/activities/logs/n;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/logs/n;-><init>(Lde/gdata/mobilesecurity/activities/logs/m;)V

    .line 475
    :goto_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/m;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    int-to-float v4, v4

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Landroid/view/View;FFFFLjava/lang/Runnable;)V

    move v1, v8

    .line 451
    :goto_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v3, v1

    goto :goto_0

    .line 462
    :cond_1
    neg-int v0, v0

    goto :goto_1

    .line 466
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 478
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/m;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v8, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b:Z

    .line 479
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/m;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v8, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->d:Z

    .line 480
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/m;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/m;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->g(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 482
    return v9

    :cond_4
    move v1, v3

    goto :goto_3
.end method
