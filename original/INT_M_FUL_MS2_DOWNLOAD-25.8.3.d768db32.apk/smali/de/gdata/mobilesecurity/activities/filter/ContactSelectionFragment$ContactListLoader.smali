.class public Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
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
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 368
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    .line 373
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 366
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 397
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->b:Ljava/util/List;

    .line 399
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 401
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 403
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 383
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->b()Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->loadContactsFromDB(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 384
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->b()Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getContacts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 385
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 386
    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 366
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 431
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 432
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 441
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->onStopLoading()V

    .line 443
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->b:Ljava/util/List;

    .line 447
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->deliverResult(Ljava/util/List;)V

    .line 412
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 414
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->forceLoad()V

    .line 415
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 422
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;->cancelLoad()Z

    .line 423
    return-void
.end method
