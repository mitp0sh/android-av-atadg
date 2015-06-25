.class Lorg/acra/k;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lorg/acra/y;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lorg/acra/ErrorReporter$ReportBuilder;

.field final synthetic e:Lorg/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;Lorg/acra/y;ZLjava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lorg/acra/k;->e:Lorg/acra/ErrorReporter;

    iput-object p2, p0, Lorg/acra/k;->a:Lorg/acra/y;

    iput-boolean p3, p0, Lorg/acra/k;->b:Z

    iput-object p4, p0, Lorg/acra/k;->c:Ljava/lang/String;

    iput-object p5, p0, Lorg/acra/k;->d:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 812
    invoke-static {}, Lorg/acra/ErrorReporter;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/acra/k;->a:Lorg/acra/y;

    if-nez v0, :cond_3

    .line 814
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Toast (if any) and worker completed - not waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_0
    iget-boolean v0, p0, Lorg/acra/k;->b:Z

    if-eqz v0, :cond_1

    .line 831
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating CrashReportDialog for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Lorg/acra/k;->e:Lorg/acra/ErrorReporter;

    iget-object v1, p0, Lorg/acra/k;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/acra/k;->d:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v0, v1, v2}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ErrorReporter;Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v0

    .line 833
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 834
    iget-object v1, p0, Lorg/acra/k;->e:Lorg/acra/ErrorReporter;

    invoke-static {v1}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ErrorReporter;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 837
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for Toast + worker ended. Kill Application ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/k;->d:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v2}, Lorg/acra/ErrorReporter$ReportBuilder;->f(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lorg/acra/k;->d:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->f(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 840
    iget-object v0, p0, Lorg/acra/k;->e:Lorg/acra/ErrorReporter;

    iget-object v1, p0, Lorg/acra/k;->d:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v1}, Lorg/acra/ErrorReporter$ReportBuilder;->e(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/k;->d:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v2}, Lorg/acra/ErrorReporter$ReportBuilder;->c(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ErrorReporter;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 842
    :cond_2
    return-void

    .line 816
    :cond_3
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/acra/ErrorReporter;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Toast "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/acra/k;->a:Lorg/acra/y;

    invoke-virtual {v0}, Lorg/acra/y;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "and Worker"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :goto_3
    invoke-static {}, Lorg/acra/ErrorReporter;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/acra/k;->a:Lorg/acra/y;

    invoke-virtual {v0}, Lorg/acra/y;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 819
    :cond_4
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 820
    :catch_0
    move-exception v0

    .line 821
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 816
    :cond_5
    const-string v0, " -- "

    goto :goto_1

    :cond_6
    const-string v0, ""

    goto :goto_2

    .line 824
    :cond_7
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Finished waiting for Toast + Worker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
