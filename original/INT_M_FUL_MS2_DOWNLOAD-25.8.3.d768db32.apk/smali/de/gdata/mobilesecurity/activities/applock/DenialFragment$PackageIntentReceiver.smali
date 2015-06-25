.class public Lde/gdata/mobilesecurity/activities/applock/DenialFragment$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/applock/DenialFragment;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$PackageIntentReceiver;->a:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$PackageIntentReceiver;->a:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$PackageIntentReceiver;->a:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 232
    return-void
.end method
