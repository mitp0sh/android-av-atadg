.class Lde/gdata/mobilesecurity/activities/usagecontrol/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# instance fields
.field a:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

.field b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    .line 435
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;->b:Landroid/app/Activity;

    .line 436
    return-void
.end method

.method private a(Landroid/support/v7/view/ActionMode;)V
    .locals 6

    .prologue
    .line 456
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;->b:Landroid/app/Activity;

    const-string v1, "removeEntries"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 458
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    .line 459
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->remove(Ljava/lang/Object;)V

    .line 460
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 461
    const-string v3, "lockedlocations"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 462
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setDeleted()V

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 465
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->notifyDataSetChanged()V

    .line 466
    const-string v0, "removeEntries"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 467
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got click: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 473
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 474
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;->a(Landroid/support/v7/view/ActionMode;)V

    .line 476
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 477
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 481
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 440
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/support/v7/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->d()I

    move-result v0

    const-string v1, ""

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 443
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 445
    return v3
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .prologue
    .line 486
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

    .line 487
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 488
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 489
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->notifyDataSetChanged()V

    .line 490
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;->b:Landroid/app/Activity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->fixActionModeTextColor(Landroid/app/Activity;)V

    .line 452
    const/4 v0, 0x0

    return v0
.end method
