.class Lde/gdata/mobilesecurity/activities/debug/aa;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/database/ContentObserver;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/debug/WebServer;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/debug/WebServer;Landroid/database/ContentObserver;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/aa;->b:Lde/gdata/mobilesecurity/activities/debug/WebServer;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/debug/aa;->a:Landroid/database/ContentObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 533
    const-wide/32 v0, 0xea60

    :try_start_0
    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/debug/aa;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 537
    :goto_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 538
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/aa;->a:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    const-string v2, "http://www.amtso.org/check-android-phishing-page"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V

    .line 546
    :goto_1
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/aa;->a:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    const-string v2, "http://www.amtso.org/check-android-phishing-page"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 543
    :catch_0
    move-exception v0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching change failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 534
    :catch_1
    move-exception v0

    goto :goto_0
.end method
