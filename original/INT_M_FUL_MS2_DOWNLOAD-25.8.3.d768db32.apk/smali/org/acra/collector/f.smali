.class final Lorg/acra/collector/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Process;


# direct methods
.method constructor <init>(Ljava/lang/Process;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/acra/collector/f;->a:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/acra/collector/f;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 112
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 113
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gez v2, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method
