.class final Lde/gdata/mobilesecurity/scan/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lde/gdata/mobilesecurity/scan/ScanService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lde/gdata/mobilesecurity/scan/ScanService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 282
    iput-object p2, p0, Lde/gdata/mobilesecurity/scan/f;->a:Ljava/lang/ref/WeakReference;

    .line 283
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/ScanService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->onHandleIntent(Landroid/content/Intent;)V

    .line 288
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/ScanService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->stopSelf(I)V

    .line 289
    return-void
.end method
