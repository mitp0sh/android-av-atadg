.class Lde/gdata/mobilesecurity/services/l;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/WatcherService;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/WatcherService;)V
    .locals 3

    .prologue
    .line 2147
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    .line 2148
    const-class v0, Lde/gdata/mobilesecurity/services/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2149
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2154
    :try_start_0
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 2156
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v2, "logcat -c"

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2157
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v2, "logcat ActivityManager:I *:S"

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 2158
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x800

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2160
    const-string v0, ""

    :goto_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->c(Lde/gdata/mobilesecurity/services/WatcherService;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 2161
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->c(Lde/gdata/mobilesecurity/services/WatcherService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2163
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2164
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->b(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v4, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v4, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->c(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/services/WatcherService;->d(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)V

    .line 2166
    :cond_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->e(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->d(Lde/gdata/mobilesecurity/services/WatcherService;)V

    .line 2168
    :cond_1
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->f(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2169
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->g(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2171
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2172
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->d()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->e()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 2174
    :cond_2
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->e()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2175
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/util/Vector;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2176
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/l;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->b(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/u;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/u;->interrupt()V

    .line 2160
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 2182
    :catch_0
    move-exception v0

    .line 2183
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2186
    :cond_4
    return-void
.end method
