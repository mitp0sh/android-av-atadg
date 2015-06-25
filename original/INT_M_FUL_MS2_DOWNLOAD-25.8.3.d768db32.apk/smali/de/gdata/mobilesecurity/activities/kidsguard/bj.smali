.class Lde/gdata/mobilesecurity/activities/kidsguard/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->a(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->b(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->doLock()V

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
