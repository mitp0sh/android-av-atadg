.class public Lde/gdata/mobilesecurity/util/MyLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lde/gdata/mobilesecurity/util/MyLog;->a:Z

    .line 18
    sput-boolean v0, Lde/gdata/mobilesecurity/util/MyLog;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 53
    const-string v0, "release"

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->setDebugFlag(Z)V

    .line 55
    :cond_0
    if-nez p0, :cond_2

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    sget-boolean v0, Lde/gdata/mobilesecurity/util/MyLog;->a:Z

    if-nez v0, :cond_1

    .line 57
    sget-boolean v0, Lde/gdata/mobilesecurity/util/MyLog;->b:Z

    if-eqz v0, :cond_1

    .line 59
    const-string v0, "GDATA"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    if-nez p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget-boolean v0, Lde/gdata/mobilesecurity/util/MyLog;->a:Z

    if-nez v0, :cond_0

    .line 95
    const-string v0, "GDATA"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 104
    sget-boolean v0, Lde/gdata/mobilesecurity/util/MyLog;->a:Z

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 107
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 109
    const-string v1, "GDATA"

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "GDATA"

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    if-nez p0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    sget-boolean v0, Lde/gdata/mobilesecurity/util/MyLog;->a:Z

    if-nez v0, :cond_0

    .line 71
    const-string v0, "GDATA"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lde/gdata/mobilesecurity/util/MyLog;->b:Z

    return v0
.end method

.method public static setDebugFlag(Z)V
    .locals 0

    .prologue
    .line 45
    sput-boolean p0, Lde/gdata/mobilesecurity/util/MyLog;->b:Z

    .line 47
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    if-nez p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sget-boolean v0, Lde/gdata/mobilesecurity/util/MyLog;->a:Z

    if-nez v0, :cond_0

    .line 83
    const-string v0, "GDATA"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
