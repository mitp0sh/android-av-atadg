.class Lcom/bitdefender/scanner/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/io/File;

.field private static b:Ljava/io/File;


# instance fields
.field private c:Z

.field private d:Z

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;

.field private g:Ljava/io/BufferedWriter;

.field private h:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/bitdefender/scanner/h;->a:Ljava/io/File;

    .line 20
    sput-object v0, Lcom/bitdefender/scanner/h;->b:Ljava/io/File;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/bitdefender/scanner/h;->c:Z

    .line 23
    iput-boolean v1, p0, Lcom/bitdefender/scanner/h;->d:Z

    .line 25
    iput-object v0, p0, Lcom/bitdefender/scanner/h;->e:Ljava/io/File;

    .line 26
    iput-object v0, p0, Lcom/bitdefender/scanner/h;->f:Ljava/io/File;

    .line 28
    iput-object v0, p0, Lcom/bitdefender/scanner/h;->g:Ljava/io/BufferedWriter;

    .line 29
    iput-object v0, p0, Lcom/bitdefender/scanner/h;->h:Ljava/io/BufferedWriter;

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/bitdefender/scanner/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bitdefender/scanner/h;->a:Ljava/io/File;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/bitdefender/scanner/h;->a:Ljava/io/File;

    .line 48
    :cond_0
    invoke-static {}, Lcom/bitdefender/scanner/h;->d()V

    .line 49
    invoke-static {}, Lcom/bitdefender/scanner/h;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v1

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d()V
    .locals 3

    .prologue
    .line 57
    :try_start_0
    sget-object v0, Lcom/bitdefender/scanner/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "scan"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/bitdefender/scanner/h;->b:Ljava/io/File;

    .line 64
    sget-object v0, Lcom/bitdefender/scanner/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 65
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 61
    sget-object v0, Lcom/bitdefender/scanner/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 71
    :try_start_0
    invoke-static {}, Lcom/bitdefender/scanner/h;->d()V

    .line 73
    const-string v1, "scan"

    const/4 v2, 0x0

    sget-object v3, Lcom/bitdefender/scanner/h;->b:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/bitdefender/scanner/h;->e:Ljava/io/File;

    .line 74
    const-string v1, "scan"

    const/4 v2, 0x0

    sget-object v3, Lcom/bitdefender/scanner/h;->b:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/bitdefender/scanner/h;->f:Ljava/io/File;

    .line 76
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/bitdefender/scanner/h;->e:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 77
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/bitdefender/scanner/h;->f:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 79
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Lcom/bitdefender/scanner/h;->g:Ljava/io/BufferedWriter;

    .line 80
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/bitdefender/scanner/h;->h:Ljava/io/BufferedWriter;

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bitdefender/scanner/h;->c:Z

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bitdefender/scanner/h;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v0

    .line 87
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized f()V
    .locals 5

    .prologue
    .line 95
    const-class v1, Lcom/bitdefender/scanner/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bitdefender/scanner/h;->a:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    monitor-exit v1

    return-void

    .line 100
    :cond_1
    :try_start_1
    sget-object v0, Lcom/bitdefender/scanner/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_0

    .line 105
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 107
    if-eqz v4, :cond_2

    .line 109
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/bitdefender/scanner/h;->g:Ljava/io/BufferedWriter;

    .line 117
    iput-object v0, p0, Lcom/bitdefender/scanner/h;->h:Ljava/io/BufferedWriter;

    .line 118
    iput-object v0, p0, Lcom/bitdefender/scanner/h;->e:Ljava/io/File;

    .line 119
    iput-object v0, p0, Lcom/bitdefender/scanner/h;->f:Ljava/io/File;

    .line 120
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bitdefender/scanner/h;->e:Ljava/io/File;

    return-object v0
.end method

.method declared-synchronized a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/bitdefender/scanner/h;->g:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bitdefender/scanner/h;->h:Ljava/io/BufferedWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 183
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/bitdefender/scanner/h;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bitdefender/scanner/h;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 185
    :cond_2
    invoke-direct {p0}, Lcom/bitdefender/scanner/h;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 208
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 194
    :pswitch_0
    :try_start_2
    iget-object v1, p0, Lcom/bitdefender/scanner/h;->g:Ljava/io/BufferedWriter;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/bitdefender/scanner/h;->g:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 204
    :catch_0
    move-exception v1

    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v1, p0, Lcom/bitdefender/scanner/h;->h:Ljava/io/BufferedWriter;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/bitdefender/scanner/h;->h:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized a(ILorg/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/bitdefender/scanner/h;->g:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bitdefender/scanner/h;->h:Ljava/io/BufferedWriter;

    if-nez v1, :cond_1

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/bitdefender/scanner/h;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 127
    if-nez v1, :cond_1

    .line 173
    :goto_0
    monitor-exit p0

    return v0

    .line 133
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/bitdefender/scanner/h;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bitdefender/scanner/h;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/bitdefender/scanner/h;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 138
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 173
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :pswitch_0
    :try_start_3
    iget-boolean v2, p0, Lcom/bitdefender/scanner/h;->c:Z

    if-nez v2, :cond_4

    .line 147
    iget-object v2, p0, Lcom/bitdefender/scanner/h;->g:Ljava/io/BufferedWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :catch_0
    move-exception v1

    goto :goto_0

    .line 151
    :cond_4
    iget-object v2, p0, Lcom/bitdefender/scanner/h;->g:Ljava/io/BufferedWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bitdefender/scanner/h;->c:Z

    goto :goto_1

    .line 157
    :pswitch_1
    iget-boolean v2, p0, Lcom/bitdefender/scanner/h;->d:Z

    if-nez v2, :cond_5

    .line 159
    iget-object v2, p0, Lcom/bitdefender/scanner/h;->h:Ljava/io/BufferedWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_5
    iget-object v2, p0, Lcom/bitdefender/scanner/h;->h:Ljava/io/BufferedWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bitdefender/scanner/h;->d:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()Ljava/io/File;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bitdefender/scanner/h;->f:Ljava/io/File;

    return-object v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/bitdefender/scanner/h;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "CacheDir"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOG_GEO: AM STERS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bitdefender/scanner/h;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/bitdefender/scanner/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/bitdefender/scanner/h;->f:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 220
    const-string v0, "CacheDir"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOG_GEO: AM STERS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bitdefender/scanner/h;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/bitdefender/scanner/h;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 223
    :cond_1
    return-void
.end method
