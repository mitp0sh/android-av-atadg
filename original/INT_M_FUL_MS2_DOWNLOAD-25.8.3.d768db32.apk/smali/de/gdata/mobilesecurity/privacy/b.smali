.class Lde/gdata/mobilesecurity/privacy/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/a;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/a;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/b;->a:Lde/gdata/mobilesecurity/privacy/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 218
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/b;->a:Lde/gdata/mobilesecurity/privacy/a;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/a;->b:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->isDetached()Z

    move-result v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/b;->a:Lde/gdata/mobilesecurity/privacy/a;

    iget-object v2, v2, Lde/gdata/mobilesecurity/privacy/a;->b:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 225
    :goto_0
    return-void

    .line 221
    :cond_1
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/b;->a:Lde/gdata/mobilesecurity/privacy/a;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/a;->b:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/b;->a:Lde/gdata/mobilesecurity/privacy/a;

    iget-object v3, v3, Lde/gdata/mobilesecurity/privacy/a;->b:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v0, "CallLogFragment was paused before loader was started"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
