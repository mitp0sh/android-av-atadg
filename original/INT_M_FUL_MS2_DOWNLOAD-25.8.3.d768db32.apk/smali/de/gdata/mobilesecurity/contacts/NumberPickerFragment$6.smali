.class Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# instance fields
.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$6;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 484
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 495
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 486
    :pswitch_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$6;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->uncheckAllItems()V

    .line 487
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    goto :goto_0

    .line 490
    :pswitch_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$6;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->onAddClicked()V

    .line 491
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    const/4 v0, 0x3

    const v1, 0x7f0d0207

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020101

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 468
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 470
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$6;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$6;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_actionMode:Landroid/support/v7/view/ActionMode;

    .line 501
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$6;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->uncheckAllItems()V

    .line 502
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$6;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->fixActionModeTextColor(Landroid/app/Activity;)V

    .line 479
    const/4 v0, 0x0

    return v0
.end method
