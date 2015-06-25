.class Lde/gdata/mobilesecurity/activities/kidsguard/bi;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bi;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    :goto_0
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->monitoring:Z

    if-eqz v0, :cond_1

    .line 62
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bi;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 64
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bi;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->a(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bi;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->b(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 67
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bi;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->doLock()V

    .line 71
    :cond_0
    const-wide/16 v0, 0x271

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bi;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 75
    :cond_1
    return-void
.end method
