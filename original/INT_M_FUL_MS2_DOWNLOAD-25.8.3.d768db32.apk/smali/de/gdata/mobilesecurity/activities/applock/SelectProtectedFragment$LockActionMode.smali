.class public Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

.field b:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 409
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

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    .line 425
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->b:Landroid/app/Activity;

    .line 426
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 449
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "InsertSelectedItemsIntoDatabase"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 453
    :try_start_0
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 455
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b()I

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

    .line 456
    const/4 v1, 0x1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 457
    const/4 v2, 0x2

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->f()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 458
    const/4 v1, 0x3

    invoke-virtual {v4, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 459
    const/4 v1, 0x4

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->UNLOCKED:I

    int-to-long v2, v2

    :goto_1
    invoke-virtual {v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 460
    const/4 v1, 0x5

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->UNLOCKED:I

    int-to-long v2, v2

    :goto_2
    invoke-virtual {v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 461
    const/4 v1, 0x6

    invoke-virtual {v4, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 462
    const/4 v0, 0x7

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 463
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Statement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caused an exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 469
    :cond_0
    const-string v0, "InsertSelectedItemsIntoDatabase"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 470
    return-void

    .line 459
    :cond_1
    :try_start_1
    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I

    int-to-long v2, v2

    goto :goto_1

    .line 460
    :cond_2
    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v2, v2

    goto :goto_2
.end method

.method public static addAppToApplock(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 473
    const-string v0, "addAppToApplock"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 475
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 477
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockConfig()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 478
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a(Z)Z

    .line 481
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 482
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 484
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 485
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 488
    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/de.gdata.mobilesecurity."

    const-string v4, "/."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 493
    :try_start_1
    sget-object v3, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 494
    const/4 v0, 0x1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 495
    const/4 v0, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 496
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 497
    const/4 v4, 0x4

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->UNLOCKED:I

    int-to-long v0, v0

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 498
    const/4 v4, 0x5

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->UNLOCKED:I

    int-to-long v0, v0

    :goto_1
    invoke-virtual {v3, v4, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 499
    const/4 v0, 0x6

    invoke-virtual {v3, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 500
    const/4 v0, 0x7

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 501
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :goto_2
    :try_start_2
    const-string v0, "addAppToApplock"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->loadProtectedAppList(Landroid/content/Context;Z)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 516
    :cond_0
    const-string v0, "addAppToApplock"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 518
    :goto_3
    return-void

    .line 497
    :cond_1
    :try_start_3
    sget v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I

    int-to-long v0, v0

    goto :goto_0

    .line 498
    :cond_2
    sget v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v0, v0

    goto :goto_1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Statement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caused an exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 513
    :catch_1
    move-exception v0

    .line 514
    :try_start_5
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 516
    const-string v0, "addAppToApplock"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    const-string v1, "addAppToApplock"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 521
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 522
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 524
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 525
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 526
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_UNLOCK:I

    move v3, v1

    :goto_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getPermissions()I

    move-result v1

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 529
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_1
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 527
    :cond_2
    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_LOCK:I

    move v3, v1

    goto :goto_1

    .line 531
    :cond_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 534
    :cond_4
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 537
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 540
    :cond_5
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->a()V

    .line 542
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 543
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->remove(Ljava/lang/Object;)V

    .line 544
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 547
    :cond_7
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 548
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 549
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockedApps"

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 550
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 554
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

    .line 555
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 556
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->b()V

    .line 557
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->b:Landroid/app/Activity;

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->loadProtectedAppList(Landroid/content/Context;Z)V

    .line 558
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 559
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 560
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 561
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->b:Landroid/app/Activity;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->b:Landroid/app/Activity;

    const v2, 0x7f0d0099

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 565
    :cond_0
    return v3
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const v3, 0x7f0d0159

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 430
    invoke-virtual {p1, v3}, Landroid/support/v7/view/ActionMode;->setTitle(I)V

    .line 431
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->d()I

    move-result v0

    invoke-interface {p2, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020115

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 433
    invoke-static {v0, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 435
    return v2
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .prologue
    .line 570
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

    .line 571
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 572
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 573
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 574
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->b:Landroid/app/Activity;

    check-cast v0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->b:Landroid/app/Activity;

    check-cast v0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getSelectedTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 443
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->b:Landroid/app/Activity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->fixActionModeTextColor(Landroid/app/Activity;)V

    .line 445
    const/4 v0, 0x0

    return v0
.end method
