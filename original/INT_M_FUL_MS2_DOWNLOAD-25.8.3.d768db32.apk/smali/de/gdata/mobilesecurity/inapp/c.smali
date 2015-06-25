.class Lde/gdata/mobilesecurity/inapp/c;
.super Lde/gdata/mobilesecurity/inapp/a;
.source "SourceFile"


# instance fields
.field final b:[Ljava/lang/String;

.field final synthetic c:Lde/gdata/mobilesecurity/inapp/BillingService;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/inapp/BillingService;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/c;->c:Lde/gdata/mobilesecurity/inapp/BillingService;

    .line 246
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/inapp/a;-><init>(Lde/gdata/mobilesecurity/inapp/BillingService;I)V

    .line 247
    iput-object p3, p0, Lde/gdata/mobilesecurity/inapp/c;->b:[Ljava/lang/String;

    .line 248
    return-void
.end method


# virtual methods
.method protected run()J
    .locals 4

    .prologue
    .line 252
    const-string v0, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/c;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 253
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/c;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/BillingService;->b()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 255
    const-string v1, "confirmNotifications"

    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/inapp/c;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 256
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lde/gdata/mobilesecurity/inapp/InAppConsts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
