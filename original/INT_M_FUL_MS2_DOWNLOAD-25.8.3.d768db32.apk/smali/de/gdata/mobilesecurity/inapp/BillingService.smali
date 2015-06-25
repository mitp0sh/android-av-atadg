.class public Lde/gdata/mobilesecurity/inapp/BillingService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static a:Lcom/android/vending/billing/IMarketBillingService;

.field private static b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lde/gdata/mobilesecurity/inapp/a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lde/gdata/mobilesecurity/inapp/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/BillingService;->b:Ljava/util/LinkedList;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/BillingService;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 295
    return-void
.end method

.method static synthetic a(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 0

    .prologue
    .line 48
    sput-object p0, Lde/gdata/mobilesecurity/inapp/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    return-object p0
.end method

.method static synthetic a()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lde/gdata/mobilesecurity/inapp/BillingService;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 423
    invoke-static {p2}, Lde/gdata/mobilesecurity/inapp/GdSecurity;->parsePurchaseData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 424
    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;

    .line 430
    iget-object v3, v0, Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 431
    iget-object v3, v0, Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_2
    iget-object v0, v0, Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;->purchaseState:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    invoke-static {p0, v0, p2, p3}, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 435
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 437
    invoke-direct {p0, p1, v0}, Lde/gdata/mobilesecurity/inapp/BillingService;->a(I[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private a(JLde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;)V
    .locals 5

    .prologue
    .line 450
    sget-object v0, Lde/gdata/mobilesecurity/inapp/BillingService;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/inapp/a;

    .line 451
    if-eqz v0, :cond_1

    .line 452
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyLog;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    invoke-virtual {v0, p3}, Lde/gdata/mobilesecurity/inapp/a;->responseCodeReceived(Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;)V

    .line 457
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/inapp/BillingService;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    return-void
.end method

.method private a(I[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 396
    new-instance v0, Lde/gdata/mobilesecurity/inapp/c;

    invoke-direct {v0, p0, p1, p2}, Lde/gdata/mobilesecurity/inapp/c;-><init>(Lde/gdata/mobilesecurity/inapp/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/c;->runRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/inapp/BillingService;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/BillingService;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lde/gdata/mobilesecurity/inapp/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method private b(I[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 410
    new-instance v0, Lde/gdata/mobilesecurity/inapp/d;

    invoke-direct {v0, p0, p1, p2}, Lde/gdata/mobilesecurity/inapp/d;-><init>(Lde/gdata/mobilesecurity/inapp/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/d;->runRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic c()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lde/gdata/mobilesecurity/inapp/BillingService;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 350
    :try_start_0
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyLog;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    const-string v1, "BillingService"

    const-string v2, "binding to Market billing service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lde/gdata/mobilesecurity/inapp/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 356
    if-eqz v1, :cond_1

    .line 364
    :goto_0
    return v0

    .line 359
    :cond_1
    const-string v0, "BillingService"

    const-string v1, "Could not bind to service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    .line 465
    const/4 v0, -0x1

    move v1, v0

    .line 467
    :cond_0
    :goto_0
    sget-object v0, Lde/gdata/mobilesecurity/inapp/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/inapp/a;

    if-eqz v0, :cond_3

    .line 468
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/a;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 470
    sget-object v2, Lde/gdata/mobilesecurity/inapp/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 474
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/a;->getStartId()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 475
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/a;->getStartId()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 480
    :cond_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/BillingService;->d()Z

    .line 494
    :cond_2
    :goto_1
    return-void

    .line 488
    :cond_3
    if-ltz v1, :cond_2

    .line 489
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyLog;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 490
    const-string v0, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopping service, startId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_4
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/inapp/BillingService;->stopSelf(I)V

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    .prologue
    .line 372
    new-instance v0, Lde/gdata/mobilesecurity/inapp/b;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/inapp/b;-><init>(Lde/gdata/mobilesecurity/inapp/BillingService;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/b;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 4

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyLog;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCommand() action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    const-string v1, "de.gdata.markettest.CONFIRM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-direct {p0, p2, v0}, Lde/gdata/mobilesecurity/inapp/BillingService;->a(I[Ljava/lang/String;)Z

    .line 342
    :cond_1
    :goto_0
    return-void

    .line 328
    :cond_2
    const-string v1, "de.gdata.markettest.GET_PURCHASE_INFORMATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, p2, v1}, Lde/gdata/mobilesecurity/inapp/BillingService;->b(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 331
    :cond_3
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 332
    const-string v0, "inapp_signed_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    const-string v1, "inapp_signature"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-direct {p0, p2, v0, v1}, Lde/gdata/mobilesecurity/inapp/BillingService;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_4
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    const-string v0, "request_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 337
    const-string v2, "response_code"

    sget-object v3, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_ERROR:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 339
    invoke-static {v2}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->valueOf(I)Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    move-result-object v2

    .line 340
    invoke-direct {p0, v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/BillingService;->a(JLde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 500
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyLog;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const-string v0, "BillingService"

    const-string v1, "Billing service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/inapp/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    .line 504
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/BillingService;->e()V

    .line 505
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 511
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/inapp/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    .line 513
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 311
    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/inapp/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 312
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 384
    new-instance v0, Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;-><init>(Lde/gdata/mobilesecurity/inapp/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/inapp/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 299
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 521
    :try_start_0
    invoke-virtual {p0, p0}, Lde/gdata/mobilesecurity/inapp/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    goto :goto_0
.end method
