.class Lde/gdata/mobilesecurity/activities/kidsguard/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bk;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 100
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->startTaskWatchDog()V

    .line 101
    return-void
.end method
