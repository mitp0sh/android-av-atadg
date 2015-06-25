.class Lde/gdata/mobilesecurity/activities/filter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;Landroid/widget/CheckBox;Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/c;->c:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/filter/c;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/filter/c;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 509
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->d()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/c;->c:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/d;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/c;->c:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/c;->c:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->d(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/filter/d;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 515
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/c;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 516
    :cond_1
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 517
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 518
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->d()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 519
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->d()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 521
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 523
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/c;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_4
    return-void
.end method
