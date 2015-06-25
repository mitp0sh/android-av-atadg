.class Lde/gdata/mobilesecurity/activities/logs/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/logs/c;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/c;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/d;->b:Lde/gdata/mobilesecurity/activities/logs/c;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/d;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 487
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/d;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/d;->b:Lde/gdata/mobilesecurity/activities/logs/c;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/c;->a:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/d;->b:Lde/gdata/mobilesecurity/activities/logs/c;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/c;->f:Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->setExpanded(Z)V

    .line 491
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/d;->b:Lde/gdata/mobilesecurity/activities/logs/c;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setEnabled(Z)V

    .line 492
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/d;->b:Lde/gdata/mobilesecurity/activities/logs/c;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/c;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setClickable(Z)V

    .line 498
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/d;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 499
    return-void
.end method
