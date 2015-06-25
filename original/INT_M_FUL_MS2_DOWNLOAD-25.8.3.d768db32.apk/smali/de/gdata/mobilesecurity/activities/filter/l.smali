.class Lde/gdata/mobilesecurity/activities/filter/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/l;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/filter/l;->a:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 477
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/l;->a:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/l;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isColliding(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v0

    .line 478
    if-nez v0, :cond_0

    .line 479
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 481
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/l;->a:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setActivated(Z)V

    .line 482
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/l;->a:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/l;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateInDB(Landroid/content/Context;)I

    .line 483
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/l;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->notifyDataSetChanged()V

    .line 491
    :goto_0
    return-void

    .line 485
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/l;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/l;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/l;->a:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-direct {v0, v1, v2, v3}, Lde/gdata/mobilesecurity/activities/filter/g;-><init>(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/l;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "DISABLE_DIALOG"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/filter/g;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
