.class public Lcom/bd/android/shared/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss:SS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bd/android/shared/L;->a:Ljava/text/SimpleDateFormat;

    .line 26
    const-string v0, "\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/bd/android/shared/L;->b:[B

    .line 28
    const-string v0, " -warning- BDAUTO: "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/bd/android/shared/L;->c:[B

    .line 29
    const-string v0, " -debug  - BDAUTO: "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/bd/android/shared/L;->d:[B

    .line 30
    const-string v0, " -verbose- BDAUTO: "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/bd/android/shared/L;->e:[B

    .line 31
    const-string v0, " -info   - BDAUTO: "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/bd/android/shared/L;->f:[B

    .line 32
    const-string v0, " -error  - BDAUTO: "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/bd/android/shared/L;->g:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;[B)V
    .locals 6

    .prologue
    .line 107
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/bdauto.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 112
    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/mnt/sdcard/bdauto.txt"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 113
    sget-object v1, Lcom/bd/android/shared/L;->a:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 114
    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 115
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 116
    sget-object v1, Lcom/bd/android/shared/L;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 117
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 118
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 122
    const-string v0, "could not open logfile for writing /mnt/sdcard/bdauto.txt"

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :catch_1
    move-exception v0

    .line 126
    const-string v0, "IOException while wtiting to /mnt/sdcard/bdauto.txt"

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/bd/android/shared/u;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "BDAUTO"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v0, Lcom/bd/android/shared/L;->d:[B

    invoke-static {p0, v0}, Lcom/bd/android/shared/L;->a(Ljava/lang/String;[B)V

    .line 49
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/bd/android/shared/u;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "BDAUTO"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/bd/android/shared/L;->g:[B

    invoke-static {p0, v0}, Lcom/bd/android/shared/L;->a(Ljava/lang/String;[B)V

    .line 75
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/bd/android/shared/u;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "BDAUTO"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/bd/android/shared/L;->f:[B

    invoke-static {p0, v0}, Lcom/bd/android/shared/L;->a(Ljava/lang/String;[B)V

    .line 101
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/bd/android/shared/u;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "BDAUTO"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Lcom/bd/android/shared/L;->e:[B

    invoke-static {p0, v0}, Lcom/bd/android/shared/L;->a(Ljava/lang/String;[B)V

    .line 88
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/bd/android/shared/u;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "BDAUTO"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/bd/android/shared/L;->c:[B

    invoke-static {p0, v0}, Lcom/bd/android/shared/L;->a(Ljava/lang/String;[B)V

    .line 62
    :cond_0
    return-void
.end method
