.class Lde/gdata/mobilesecurity/inapp/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/inapp/PurchaseObserver;Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/e;->d:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;

    iput-object p2, p0, Lde/gdata/mobilesecurity/inapp/e;->a:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    iput-object p3, p0, Lde/gdata/mobilesecurity/inapp/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lde/gdata/mobilesecurity/inapp/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/e;->d:Lde/gdata/mobilesecurity/inapp/PurchaseObserver;

    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/e;->a:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lde/gdata/mobilesecurity/inapp/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->onPurchaseStateChange(Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method
