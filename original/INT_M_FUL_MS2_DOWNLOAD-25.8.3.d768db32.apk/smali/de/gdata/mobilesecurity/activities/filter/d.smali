.class Lde/gdata/mobilesecurity/activities/filter/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# instance fields
.field a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

.field b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;)V
    .locals 0

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/filter/d;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    .line 556
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/d;->b:Landroid/app/Activity;

    .line 557
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 581
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/d;->b:Landroid/app/Activity;

    const-string v1, "deleteSelectedItemsFromDatabase"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 584
    :try_start_0
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    .line 585
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/d;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->remove(Ljava/lang/Object;)V

    .line 586
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 588
    const-string v3, "filterlist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    const-string v0, "Delete Statement caused an exception"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 596
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 597
    return-void

    .line 590
    :cond_0
    :try_start_1
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 591
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 604
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/d;->a()V

    .line 606
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    .line 607
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/d;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->remove(Ljava/lang/Object;)V

    .line 608
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 610
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 611
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/d;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->notifyDataSetChanged()V

    .line 612
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 616
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->f()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 617
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    .line 618
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 620
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->e()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 621
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/d;->b()V

    .line 622
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 623
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 625
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/d;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->notifyDataSetChanged()V

    .line 627
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 561
    const v0, 0x7f0d01c9

    invoke-virtual {p1, v0}, Landroid/support/v7/view/ActionMode;->setTitle(I)V

    .line 563
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->e()I

    move-result v0

    const v1, 0x7f0d01c8

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020113

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 565
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 566
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->f()I

    move-result v0

    const v1, 0x7f0d0153

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 568
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .prologue
    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call onDestroyActionMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 635
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 636
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/d;->a:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->notifyDataSetChanged()V

    .line 637
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/d;->b:Landroid/app/Activity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->fixActionModeTextColor(Landroid/app/Activity;)V

    .line 577
    const/4 v0, 0x0

    return v0
.end method
