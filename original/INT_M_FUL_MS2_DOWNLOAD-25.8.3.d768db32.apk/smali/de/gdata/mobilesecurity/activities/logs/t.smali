.class Lde/gdata/mobilesecurity/activities/logs/t;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/t;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/t;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/t;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/t;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/t;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 118
    :cond_0
    return-void
.end method
