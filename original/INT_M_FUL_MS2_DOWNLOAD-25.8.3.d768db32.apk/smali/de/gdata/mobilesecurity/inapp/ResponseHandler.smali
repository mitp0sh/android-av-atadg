.class public Lde/gdata/mobilesecurity/inapp/ResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lde/gdata/mobilesecurity/inapp/PurchaseObserver;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->a:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;

    return-object v0
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->a:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;

    if-nez v0, :cond_1

    .line 69
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyLog;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "ResponseHandler"

    const-string v1, "UI is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->a:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->a:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->a:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;

    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->onBillingSupported(Z)V

    .line 57
    :cond_0
    return-void
.end method

.method public static purchaseResponse(Landroid/content/Context;Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lde/gdata/mobilesecurity/inapp/f;

    invoke-direct {v1, p1, p2, p3}, Lde/gdata/mobilesecurity/inapp/f;-><init>(Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    return-void
.end method

.method public static declared-synchronized register(Lde/gdata/mobilesecurity/inapp/PurchaseObserver;)V
    .locals 2

    .prologue
    .line 37
    const-class v0, Lde/gdata/mobilesecurity/inapp/ResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->a:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    return-void

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;)V
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->a:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->a:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->onRequestPurchaseResponse(Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;)V

    .line 127
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lde/gdata/mobilesecurity/inapp/PurchaseObserver;)V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lde/gdata/mobilesecurity/inapp/ResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->a:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
