.class Lde/gdata/mobilesecurity/activities/applock/d;
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
    .line 797
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 793
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/d;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    .line 798
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 28
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
    .line 805
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/applock/d;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 806
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 808
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->i()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM protectedapps WHERE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b()Z

    move-result v2

    if-eqz v2, :cond_3

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

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(lockmode & "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->UNLOCKED:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") = 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "configuration = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 817
    const-string v4, "DenialFragment.loadInBackground"

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 818
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 820
    if-eqz v14, :cond_6

    .line 821
    const-string v2, "name"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 822
    const-string v2, "identifier"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 823
    const-string v2, "packageurl"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 824
    const-string v2, "permissions"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 825
    const-string v2, "lockmode"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 826
    const-string v2, "installmode"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 827
    const-string v2, "installmode"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 828
    const-string v2, "timeunlocked"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 830
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 832
    new-instance v24, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 833
    const-string v2, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    :cond_0
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 836
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 837
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 838
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 839
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 840
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 841
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 842
    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 843
    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 845
    const/4 v2, 0x0

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 848
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->i()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->i()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_1
    if-eqz v2, :cond_0

    .line 851
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 852
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v25, "/de.gdata.mobilesecurity."

    const-string v26, "/."

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 855
    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v12}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILandroid/graphics/Bitmap;Landroid/content/pm/ResolveInfo;I)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 810
    :cond_3
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

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(lockmode & "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") = 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 863
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 865
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v13, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 868
    :cond_6
    const-string v2, "DenialFragment.loadInBackground"

    invoke-static {v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 870
    return-object v13
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
    .line 875
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/d;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    if-eqz p1, :cond_0

    .line 877
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/d;->c(Ljava/util/List;)V

    .line 881
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/d;->b:Ljava/util/List;

    .line 883
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/d;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 885
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/d;->c(Ljava/util/List;)V

    .line 887
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
    .line 914
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 915
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/d;->c(Ljava/util/List;)V

    .line 916
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
    .line 938
    return-void
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 791
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/d;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 791
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/d;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 791
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/d;->b(Ljava/util/List;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 923
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 925
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/d;->onStopLoading()V

    .line 927
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/d;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/d;->c(Ljava/util/List;)V

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/d;->b:Ljava/util/List;

    .line 931
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/d;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/d;->a(Ljava/util/List;)V

    .line 896
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/d;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 898
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/d;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/d;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/d;->forceLoad()V

    .line 899
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 906
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/d;->cancelLoad()Z

    .line 907
    return-void
.end method
