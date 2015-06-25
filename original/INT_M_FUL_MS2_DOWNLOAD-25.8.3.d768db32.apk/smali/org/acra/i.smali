.class Lorg/acra/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lorg/acra/l;

.field final synthetic b:Lorg/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;Lorg/acra/l;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lorg/acra/i;->b:Lorg/acra/ErrorReporter;

    iput-object p2, p0, Lorg/acra/i;->a:Lorg/acra/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 729
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 730
    iget-object v0, p0, Lorg/acra/i;->b:Lorg/acra/ErrorReporter;

    invoke-static {v0}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ErrorReporter;)Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->resToastText()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    .line 731
    iget-object v0, p0, Lorg/acra/i;->a:Lorg/acra/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/acra/l;->a(J)V

    .line 732
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 733
    return-void
.end method
