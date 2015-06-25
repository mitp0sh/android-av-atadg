.class public Lde/gdata/mobilesecurity/privacy/adapter/SyncService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/mobilesecurity/privacy/adapter/SyncAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/adapter/SyncService;->a:Lde/gdata/mobilesecurity/privacy/adapter/SyncAdapter;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/adapter/SyncService;->a:Lde/gdata/mobilesecurity/privacy/adapter/SyncAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/adapter/SyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/adapter/SyncService;->a:Lde/gdata/mobilesecurity/privacy/adapter/SyncAdapter;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lde/gdata/mobilesecurity/privacy/adapter/SyncAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/adapter/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/privacy/adapter/SyncAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/adapter/SyncService;->a:Lde/gdata/mobilesecurity/privacy/adapter/SyncAdapter;

    .line 37
    :cond_0
    return-void
.end method
