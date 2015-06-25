.class Lde/gdata/mobilesecurity/activities/panicbutton/s;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
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
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 349
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/s;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    .line 354
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 363
    invoke-static {}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 364
    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;-><init>(Landroid/content/Context;)V

    .line 365
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getAllPanicProfiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 367
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->c(Ljava/util/List;)V

    .line 378
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/s;->b:Ljava/util/List;

    .line 380
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 382
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->c(Ljava/util/List;)V

    .line 383
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
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 411
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->c(Ljava/util/List;)V

    .line 412
    return-void
.end method

.method protected c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    return-void
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 347
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 347
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->b(Ljava/util/List;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 419
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 421
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->onStopLoading()V

    .line 423
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/s;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/s;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->c(Ljava/util/List;)V

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/s;->b:Ljava/util/List;

    .line 427
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/s;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/s;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->a(Ljava/util/List;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/s;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 394
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/s;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->forceLoad()V

    .line 395
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 402
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/s;->cancelLoad()Z

    .line 403
    return-void
.end method
