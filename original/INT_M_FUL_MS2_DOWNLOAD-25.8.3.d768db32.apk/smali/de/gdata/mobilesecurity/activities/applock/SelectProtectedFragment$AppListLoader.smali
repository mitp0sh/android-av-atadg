.class public Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$PackageIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 619
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->c:I

    .line 632
    iput p2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->c:I

    .line 634
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$PackageIntentReceiver;-><init>(Landroid/support/v4/content/AsyncTaskLoader;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->d:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$PackageIntentReceiver;

    .line 635
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 641
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 644
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 646
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 647
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->i()Ljava/util/Vector;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 648
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 617
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 773
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    if-eqz p1, :cond_0

    .line 775
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 779
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->b:Ljava/util/List;

    .line 781
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 783
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 784
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 702
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 703
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->a()V

    .line 705
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 706
    invoke-virtual {v12, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 708
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 709
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 710
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    invoke-virtual {v12, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 713
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 714
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->i()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    invoke-virtual {v9, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/de.gdata.mobilesecurity."

    const-string v4, "/."

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 719
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    sget v4, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_LOCK:I

    sget v6, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_UNLOCK:I

    add-int/2addr v4, v6

    sget v6, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOWED:I

    move v7, v5

    move-object v8, v3

    invoke-direct/range {v0 .. v9}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILandroid/graphics/Bitmap;Landroid/content/pm/ResolveInfo;)V

    .line 722
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->f()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :try_start_0
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x1000

    invoke-virtual {v12, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 728
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    iget v4, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->c:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->j()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 732
    :goto_1
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_2
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 737
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    move v1, v5

    :goto_2
    if-ge v4, v7, :cond_6

    aget-object v8, v6, v4

    .line 738
    if-nez v1, :cond_3

    const-string v1, "android.permission.REORDER_TASKS"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.permission.RESTART_PACKAGES"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.permission.FORCE_STOP_PACKAGES"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move v1, v10

    .line 737
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 728
    :cond_4
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_5
    move v1, v5

    .line 738
    goto :goto_3

    .line 746
    :cond_6
    iget v4, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->c:I

    if-ne v4, v10, :cond_7

    if-eqz v1, :cond_7

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 750
    :goto_4
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :cond_7
    :goto_5
    iget v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->c:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 759
    :goto_6
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 746
    :cond_8
    :try_start_1
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    .line 756
    :cond_9
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_6

    .line 764
    :cond_a
    invoke-virtual {p0, v11}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->processConfiguration(Ljava/util/List;)V

    .line 766
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 768
    return-object v11

    .line 753
    :catch_0
    move-exception v1

    goto :goto_5
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 617
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 811
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 812
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 813
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 835
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 820
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 822
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->onStopLoading()V

    .line 824
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->b:Ljava/util/List;

    .line 828
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->deliverResult(Ljava/util/List;)V

    .line 793
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 795
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->forceLoad()V

    .line 796
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 803
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->cancelLoad()Z

    .line 804
    return-void
.end method

.method public processConfiguration(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 654
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT name, identifier, packageurl, permissions,installmode  FROM protectedapps WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(lockmode & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->GRANTED:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") <> 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(lockmode & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->UNLOCKED:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") = 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "configuration = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    const-string v1, "processConfiguration"

    invoke-static {v10, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 665
    invoke-virtual {v1, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 667
    if-eqz v11, :cond_6

    .line 668
    :cond_0
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 671
    const-string v0, "name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 672
    const-string v0, "identifier"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 673
    const-string v0, "packageurl"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 674
    const-string v0, "permissions"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 675
    const-string v0, "installmode"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 677
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v7, v5

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 678
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 679
    const/4 v7, 0x1

    .line 680
    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->setInstallMode(I)V

    .line 681
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->setPackageUrl(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->setPermissions(I)V

    :cond_1
    move v0, v7

    move v7, v0

    .line 678
    goto :goto_3

    .line 656
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(lockmode & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->DENIED:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") = 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(lockmode & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") = 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 685
    :cond_4
    if-nez v7, :cond_0

    iget v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;->c:I

    const/4 v7, 0x3

    if-ne v0, v7, :cond_0

    .line 686
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    const/4 v7, -0x1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f020121

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct/range {v0 .. v9}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILandroid/graphics/Bitmap;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 691
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 694
    :cond_6
    const-string v0, "processConfiguration"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 695
    return-void
.end method
