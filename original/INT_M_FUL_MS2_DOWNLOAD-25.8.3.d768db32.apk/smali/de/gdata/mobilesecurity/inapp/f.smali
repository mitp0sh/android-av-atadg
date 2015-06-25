.class final Lde/gdata/mobilesecurity/inapp/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/f;->a:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    iput-object p2, p0, Lde/gdata/mobilesecurity/inapp/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lde/gdata/mobilesecurity/inapp/f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 105
    const-class v1, Lde/gdata/mobilesecurity/inapp/ResponseHandler;

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->a()Lde/gdata/mobilesecurity/inapp/PurchaseObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/ResponseHandler;->a()Lde/gdata/mobilesecurity/inapp/PurchaseObserver;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/f;->a:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    iget-object v3, p0, Lde/gdata/mobilesecurity/inapp/f;->b:Ljava/lang/String;

    iget-object v4, p0, Lde/gdata/mobilesecurity/inapp/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lde/gdata/mobilesecurity/inapp/PurchaseObserver;->a(Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
