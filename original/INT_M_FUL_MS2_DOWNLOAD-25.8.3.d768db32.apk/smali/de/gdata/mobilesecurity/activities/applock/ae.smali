.class Lde/gdata/mobilesecurity/activities/applock/ae;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 635
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 631
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ae;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    .line 636
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 26
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
    .line 643
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/applock/ae;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 644
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 646
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 647
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM protectedapps WHERE ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(lockmode & "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->GRANTED:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") <> 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(lockmode & "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->UNLOCKED:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") <> 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "configuration = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 657
    const-string v4, "SelectionFragment.loadInBackground"

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 658
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 660
    if-eqz v13, :cond_a

    .line 661
    const-string v2, "name"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 662
    const-string v2, "identifier"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 663
    const-string v2, "packageurl"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 664
    const-string v2, "permissions"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 665
    const-string v2, "lockmode"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 666
    const-string v2, "installmode"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 667
    const-string v2, "installmode"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 669
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 671
    new-instance v22, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 672
    const-string v2, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    :cond_0
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 675
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 676
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 678
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->GRANTED:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_1

    .line 679
    :goto_3
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_1
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->GRANTED:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_0

    .line 683
    :goto_4
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->UNLOCKED:I

    :goto_5
    and-int/2addr v2, v7

    if-eqz v2, :cond_0

    .line 684
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 685
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 686
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 687
    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 688
    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 690
    const/4 v2, 0x0

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 693
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->e()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->e()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_2
    if-eqz v2, :cond_0

    .line 696
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 697
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v23, "/"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v23, "/de.gdata.mobilesecurity."

    const-string v24, "/."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 700
    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v11}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILandroid/graphics/Bitmap;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 649
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(lockmode & "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->DENIED:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") <> 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(lockmode & "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") <> 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 678
    :cond_6
    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->DENIED:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 682
    :cond_7
    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->DENIED:I

    and-int/2addr v2, v7

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 683
    :cond_8
    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I

    goto/16 :goto_5

    .line 708
    :cond_9
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 710
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 713
    :cond_a
    const-string v2, "SelectionFragment.loadInBackground"

    invoke-static {v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 715
    return-object v12
.end method

.method public a(Ljava/util/List;)V
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
    .line 720
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ae;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    if-eqz p1, :cond_0

    .line 722
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/ae;->c(Ljava/util/List;)V

    .line 726
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/ae;->b:Ljava/util/List;

    .line 728
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ae;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 730
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/ae;->c(Ljava/util/List;)V

    .line 732
    :cond_2
    return-void
.end method

.method public b(Ljava/util/List;)V
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
    .line 759
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 760
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/ae;->c(Ljava/util/List;)V

    .line 761
    return-void
.end method

.method protected c(Ljava/util/List;)V
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
    .line 783
    return-void
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 629
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/ae;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ae;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 629
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/ae;->b(Ljava/util/List;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 768
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 770
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ae;->onStopLoading()V

    .line 772
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ae;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ae;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/ae;->c(Ljava/util/List;)V

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ae;->b:Ljava/util/List;

    .line 776
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ae;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ae;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/ae;->a(Ljava/util/List;)V

    .line 741
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ae;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ae;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 743
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ae;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/ae;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ae;->forceLoad()V

    .line 744
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 751
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ae;->cancelLoad()Z

    .line 752
    return-void
.end method
