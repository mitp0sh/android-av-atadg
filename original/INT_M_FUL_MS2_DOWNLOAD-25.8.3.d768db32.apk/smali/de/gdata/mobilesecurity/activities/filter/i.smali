.class Lde/gdata/mobilesecurity/activities/filter/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/g;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/g;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 752
    move v0, v1

    .line 754
    :goto_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/filter/g;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v4, v4, Lde/gdata/mobilesecurity/activities/filter/g;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isColliding(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 755
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/filter/g;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v4, v4, Lde/gdata/mobilesecurity/activities/filter/g;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isColliding(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v3

    .line 756
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v4, v4, Lde/gdata/mobilesecurity/activities/filter/g;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v4, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->isNoBusinessFilter(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 757
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setActivated(Z)V

    .line 758
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/g;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateInDB(Landroid/content/Context;)I

    move v0, v2

    .line 759
    goto :goto_0

    .line 761
    :cond_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/filter/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    const v5, 0x7f0d03ae

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/filter/g;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 766
    :cond_1
    if-eqz v0, :cond_3

    .line 767
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/g;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setActivated(Z)V

    .line 768
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/g;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/filter/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateInDB(Landroid/content/Context;)I

    .line 769
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/g;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/filter/g;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 773
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/g;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->notifyDataSetChanged()V

    .line 779
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 780
    return-void

    .line 775
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/g;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/i;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/g;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
