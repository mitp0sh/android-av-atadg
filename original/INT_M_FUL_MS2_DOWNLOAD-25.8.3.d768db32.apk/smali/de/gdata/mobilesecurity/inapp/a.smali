.class abstract Lde/gdata/mobilesecurity/inapp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/inapp/BillingService;

.field private final b:I

.field protected mRequestId:J


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/inapp/BillingService;I)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/a;->a:Lde/gdata/mobilesecurity/inapp/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p2, p0, Lde/gdata/mobilesecurity/inapp/a;->b:I

    .line 78
    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lde/gdata/mobilesecurity/inapp/a;->b:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 159
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->valueOf(I)Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    move-result-object v0

    .line 161
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyLog;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/a;->a:Lde/gdata/mobilesecurity/inapp/BillingService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/inapp/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2

    .prologue
    .line 133
    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/inapp/BillingService;->a(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    .line 135
    return-void
.end method

.method protected responseCodeReceived(Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method protected abstract run()J
.end method

.method public runIfConnected()Z
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyLog;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "BillingService"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/BillingService;->b()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/inapp/a;->run()J

    move-result-wide v0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/inapp/a;->mRequestId:J

    .line 113
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyLog;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "BillingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lde/gdata/mobilesecurity/inapp/a;->mRequestId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    iget-wide v0, p0, Lde/gdata/mobilesecurity/inapp/a;->mRequestId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 117
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/BillingService;->c()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v2, p0, Lde/gdata/mobilesecurity/inapp/a;->mRequestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_2
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/a;->onRemoteException(Landroid/os/RemoteException;)V

    .line 124
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/inapp/a;->runIfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/a;->a:Lde/gdata/mobilesecurity/inapp/BillingService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/inapp/BillingService;->a(Lde/gdata/mobilesecurity/inapp/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/BillingService;->a()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
