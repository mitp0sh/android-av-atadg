.class public Lde/gdata/mobilesecurity/privacy/adapter/AuthenticationService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/mobilesecurity/privacy/adapter/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 50
    const-string v0, "AuthenticationService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "AuthenticationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBinder()...  returning the AccountAuthenticator binder for intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/adapter/AuthenticationService;->a:Lde/gdata/mobilesecurity/privacy/adapter/a;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/adapter/a;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "AuthenticationService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "AuthenticationService"

    const-string v1, "SampleSyncAdapter Authentication Service started."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/privacy/adapter/a;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/privacy/adapter/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/adapter/AuthenticationService;->a:Lde/gdata/mobilesecurity/privacy/adapter/a;

    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "AuthenticationService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "AuthenticationService"

    const-string v1, "SampleSyncAdapter Authentication Service stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    return-void
.end method
