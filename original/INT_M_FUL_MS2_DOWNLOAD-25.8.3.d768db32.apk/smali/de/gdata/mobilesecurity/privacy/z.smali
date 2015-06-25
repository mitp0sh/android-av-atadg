.class Lde/gdata/mobilesecurity/privacy/z;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

.field private b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/z;->a:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 34
    monitor-enter p0

    .line 35
    :goto_0
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/z;->b:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 37
    const-wide/16 v0, 0x64

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0

    .line 41
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/z;->b:Landroid/os/Handler;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/z;->b:Landroid/os/Handler;

    .line 48
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 49
    return-void
.end method
