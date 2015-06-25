.class public Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 332
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;->b:Ljava/lang/String;

    .line 335
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    .line 336
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;->b:Ljava/lang/String;

    .line 337
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 341
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "de.gdata.RECEIVE_UPDATE_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "status"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 343
    const-string v1, "caller"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    const-string v2, "red"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 346
    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 348
    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    invoke-interface {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;->onServerStatus(ILandroid/os/Bundle;)V

    .line 350
    :cond_0
    return-void
.end method
