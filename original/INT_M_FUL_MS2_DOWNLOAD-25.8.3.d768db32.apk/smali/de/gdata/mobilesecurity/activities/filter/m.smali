.class Lde/gdata/mobilesecurity/activities/filter/m;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
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
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 631
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 627
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/m;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    .line 632
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/m;->getContext()Landroid/content/Context;

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 642
    invoke-static {}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 644
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->loadFilterGroups(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 646
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 647
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/m;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->loadContactsFromDB(Landroid/content/Context;)Ljava/util/ArrayList;

    goto :goto_0

    .line 649
    :cond_0
    return-object v1
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/m;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    if-eqz p1, :cond_0

    .line 656
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/m;->c(Ljava/util/List;)V

    .line 660
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/m;->b:Ljava/util/List;

    .line 662
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/m;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 664
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/m;->c(Ljava/util/List;)V

    .line 665
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
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 692
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 693
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/m;->c(Ljava/util/List;)V

    .line 694
    return-void
.end method

.method protected c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    return-void
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 625
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/m;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/m;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 625
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/m;->b(Ljava/util/List;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 701
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 703
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/m;->onStopLoading()V

    .line 705
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/m;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/m;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/m;->c(Ljava/util/List;)V

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/m;->b:Ljava/util/List;

    .line 709
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/m;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/m;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/m;->a(Ljava/util/List;)V

    .line 674
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/m;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 676
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/m;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/m;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/m;->forceLoad()V

    .line 677
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 684
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/m;->cancelLoad()Z

    .line 685
    return-void
.end method
