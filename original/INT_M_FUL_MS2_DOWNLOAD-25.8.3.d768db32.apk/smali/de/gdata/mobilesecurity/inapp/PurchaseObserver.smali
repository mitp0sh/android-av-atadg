.class public abstract Lde/gdata/mobilesecurity/inapp/PurchaseObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:[Ljava/lang/Class;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/reflect/Method;

.field private d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->e:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->d:[Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->a:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->b:Landroid/os/Handler;

    .line 38
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->a()V

    .line 39
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startIntentSender"

    sget-object v2, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->e:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    iput-object v3, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->c:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 83
    iput-object v3, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->c:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    aput-object v2, v0, v1

    .line 96
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->d:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 97
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->d:[Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 98
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->d:[Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 99
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->d:[Ljava/lang/Object;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 100
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->a:Landroid/app/Activity;

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->d:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v1, "PurchaseObserver"

    const-string v2, "error starting activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 109
    :cond_0
    :try_start_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    const-string v1, "PurchaseObserver"

    const-string v2, "error starting activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method a(Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->b:Landroid/os/Handler;

    new-instance v1, Lde/gdata/mobilesecurity/inapp/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lde/gdata/mobilesecurity/inapp/e;-><init>(Lde/gdata/mobilesecurity/inapp/PurchaseObserver;Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method

.method public abstract onBillingSupported(Z)V
.end method

.method public abstract onPurchaseStateChange(Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestPurchaseResponse(Lde/gdata/mobilesecurity/inapp/BillingService$RequestPurchase;Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;)V
.end method
