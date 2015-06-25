.class Lde/gdata/mobilesecurity/privacy/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/ag;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/ag;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 676
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    .line 678
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->setChecked(Z)V

    .line 679
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 680
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Z)Z

    .line 682
    sget-object v1, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/ag;->notifyDataSetInvalidated()V

    .line 683
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v2, v1, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    new-instance v3, Lde/gdata/mobilesecurity/privacy/af;

    iget-object v4, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v4, v4, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    iget-object v5, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v5, v5, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget-object v6, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-direct {v3, v4, v5, v6}, Lde/gdata/mobilesecurity/privacy/af;-><init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Landroid/app/Activity;Lde/gdata/mobilesecurity/privacy/ag;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    invoke-static {v2, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 687
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 688
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_1
    :goto_1
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ag;->notifyDataSetChanged()V

    .line 701
    return-void

    :cond_2
    move v1, v3

    .line 678
    goto :goto_0

    .line 691
    :cond_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 693
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 694
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ag;->b()V

    .line 695
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Z)Z

    .line 696
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ah;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    goto :goto_1
.end method
