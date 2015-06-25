.class Lde/gdata/mobilesecurity/activities/callfilter/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# instance fields
.field a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

.field b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/callfilter/g;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    .line 450
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/g;->b:Landroid/app/Activity;

    .line 451
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 472
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/g;->b:Landroid/app/Activity;

    const-string v1, "deleteSelectedItemsFromDatabase"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 475
    :try_start_0
    const-string v1, "DELETE FROM logblockings WHERE id = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 477
    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->d()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 478
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 479
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    const-string v0, "Statement DELETE FROM logblockings WHERE id = ? caused an exception"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 485
    :cond_0
    const-string v0, "deleteSelectedItemsFromDatabase"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method private b()V
    .locals 10

    .prologue
    .line 492
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 493
    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->d()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 494
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/callfilter/g;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 495
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/callfilter/g;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getId()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_1

    .line 496
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/callfilter/g;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 498
    :cond_2
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/callfilter/g;->a()V

    .line 500
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;

    .line 501
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/callfilter/g;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->remove(Ljava/lang/Object;)V

    .line 502
    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 505
    :cond_3
    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->d()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 506
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/g;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->notifyDataSetChanged()V

    .line 507
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got click: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 513
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 514
    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->d()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 515
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/g;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->notifyDataSetChanged()V

    .line 517
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->d:Z

    .line 518
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 521
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 455
    const v0, 0x7f0d01ac

    invoke-virtual {p1, v0}, Landroid/support/v7/view/ActionMode;->setTitle(I)V

    .line 457
    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->f()I

    move-result v0

    const v1, 0x7f0d015d

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020088

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 459
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .prologue
    .line 526
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

    .line 528
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/callfilter/g;->b()V

    .line 530
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->d:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/g;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->d:Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/g;->b:Landroid/app/Activity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->fixActionModeTextColor(Landroid/app/Activity;)V

    .line 468
    const/4 v0, 0x0

    return v0
.end method
