.class public Lde/gdata/mobilesecurity/util/MyExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lde/gdata/mobilesecurity/util/MyExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lde/gdata/mobilesecurity/util/MyExceptionHandler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lde/gdata/mobilesecurity/util/MyExceptionHandler;->a:Lde/gdata/mobilesecurity/util/MyExceptionHandler;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lde/gdata/mobilesecurity/util/MyExceptionHandler;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/MyExceptionHandler;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/util/MyExceptionHandler;->a:Lde/gdata/mobilesecurity/util/MyExceptionHandler;

    .line 38
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/util/MyExceptionHandler;->a:Lde/gdata/mobilesecurity/util/MyExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public register(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 43
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 15
    invoke-static {p2}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    .line 27
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 28
    return-void
.end method
