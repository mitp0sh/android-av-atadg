.class Lde/gdata/mobilesecurity/fragments/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/u;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Inventory;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    const-string v0, "Query inventory finished."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/inapp/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string v0, "Query inventory was successful."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 230
    const-string v0, "ms2oneyear_sub"

    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/inapp/util/Inventory;->getPurchase(Ljava/lang/String;)Lde/gdata/mobilesecurity/inapp/util/Purchase;

    move-result-object v0

    .line 231
    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/u;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lde/gdata/mobilesecurity/fragments/u;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->a(Lde/gdata/mobilesecurity/inapp/util/Purchase;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->a(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;Z)Z

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User does have "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/u;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->b(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MS2ONEYEAR_SUB"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/u;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    const-string v3, "ms2oneyear_sub"

    invoke-virtual {p2, v3}, Lde/gdata/mobilesecurity/inapp/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lde/gdata/mobilesecurity/inapp/util/SkuDetails;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/inapp/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->a(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    const-string v0, "ms2onemonth_sub"

    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/inapp/util/Inventory;->getPurchase(Ljava/lang/String;)Lde/gdata/mobilesecurity/inapp/util/Purchase;

    move-result-object v0

    .line 237
    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/u;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lde/gdata/mobilesecurity/fragments/u;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->a(Lde/gdata/mobilesecurity/inapp/util/Purchase;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    invoke-static {v3, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->b(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;Z)Z

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User does have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/u;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->c(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MS2ONEMONTH_SUB"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/u;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    const-string v1, "ms2onemonth_sub"

    invoke-virtual {p2, v1}, Lde/gdata/mobilesecurity/inapp/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lde/gdata/mobilesecurity/inapp/util/SkuDetails;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/inapp/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->b(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/u;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)V

    .line 243
    const-string v0, "Initial inventory query finished; enabling main UI."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 231
    goto/16 :goto_1

    .line 232
    :cond_2
    const-string v0, "NOT MS2ONEYEAR_SUB"

    goto :goto_2

    :cond_3
    move v1, v2

    .line 237
    goto :goto_3

    .line 238
    :cond_4
    const-string v0, "NOT MS2ONEMONTH_SUB"

    goto :goto_4
.end method
