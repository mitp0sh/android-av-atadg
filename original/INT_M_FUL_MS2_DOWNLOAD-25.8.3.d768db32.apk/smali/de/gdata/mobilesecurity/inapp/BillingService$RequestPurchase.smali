.class public Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;
.super Lde/gdata/mobilesecurity/inapp/a;
.source "SourceFile"


# instance fields
.field final synthetic b:Lde/gdata/mobilesecurity/inapp/BillingService;

.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/inapp/BillingService;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;-><init>(Lde/gdata/mobilesecurity/inapp/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/inapp/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 203
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;->b:Lde/gdata/mobilesecurity/inapp/BillingService;

    .line 207
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lde/gdata/mobilesecurity/inapp/a;-><init>(Lde/gdata/mobilesecurity/inapp/BillingService;I)V

    .line 208
    iput-object p2, p0, Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    .line 209
    iput-object p3, p0, Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 210
    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lde/gdata/mobilesecurity/inapp/a;->getStartId()I

    move-result v0

    return v0
.end method

.method protected responseCodeReceived(Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;->b:Lde/gdata/mobilesecurity/inapp/BillingService;

    invoke-static {v0, p0, p1}, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;)V

    .line 236
    return-void
.end method

.method protected run()J
    .locals 4

    .prologue
    .line 214
    const-string v0, "REQUEST_PURCHASE"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 215
    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 218
    const-string v1, "DEVELOPER_PAYLOAD"

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/BillingService;->b()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 221
    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 222
    if-nez v0, :cond_1

    .line 223
    const-string v0, "BillingService"

    const-string v1, "Error with requestPurchase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-wide v0, Lde/gdata/mobilesecurity/inapp/InAppConsts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 229
    :goto_0
    return-wide v0

    .line 227
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 228
    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 229
    const-string v0, "REQUEST_ID"

    sget-wide v2, Lde/gdata/mobilesecurity/inapp/InAppConsts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lde/gdata/mobilesecurity/inapp/a;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lde/gdata/mobilesecurity/inapp/a;->runRequest()Z

    move-result v0

    return v0
.end method
