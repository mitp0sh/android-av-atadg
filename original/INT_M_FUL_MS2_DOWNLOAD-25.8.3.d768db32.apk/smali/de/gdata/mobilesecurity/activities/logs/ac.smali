.class Lde/gdata/mobilesecurity/activities/logs/ac;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$InterestingConfigChanges;

.field b:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 665
    new-instance v0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$InterestingConfigChanges;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$InterestingConfigChanges;

    .line 670
    return-void
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 677
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->b()Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 678
    :goto_0
    const/4 v1, 0x0

    .line 681
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ac;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->fillCursorWithLogs(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 687
    :goto_1
    return-object v0

    .line 677
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->b()Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;

    move-result-object v0

    invoke-interface {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;->getProfile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while executing loadInBackground(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 692
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ac;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    if-eqz p1, :cond_0

    .line 695
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    .line 700
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    .line 702
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ac;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 703
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 706
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 743
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 746
    :cond_0
    return-void
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 663
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/logs/ac;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 663
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ac;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 663
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/logs/ac;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 753
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 755
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ac;->onStopLoading()V

    .line 757
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 760
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    .line 761
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/ac;->a(Landroid/database/Cursor;)V

    .line 718
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$InterestingConfigChanges;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 720
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ac;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ac;->forceLoad()V

    .line 721
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 728
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ac;->cancelLoad()Z

    .line 730
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 733
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ac;->b:Landroid/database/Cursor;

    .line 735
    const-string v0, "LF.onStopLoading"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 736
    return-void
.end method
