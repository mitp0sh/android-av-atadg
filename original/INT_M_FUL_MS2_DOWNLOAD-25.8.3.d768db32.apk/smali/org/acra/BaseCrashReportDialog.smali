.class public abstract Lorg/acra/BaseCrashReportDialog;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelReports()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->a(Z)V

    .line 61
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashReportDialog extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FORCE_CANCEL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Forced reports deletion."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->cancelReports()V

    .line 44
    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->finish()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REPORT_FILE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/BaseCrashReportDialog;->a:Ljava/lang/String;

    .line 49
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening CrashReportDialog for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/BaseCrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lorg/acra/BaseCrashReportDialog;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->finish()V

    goto :goto_0
.end method

.method protected sendCrash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 70
    new-instance v0, Lorg/acra/f;

    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/f;-><init>(Landroid/content/Context;)V

    .line 72
    :try_start_0
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add user comment to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/BaseCrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lorg/acra/BaseCrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/acra/f;->a(Ljava/lang/String;)Lorg/acra/collector/CrashReportData;

    move-result-object v1

    .line 74
    sget-object v2, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v1, v2, p1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v2, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-virtual {v1, v2, p2}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v2, p0, Lorg/acra/BaseCrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/acra/f;->a(Lorg/acra/collector/CrashReportData;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "About to start SenderWorker from CrashReportDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lorg/acra/ErrorReporter;->a(ZZ)Lorg/acra/y;

    .line 86
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->resDialogOkToast()I

    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lorg/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    .line 90
    :cond_2
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "User comment not added: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
