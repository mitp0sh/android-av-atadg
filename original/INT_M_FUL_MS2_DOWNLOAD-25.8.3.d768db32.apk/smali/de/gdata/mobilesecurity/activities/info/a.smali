.class Lde/gdata/mobilesecurity/activities/info/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lde/gdata/mobilesecurity/activities/info/Info;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/info/Info;I)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/info/a;->b:Lde/gdata/mobilesecurity/activities/info/Info;

    iput p2, p0, Lde/gdata/mobilesecurity/activities/info/a;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    iget v0, p0, Lde/gdata/mobilesecurity/activities/info/a;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 54
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/info/a;->b:Lde/gdata/mobilesecurity/activities/info/Info;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/info/Info;->finish()V

    .line 60
    :goto_0
    return-void

    .line 54
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :catch_0
    move-exception v0

    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/info/a;->b:Lde/gdata/mobilesecurity/activities/info/Info;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/info/Info;->finish()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/info/a;->b:Lde/gdata/mobilesecurity/activities/info/Info;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/info/Info;->finish()V

    throw v0
.end method
