.class Lde/gdata/mobilesecurity/inapp/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeFinishedListener;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic e:Lde/gdata/mobilesecurity/inapp/util/IabHelper;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/inapp/util/IabHelper;Ljava/util/List;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/util/d;->e:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    iput-object p2, p0, Lde/gdata/mobilesecurity/inapp/util/d;->a:Ljava/util/List;

    iput-object p3, p0, Lde/gdata/mobilesecurity/inapp/util/d;->b:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lde/gdata/mobilesecurity/inapp/util/d;->c:Landroid/os/Handler;

    iput-object p5, p0, Lde/gdata/mobilesecurity/inapp/util/d;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 873
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 874
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/inapp/util/Purchase;

    .line 876
    :try_start_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/inapp/util/d;->e:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    .line 877
    new-instance v3, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lde/gdata/mobilesecurity/inapp/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 879
    :catch_0
    move-exception v0

    .line 880
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/util/IabException;->getResult()Lde/gdata/mobilesecurity/inapp/util/IabResult;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 884
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/d;->e:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->flagEndAsync()V

    .line 885
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/d;->e:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    iget-boolean v0, v0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/d;->b:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/d;->c:Landroid/os/Handler;

    new-instance v2, Lde/gdata/mobilesecurity/inapp/util/e;

    invoke-direct {v2, p0, v1}, Lde/gdata/mobilesecurity/inapp/util/e;-><init>(Lde/gdata/mobilesecurity/inapp/util/d;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 892
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/d;->e:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    iget-boolean v0, v0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/d;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/d;->c:Landroid/os/Handler;

    new-instance v2, Lde/gdata/mobilesecurity/inapp/util/f;

    invoke-direct {v2, p0, v1}, Lde/gdata/mobilesecurity/inapp/util/f;-><init>(Lde/gdata/mobilesecurity/inapp/util/d;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 899
    :cond_2
    return-void
.end method
