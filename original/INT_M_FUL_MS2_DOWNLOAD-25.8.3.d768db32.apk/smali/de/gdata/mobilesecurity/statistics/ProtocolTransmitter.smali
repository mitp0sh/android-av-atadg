.class public Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static a:J

.field private static volatile c:Z

.field private static volatile d:Z


# instance fields
.field private b:Lde/gdata/mobilesecurity/statistics/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a:J

    .line 45
    sput-boolean v2, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->c:Z

    .line 46
    sput-boolean v2, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;Z)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->d:Z

    return v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;Ljava/io/InputStream;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 3

    .prologue
    .line 155
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 156
    const/4 v0, 0x0

    .line 159
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 160
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 163
    :cond_0
    const/4 v0, 0x1

    .line 169
    if-eqz v2, :cond_1

    .line 170
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 175
    :cond_1
    :goto_1
    return v0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    if-eqz v2, :cond_1

    .line 170
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 171
    :catch_1
    move-exception v1

    goto :goto_1

    .line 169
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 170
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 172
    :cond_2
    :goto_2
    throw v0

    .line 171
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 185
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 188
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 189
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lde/gdata/mobilesecurity/statistics/ThumbPrint;->validateCertificates(Ljavax/net/ssl/HttpsURLConnection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    .line 190
    :catch_0
    move-exception v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized b()Z
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getMiiReportInDebugMode()Z
    .locals 2

    .prologue
    .line 57
    const-class v0, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isTelemetryDenied(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 266
    const-string v0, "no"

    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAllowTelemetry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTelemetryUndefined(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 270
    const-string v0, ""

    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAllowTelemetry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized setMiiReportInDebugMode(Z)V
    .locals 3

    .prologue
    .line 61
    const-class v1, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending MII reports: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 62
    sput-boolean p0, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v1

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 86
    const-string v0, "ProtocolTransmitter starting ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :goto_0
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 97
    const-string v2, ""

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAllowTelemetry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 99
    const/4 v1, 0x0

    .line 101
    if-eqz v2, :cond_0

    .line 103
    new-instance v1, Lde/gdata/mobilesecurity/statistics/a;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/statistics/a;-><init>(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 115
    :cond_0
    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b77400

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a:J

    .line 119
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 120
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    const-class v2, Lde/gdata/mobilesecurity/intents/TelemetryEula;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->stopSelf()V

    .line 140
    :cond_2
    :goto_1
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_3
    const-string v2, "yes"

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAllowTelemetry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isPeriodicUpdateWifiOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isConnectedViaWiFi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    :cond_4
    new-instance v0, Lde/gdata/mobilesecurity/statistics/b;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/statistics/b;-><init>(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->b:Lde/gdata/mobilesecurity/statistics/b;

    .line 130
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->b:Lde/gdata/mobilesecurity/statistics/b;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/b;->start()V

    goto :goto_1

    .line 133
    :cond_5
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->stopSelf()V

    goto :goto_1

    .line 136
    :cond_6
    const-string v0, "no"

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAllowTelemetry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->stopSelf()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 146
    const-string v0, "ProtocolTransmitter stoppping ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 80
    const/4 v0, 0x2

    return v0
.end method
