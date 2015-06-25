.class public Lde/gdata/mobilesecurity/services/RemoteCommandService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static volatile a:Landroid/media/MediaPlayer;

.field private static volatile b:Z


# instance fields
.field private volatile c:Ljava/lang/String;

.field private volatile d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->a:Landroid/media/MediaPlayer;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    iput-object v0, p0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->c:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->d:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic a(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 21
    sput-object p0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->a:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/RemoteCommandService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    iput-object v0, p0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->d:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->c:Ljava/lang/String;

    .line 76
    const-string v1, "siren"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lde/gdata/mobilesecurity/services/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lde/gdata/mobilesecurity/services/d;-><init>(Lde/gdata/mobilesecurity/services/RemoteCommandService;Lde/gdata/mobilesecurity/services/c;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/services/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    :cond_0
    const-string v1, "locate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lde/gdata/mobilesecurity/services/GpsSender;

    sget v2, Lde/gdata/mobilesecurity/services/GpsSender;->SEND_TYPE_ANTITHEFT:I

    invoke-direct {v1, v0, p2, v2}, Lde/gdata/mobilesecurity/services/GpsSender;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/services/GpsSender;->start()V

    .line 78
    :cond_1
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->b:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 21
    sput-boolean p0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->b:Z

    return p0
.end method

.method static synthetic b()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static declared-synchronized stopPlayer()V
    .locals 2

    .prologue
    .line 84
    const-class v1, Lde/gdata/mobilesecurity/services/RemoteCommandService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->a:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 86
    :try_start_1
    sget-object v0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 87
    sget-object v0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lde/gdata/mobilesecurity/services/RemoteCommandService;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :cond_0
    monitor-exit v1

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 58
    const-string v0, "RemoteCommandService starting ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 64
    const-string v0, "RemoteCommandService stoppping ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    const-string v1, "sender"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, "command"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/services/RemoteCommandService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x2

    return v0
.end method
