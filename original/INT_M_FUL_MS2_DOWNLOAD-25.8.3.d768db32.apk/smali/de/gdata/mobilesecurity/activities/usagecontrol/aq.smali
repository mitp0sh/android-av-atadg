.class Lde/gdata/mobilesecurity/activities/usagecontrol/aq;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
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
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 498
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    .line 503
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->loadLockedLocations(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 514
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->c(Ljava/util/List;)V

    .line 525
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->b:Ljava/util/List;

    .line 527
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 529
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->c(Ljava/util/List;)V

    .line 531
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
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 559
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->c(Ljava/util/List;)V

    .line 560
    return-void
.end method

.method protected c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 582
    return-void
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 496
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 496
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->b(Ljava/util/List;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 567
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 569
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->onStopLoading()V

    .line 571
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->c(Ljava/util/List;)V

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->b:Ljava/util/List;

    .line 575
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->a(Ljava/util/List;)V

    .line 540
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 542
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->forceLoad()V

    .line 543
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 550
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;->cancelLoad()Z

    .line 551
    return-void
.end method
