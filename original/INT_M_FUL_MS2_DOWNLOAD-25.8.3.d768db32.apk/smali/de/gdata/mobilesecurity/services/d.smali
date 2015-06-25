.class Lde/gdata/mobilesecurity/services/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/RemoteCommandService;

.field private b:Landroid/net/Uri;

.field private c:I


# direct methods
.method private constructor <init>(Lde/gdata/mobilesecurity/services/RemoteCommandService;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/d;->a:Lde/gdata/mobilesecurity/services/RemoteCommandService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/d;->b:Landroid/net/Uri;

    .line 102
    const/16 v0, 0xa

    iput v0, p0, Lde/gdata/mobilesecurity/services/d;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lde/gdata/mobilesecurity/services/RemoteCommandService;Lde/gdata/mobilesecurity/services/c;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/services/d;-><init>(Lde/gdata/mobilesecurity/services/RemoteCommandService;)V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/d;)I
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lde/gdata/mobilesecurity/services/d;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lde/gdata/mobilesecurity/services/d;->c:I

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/d;->b:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 110
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/d;->b:Landroid/net/Uri;

    .line 112
    const-string v0, "signal.mp3"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/signal.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/d;->b:Landroid/net/Uri;

    .line 116
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 118
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 120
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "BackgroundPlayer"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lde/gdata/mobilesecurity/services/RemoteCommandService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x1

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/RemoteCommandService;->a(Z)Z

    .line 131
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/RemoteCommandService;->a(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 132
    aget-object v0, p1, v2

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/services/d;->a(Landroid/content/Context;)V

    .line 135
    :try_start_0
    invoke-static {}, Lde/gdata/mobilesecurity/services/RemoteCommandService;->b()Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/d;->b:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 136
    invoke-static {}, Lde/gdata/mobilesecurity/services/RemoteCommandService;->b()Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 137
    invoke-static {}, Lde/gdata/mobilesecurity/services/RemoteCommandService;->b()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    invoke-static {}, Lde/gdata/mobilesecurity/services/RemoteCommandService;->b()Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/services/e;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/services/e;-><init>(Lde/gdata/mobilesecurity/services/d;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 156
    invoke-static {}, Lde/gdata/mobilesecurity/services/RemoteCommandService;->b()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 159
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t prepare media player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/services/d;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
