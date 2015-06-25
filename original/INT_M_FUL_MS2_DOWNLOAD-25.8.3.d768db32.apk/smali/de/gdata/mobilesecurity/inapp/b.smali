.class Lde/gdata/mobilesecurity/inapp/b;
.super Lde/gdata/mobilesecurity/inapp/a;
.source "SourceFile"


# instance fields
.field final synthetic b:Lde/gdata/mobilesecurity/inapp/BillingService;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/inapp/BillingService;)V
    .locals 1

    .prologue
    .line 171
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/b;->b:Lde/gdata/mobilesecurity/inapp/BillingService;

    .line 175
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lde/gdata/mobilesecurity/inapp/a;-><init>(Lde/gdata/mobilesecurity/inapp/BillingService;I)V

    .line 176
    return-void
.end method


# virtual methods
.method protected run()J
    .locals 4

    .prologue
    .line 180
    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/b;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 181
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/BillingService;->b()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 182
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyLog;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckBillingSupported response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->valueOf(I)Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    sget-object v1, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_OK:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 187
    :goto_0
    invoke-static {v0}, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->checkBillingSupportedResponse(Z)V

    .line 188
    sget-wide v0, Lde/gdata/mobilesecurity/inapp/InAppConsts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
