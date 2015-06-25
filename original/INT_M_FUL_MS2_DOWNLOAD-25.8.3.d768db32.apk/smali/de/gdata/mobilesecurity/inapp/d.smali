.class Lde/gdata/mobilesecurity/inapp/d;
.super Lde/gdata/mobilesecurity/inapp/a;
.source "SourceFile"


# instance fields
.field b:J

.field final c:[Ljava/lang/String;

.field final synthetic d:Lde/gdata/mobilesecurity/inapp/BillingService;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/inapp/BillingService;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/d;->d:Lde/gdata/mobilesecurity/inapp/BillingService;

    .line 269
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/inapp/a;-><init>(Lde/gdata/mobilesecurity/inapp/BillingService;I)V

    .line 270
    iput-object p3, p0, Lde/gdata/mobilesecurity/inapp/d;->c:[Ljava/lang/String;

    .line 271
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/inapp/a;->onRemoteException(Landroid/os/RemoteException;)V

    .line 289
    iget-wide v0, p0, Lde/gdata/mobilesecurity/inapp/d;->b:J

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/inapp/GdSecurity;->removeNonce(J)V

    .line 290
    return-void
.end method

.method protected run()J
    .locals 4

    .prologue
    .line 275
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/GdSecurity;->generateNonce()J

    move-result-wide v0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/inapp/d;->b:J

    .line 277
    const-string v0, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/d;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 278
    const-string v1, "NONCE"

    iget-wide v2, p0, Lde/gdata/mobilesecurity/inapp/d;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 279
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/d;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/BillingService;->b()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 281
    const-string v1, "getPurchaseInformation"

    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/inapp/d;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 282
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lde/gdata/mobilesecurity/inapp/InAppConsts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
