.class Lde/gdata/mobilesecurity/activities/browser/u;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;

.field private b:Landroid/database/Cursor;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 277
    iput p2, p0, Lde/gdata/mobilesecurity/activities/browser/u;->c:I

    .line 278
    return-void
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 282
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/u;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 283
    const/4 v0, 0x0

    .line 285
    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;

    invoke-direct {v2, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/u;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;

    .line 287
    :try_start_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/u;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/browser/u;->c:I

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;->fillCursorWithUrls(I)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while executing loadInBackground(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/u;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    if-eqz p1, :cond_0

    .line 300
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    .line 305
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    .line 307
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/u;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 311
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 346
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_0
    return-void
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 270
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/browser/u;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/u;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 270
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/browser/u;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 358
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/u;->onStopLoading()V

    .line 360
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    .line 364
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/browser/u;->a(Landroid/database/Cursor;)V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/u;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/u;->forceLoad()V

    .line 324
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/u;->cancelLoad()Z

    .line 333
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->b:Landroid/database/Cursor;

    .line 338
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/u;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;->close()V

    .line 339
    :cond_1
    return-void
.end method
