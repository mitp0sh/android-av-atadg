.class Lde/gdata/mobilesecurity/inapp/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Lde/gdata/mobilesecurity/inapp/util/IabHelper;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/inapp/util/IabHelper;ZLjava/util/List;Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/util/b;->e:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    iput-boolean p2, p0, Lde/gdata/mobilesecurity/inapp/util/b;->a:Z

    iput-object p3, p0, Lde/gdata/mobilesecurity/inapp/util/b;->b:Ljava/util/List;

    iput-object p4, p0, Lde/gdata/mobilesecurity/inapp/util/b;->c:Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lde/gdata/mobilesecurity/inapp/util/b;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 565
    new-instance v1, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 566
    const/4 v0, 0x0

    .line 568
    :try_start_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/b;->e:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    iget-boolean v3, p0, Lde/gdata/mobilesecurity/inapp/util/b;->a:Z

    iget-object v4, p0, Lde/gdata/mobilesecurity/inapp/util/b;->b:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->queryInventory(ZLjava/util/List;)Lde/gdata/mobilesecurity/inapp/util/Inventory;
    :try_end_0
    .catch Lde/gdata/mobilesecurity/inapp/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 573
    :goto_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/b;->e:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->flagEndAsync()V

    .line 577
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/b;->e:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    iget-boolean v2, v2, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/b;->c:Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/b;->d:Landroid/os/Handler;

    new-instance v3, Lde/gdata/mobilesecurity/inapp/util/c;

    invoke-direct {v3, p0, v1, v0}, Lde/gdata/mobilesecurity/inapp/util/c;-><init>(Lde/gdata/mobilesecurity/inapp/util/b;Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    :cond_0
    return-void

    .line 569
    :catch_0
    move-exception v1

    .line 570
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/inapp/util/IabException;->getResult()Lde/gdata/mobilesecurity/inapp/util/IabResult;

    move-result-object v1

    goto :goto_0
.end method
