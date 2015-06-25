.class Lde/gdata/mobilesecurity/activities/filter/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

.field final synthetic d:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;ILandroid/widget/CheckBox;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/j;->d:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iput p2, p0, Lde/gdata/mobilesecurity/activities/filter/j;->a:I

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/filter/j;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/filter/j;->c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item clicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/activities/filter/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/j;->d:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/filter/j;->a:I

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/j;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/j;->d:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/n;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/j;->d:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/j;->d:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    invoke-direct {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/filter/n;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 414
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/j;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/j;->c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 415
    :cond_1
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/j;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 416
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 417
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 418
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 420
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 422
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/j;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/j;->c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_4
    return-void
.end method
