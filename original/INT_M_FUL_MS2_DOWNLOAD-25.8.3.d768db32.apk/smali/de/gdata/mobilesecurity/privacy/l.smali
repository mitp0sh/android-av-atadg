.class Lde/gdata/mobilesecurity/privacy/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/k;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/k;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/l;->a:Lde/gdata/mobilesecurity/privacy/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/l;->a:Lde/gdata/mobilesecurity/privacy/k;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->isDetached()Z

    move-result v2

    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/l;->a:Lde/gdata/mobilesecurity/privacy/k;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 292
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 281
    goto :goto_0

    .line 283
    :cond_1
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/l;->a:Lde/gdata/mobilesecurity/privacy/k;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lde/gdata/mobilesecurity/privacy/l;->a:Lde/gdata/mobilesecurity/privacy/k;

    iget-object v4, v4, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/l;->a:Lde/gdata/mobilesecurity/privacy/k;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->h(Lde/gdata/mobilesecurity/privacy/ChatFragment;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 288
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/l;->a:Lde/gdata/mobilesecurity/privacy/k;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->d:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v0, "ChatFragment was paused before loader was started"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 290
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/l;->a:Lde/gdata/mobilesecurity/privacy/k;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1
.end method
