.class Lde/gdata/mobilesecurity/activities/debug/z;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/debug/WebServer;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/debug/WebServer;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/z;->a:Lde/gdata/mobilesecurity/activities/debug/WebServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/z;->a:Lde/gdata/mobilesecurity/activities/debug/WebServer;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/debug/WebServer;->a:Landroid/content/Context;

    const-string v1, "LOG_STORAGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 82
    const-string v0, ""

    .line 85
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -v time GDATA:* *:S"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/debug/z;->a:Lde/gdata/mobilesecurity/activities/debug/WebServer;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/debug/WebServer;->b:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "<br>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/z;->a:Lde/gdata/mobilesecurity/activities/debug/WebServer;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/debug/WebServer;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const v2, 0x3e800

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/z;->a:Lde/gdata/mobilesecurity/activities/debug/WebServer;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/debug/z;->a:Lde/gdata/mobilesecurity/activities/debug/WebServer;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/debug/WebServer;->b:Ljava/lang/StringBuilder;

    const v4, 0x13880

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lde/gdata/mobilesecurity/activities/debug/WebServer;->b:Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    :cond_1
    return-void
.end method
