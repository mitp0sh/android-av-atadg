.class public Lcom/bd/android/shared/BDLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/bd/android/shared/BDLogging;

.field private static b:Lcom/bd/android/shared/u;

.field private static c:Z


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/bd/android/shared/BDLogging;->a:Lcom/bd/android/shared/BDLogging;

    .line 29
    sput-object v0, Lcom/bd/android/shared/BDLogging;->b:Lcom/bd/android/shared/u;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bd/android/shared/BDLogging;->c:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/bd/android/shared/BDLogging;->d:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/bd/android/shared/BDLogging;->e:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    .line 45
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 50
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bd/android/shared/BDLogging;->a(Landroid/content/Context;)V

    .line 52
    invoke-static {p1}, Lcom/bd/android/shared/BDUtils;->isDebugBuild(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bd/android/shared/BDLogging;->c:Z

    .line 57
    :cond_1
    invoke-static {}, Lcom/bd/android/shared/u;->a()Lcom/bd/android/shared/u;

    move-result-object v0

    sput-object v0, Lcom/bd/android/shared/BDLogging;->b:Lcom/bd/android/shared/u;

    .line 59
    const-string v0, "BDMAIN"

    invoke-direct {p0, v0}, Lcom/bd/android/shared/BDLogging;->a(Ljava/lang/String;)V

    .line 62
    const-string v0, "bdlog.txt"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bd/android/shared/BDLogging;->a(Ljava/lang/String;IZ)V

    .line 63
    invoke-direct {p0}, Lcom/bd/android/shared/BDLogging;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized GetStatusSendErrorReport()Z
    .locals 2

    .prologue
    .line 435
    const-class v1, Lcom/bd/android/shared/BDLogging;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/BDLogging;->b:Lcom/bd/android/shared/u;

    invoke-virtual {v0}, Lcom/bd/android/shared/u;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized Log_ERROR(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 406
    const-class v1, Lcom/bd/android/shared/BDLogging;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/BDLogging;->a:Lcom/bd/android/shared/BDLogging;

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lcom/bd/android/shared/BDLogging;->a:Lcom/bd/android/shared/BDLogging;

    sget-object v2, Lcom/bd/android/shared/b;->a:Lcom/bd/android/shared/b;

    invoke-direct {v0, v2, p0}, Lcom/bd/android/shared/BDLogging;->a(Lcom/bd/android/shared/b;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_0
    monitor-exit v1

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized Log_ERROR_NO_STACKTRACE(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 414
    const-class v1, Lcom/bd/android/shared/BDLogging;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/BDLogging;->a:Lcom/bd/android/shared/BDLogging;

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lcom/bd/android/shared/BDLogging;->a:Lcom/bd/android/shared/BDLogging;

    sget-object v2, Lcom/bd/android/shared/b;->c:Lcom/bd/android/shared/b;

    invoke-direct {v0, v2, p0}, Lcom/bd/android/shared/BDLogging;->a(Lcom/bd/android/shared/b;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :cond_0
    monitor-exit v1

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized Log_WARNING(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 422
    const-class v1, Lcom/bd/android/shared/BDLogging;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/BDLogging;->a:Lcom/bd/android/shared/BDLogging;

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/bd/android/shared/BDLogging;->a:Lcom/bd/android/shared/BDLogging;

    sget-object v2, Lcom/bd/android/shared/b;->b:Lcom/bd/android/shared/b;

    invoke-direct {v0, v2, p0}, Lcom/bd/android/shared/BDLogging;->a(Lcom/bd/android/shared/b;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_0
    monitor-exit v1

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized SetStatusSendErrorReport(Z)V
    .locals 2

    .prologue
    .line 430
    const-class v1, Lcom/bd/android/shared/BDLogging;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/BDLogging;->b:Lcom/bd/android/shared/u;

    invoke-virtual {v0, p0}, Lcom/bd/android/shared/u;->f(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit v1

    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/bd/android/shared/BDLogging;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/bd/android/shared/p;

    invoke-direct {v0, p0}, Lcom/bd/android/shared/p;-><init>(Lcom/bd/android/shared/BDLogging;)V

    .line 155
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    .line 234
    return-void
.end method

.method static synthetic a(Lcom/bd/android/shared/BDLogging;Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/bd/android/shared/BDLogging;->a(Ljava/lang/String;IZ)V

    return-void
.end method

.method private a(Lcom/bd/android/shared/b;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/bd/android/shared/BDLogging;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 268
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 269
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 270
    const-string v0, ""

    .line 272
    const-string v2, "date"

    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    sget-object v2, Lcom/bd/android/shared/a;->a:[I

    invoke-virtual {p1}, Lcom/bd/android/shared/b;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 292
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 293
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 294
    const-string v5, "thread"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "[Thread: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " [File: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    const-string v5, "file"

    const/4 v6, 0x5

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " [Method: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v5, "method"

    const/4 v6, 0x5

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " [Data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string v2, "message"

    invoke-virtual {v4, v2, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    sget-object v2, Lcom/bd/android/shared/b;->a:Lcom/bd/android/shared/b;

    if-ne p1, v2, :cond_2

    .line 309
    const-string v2, ""

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " [StackTrace:\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 313
    array-length v6, v5

    move v9, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v9

    :goto_2
    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    .line 315
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 279
    :pswitch_0
    const-string v2, "type"

    const-string v5, "ERROR"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[ERROR]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 286
    :pswitch_1
    const-string v2, "type"

    const-string v5, "WARNING"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[WARNING]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 319
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    const-string v2, "stacktrace"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 324
    const-string v2, "app_version"

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v1, "packagename"

    iget-object v2, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v1, "report"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    sget-boolean v1, Lcom/bd/android/shared/BDLogging;->c:Z

    if-eqz v1, :cond_3

    .line 335
    invoke-direct {p0, p1, v0}, Lcom/bd/android/shared/BDLogging;->b(Lcom/bd/android/shared/b;Ljava/lang/String;)V

    .line 338
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bd/android/shared/BDLogging;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 340
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/bd/android/shared/BDLogging;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    if-nez p2, :cond_0

    .line 164
    :try_start_0
    iput-object p1, p0, Lcom/bd/android/shared/BDLogging;->d:Ljava/lang/String;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no context set!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no context set!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 190
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p3, :cond_1

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 195
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bd/android/shared/BDLogging;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    monitor-exit p0

    return-void
.end method

.method private b(Lcom/bd/android/shared/b;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/bd/android/shared/BDLogging;->e:Ljava/lang/String;

    .line 382
    if-nez v0, :cond_0

    .line 384
    const-string v0, "Bitdefender"

    .line 387
    :cond_0
    sget-object v1, Lcom/bd/android/shared/a;->a:[I

    invoke-virtual {p1}, Lcom/bd/android/shared/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 402
    :goto_0
    return-void

    .line 392
    :pswitch_0
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :pswitch_1
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized b(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 377
    :goto_0
    monitor-exit p0

    return-void

    .line 355
    :cond_0
    const/4 v0, 0x0

    .line 356
    if-nez p2, :cond_1

    .line 358
    :try_start_1
    iget-object v0, p0, Lcom/bd/android/shared/BDLogging;->d:Ljava/lang/String;

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    const v2, 0x8000

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 364
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 367
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 370
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/bd/android/shared/BDLogging;
    .locals 2

    .prologue
    .line 255
    const-class v0, Lcom/bd/android/shared/BDLogging;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bd/android/shared/BDLogging;->a:Lcom/bd/android/shared/BDLogging;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/bd/android/shared/BDLogging;
    .locals 2

    .prologue
    .line 245
    const-class v1, Lcom/bd/android/shared/BDLogging;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/BDLogging;->a:Lcom/bd/android/shared/BDLogging;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/bd/android/shared/BDLogging;

    invoke-direct {v0, p0}, Lcom/bd/android/shared/BDLogging;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bd/android/shared/BDLogging;->a:Lcom/bd/android/shared/BDLogging;

    .line 250
    :cond_0
    sget-object v0, Lcom/bd/android/shared/BDLogging;->a:Lcom/bd/android/shared/BDLogging;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized GetFileName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    if-nez p1, :cond_0

    .line 75
    :try_start_0
    const-string v0, "bdlog.txt"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "bdlog.txt"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetFilePath(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    if-nez p1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bd/android/shared/BDLogging;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public GetFileSize(I)J
    .locals 4

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    .line 204
    :try_start_0
    iget-object v2, p0, Lcom/bd/android/shared/BDLogging;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    if-nez p1, :cond_0

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bd/android/shared/BDLogging;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    if-eqz v3, :cond_1

    .line 218
    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 227
    :cond_1
    :goto_0
    return-wide v0

    .line 222
    :catch_0
    move-exception v2

    goto :goto_0
.end method
