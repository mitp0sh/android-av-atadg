.class Lde/gdata/mobilesecurity/services/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/d;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/d;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/e;->a:Lde/gdata/mobilesecurity/services/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/e;->a:Lde/gdata/mobilesecurity/services/d;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/d;->a(Lde/gdata/mobilesecurity/services/d;)I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/RemoteCommandService;->a(Z)Z

    goto :goto_0
.end method
