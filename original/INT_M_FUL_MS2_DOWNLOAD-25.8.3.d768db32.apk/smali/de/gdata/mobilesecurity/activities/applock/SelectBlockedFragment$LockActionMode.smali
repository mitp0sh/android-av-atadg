.class public Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# instance fields
.field a:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

.field b:Landroid/app/Activity;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;)V
    .locals 3

    .prologue
    .line 425
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->c:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR REPLACE INTO protectedapps (id, configuration, name, identifier, packageurl, permissions, lockmode, installmode, status) SELECT MAX(id), ?, ?, ?, packageurl,     COALESCE (permissions, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_LOCK:I

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_UNLOCK:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    COALESCE (lockmode, ?) | ?, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    COALESCE (installmode, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOWED:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    COALESCE (status, 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  FROM protectedapps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE identifier = ? and configuration = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->d:Ljava/lang/String;

    .line 428
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    .line 429
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->b:Landroid/app/Activity;

    .line 430
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 455
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "InsertSelectedItemsIntoDatabase"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 459
    :try_start_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 461
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 462
    const/4 v1, 0x1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 463
    const/4 v2, 0x2

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->g()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 464
    const/4 v1, 0x3

    invoke-virtual {v4, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 465
    const/4 v1, 0x4

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->GRANTED:I

    int-to-long v2, v2

    :goto_1
    invoke-virtual {v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 466
    const/4 v1, 0x5

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->GRANTED:I

    int-to-long v2, v2

    :goto_2
    invoke-virtual {v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 467
    const/4 v1, 0x6

    invoke-virtual {v4, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 468
    const/4 v0, 0x7

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 469
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Statement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caused an exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 475
    :cond_0
    const-string v0, "InsertSelectedItemsIntoDatabase"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 476
    return-void

    .line 465
    :cond_1
    :try_start_1
    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->DENIED:I

    int-to-long v2, v2

    goto :goto_1

    .line 466
    :cond_2
    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->DENIED:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v2, v2

    goto :goto_2
.end method

.method private b()V
    .locals 7

    .prologue
    .line 479
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 480
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 482
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 484
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 485
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_GRANT:I

    move v3, v1

    :goto_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getPermissions()I

    move-result v1

    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    .line 488
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_2
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 485
    :cond_3
    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_DENY:I

    move v3, v1

    goto :goto_1

    .line 490
    :cond_4
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 493
    :cond_5
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 496
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 499
    :cond_6
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->a()V

    .line 501
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 502
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->remove(Ljava/lang/Object;)V

    .line 503
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->h()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->h()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 506
    :cond_8
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 507
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 508
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "blockedApps"

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->h()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 509
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 513
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

    .line 514
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 515
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->b()V

    .line 516
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->b:Landroid/app/Activity;

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->loadProtectedAppList(Landroid/content/Context;Z)V

    .line 517
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 518
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 519
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 520
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->b:Landroid/app/Activity;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->b:Landroid/app/Activity;

    const v2, 0x7f0d0099

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 524
    :cond_0
    return v3
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x7f0d0159

    .line 434
    invoke-virtual {p1, v1}, Landroid/support/v7/view/ActionMode;->setTitle(I)V

    .line 436
    invoke-virtual {p1, v1}, Landroid/support/v7/view/ActionMode;->setTitle(I)V

    .line 437
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->e()I

    move-result v0

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020115

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 439
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 441
    return v3
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .prologue
    .line 529
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

    .line 530
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 531
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 532
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 533
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->b:Landroid/app/Activity;

    check-cast v0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->b:Landroid/app/Activity;

    check-cast v0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getSelectedTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 449
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;->b:Landroid/app/Activity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->fixActionModeTextColor(Landroid/app/Activity;)V

    .line 451
    const/4 v0, 0x0

    return v0
.end method
