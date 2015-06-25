.class public Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v4/content/AsyncTaskLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/content/AsyncTaskLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$PackageIntentReceiver;->a:Landroid/support/v4/content/AsyncTaskLoader;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$PackageIntentReceiver;->a:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v1}, Landroid/support/v4/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$PackageIntentReceiver;->a:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v1}, Landroid/support/v4/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$PackageIntentReceiver;->a:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->onContentChanged()V

    .line 62
    return-void
.end method
