.class Lde/gdata/mobilesecurity/activities/applock/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field a:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

.field b:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE protectedapps SET lockmode = (lockmode & ?) WHERE identifier = ? AND (permissions & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_LOCK:I

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") <> 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND configuration = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/af;->c:Ljava/lang/String;

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM protectedapps WHERE packageurl IS NULL AND permissions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_LOCK:I

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_UNLOCK:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND lockmode = 0 AND installmode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOWED:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND status = 0 AND configuration = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/af;->d:Ljava/lang/String;

    return-void

    .line 499
    :cond_0
    sget v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_UNLOCK:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;)V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/applock/af;->a:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    .line 514
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/af;->b:Landroid/app/Activity;

    .line 515
    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    const v8, 0x7fffffff

    .line 536
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/af;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "updateSelectedItems"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 539
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/af;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockConfig()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 542
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/af;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 545
    :try_start_0
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 546
    const/4 v7, 0x1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->UNLOCKED:I

    sub-int v2, v8, v2

    int-to-long v2, v2

    :goto_1
    invoke-virtual {v5, v7, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 548
    const/4 v2, 0x2

    invoke-virtual {v5, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 549
    const/4 v0, 0x3

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 550
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/af;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " caused an exception"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 556
    :cond_0
    if-eqz v4, :cond_1

    .line 558
    :try_start_1
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/af;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 559
    const/4 v1, 0x1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 560
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 567
    :cond_1
    :goto_2
    const-string v0, "updateSelectedItems"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 568
    return-void

    .line 546
    :cond_2
    :try_start_2
    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    sub-int v2, v8, v2

    int-to-long v2, v2

    goto :goto_1

    .line 562
    :catch_1
    move-exception v0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Statement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/af;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caused an exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Landroid/support/v7/view/ActionMode;)V
    .locals 7

    .prologue
    .line 571
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 572
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 574
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/af;->a:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 576
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/af;->a:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_LOCK:I

    move v3, v1

    :goto_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/af;->a:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getPermissions()I

    move-result v1

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 579
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/af;->a:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_1
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 577
    :cond_2
    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_UNLOCK:I

    move v3, v1

    goto :goto_1

    .line 581
    :cond_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/af;->a:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 584
    :cond_4
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 587
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->b()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 590
    :cond_5
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/af;->a()V

    .line 592
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 593
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/af;->a:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->remove(Ljava/lang/Object;)V

    .line 594
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 596
    :cond_6
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 597
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/af;->a:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 598
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 602
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

    .line 604
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 605
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/af;->a(Landroid/support/v7/view/ActionMode;)V

    .line 607
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/af;->b:Landroid/app/Activity;

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->loadProtectedAppList(Landroid/content/Context;Z)V

    .line 608
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 611
    :cond_0
    return v2
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 519
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/support/v7/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 521
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c()I

    move-result v0

    const v1, 0x7f0d0494

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020113

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 523
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 525
    return v3
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 617
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 618
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/af;->a:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 619
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/af;->b:Landroid/app/Activity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->fixActionModeTextColor(Landroid/app/Activity;)V

    .line 532
    const/4 v0, 0x0

    return v0
.end method
