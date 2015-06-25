.class Lde/gdata/mobilesecurity/services/a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/GpsSender;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/GpsSender;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/a;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    const-string v0, "Quitting looper ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/a;->a:Lde/gdata/mobilesecurity/services/GpsSender;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GpsSender;->a(Lde/gdata/mobilesecurity/services/GpsSender;)V

    .line 166
    return-void
.end method
