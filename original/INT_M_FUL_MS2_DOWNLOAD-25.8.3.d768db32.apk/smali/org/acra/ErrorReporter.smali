.class public Lorg/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static i:Z

.field private static final j:Lorg/acra/ExceptionHandlerInitializer;

.field private static l:I


# instance fields
.field private a:Z

.field private final b:Landroid/app/Application;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lorg/acra/collector/CrashReportDataFactory;

.field private final f:Lorg/acra/c;

.field private final g:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:Lorg/acra/ExceptionHandlerInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lorg/acra/ErrorReporter;->i:Z

    .line 111
    new-instance v0, Lorg/acra/g;

    invoke-direct {v0}, Lorg/acra/g;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->j:Lorg/acra/ExceptionHandlerInitializer;

    .line 122
    const/4 v0, 0x0

    sput v0, Lorg/acra/ErrorReporter;->l:I

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Landroid/content/SharedPreferences;Z)V
    .locals 4

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/acra/ErrorReporter;->a:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->d:Ljava/util/List;

    .line 96
    new-instance v0, Lorg/acra/c;

    invoke-direct {v0}, Lorg/acra/c;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->f:Lorg/acra/c;

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->h:Ljava/lang/ref/WeakReference;

    .line 117
    sget-object v0, Lorg/acra/ErrorReporter;->j:Lorg/acra/ExceptionHandlerInitializer;

    iput-object v0, p0, Lorg/acra/ErrorReporter;->k:Lorg/acra/ExceptionHandlerInitializer;

    .line 137
    iput-object p1, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    .line 138
    iput-object p2, p0, Lorg/acra/ErrorReporter;->c:Landroid/content/SharedPreferences;

    .line 139
    iput-boolean p3, p0, Lorg/acra/ErrorReporter;->a:Z

    .line 142
    iget-object v0, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-static {v0}, Lorg/acra/collector/ConfigurationCollector;->collectConfiguration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 148
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 150
    invoke-static {}, Lorg/acra/collector/Compatibility;->getAPILevel()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 152
    new-instance v2, Lorg/acra/h;

    invoke-direct {v2, p0}, Lorg/acra/h;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-static {p1, v2}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ApplicationHelper;->registerActivityLifecycleCallbacks(Landroid/app/Application;Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V

    .line 203
    :cond_0
    new-instance v2, Lorg/acra/collector/CrashReportDataFactory;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-direct {v2, v3, p2, v1, v0}, Lorg/acra/collector/CrashReportDataFactory;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/text/format/Time;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/acra/ErrorReporter;->e:Lorg/acra/collector/CrashReportDataFactory;

    .line 207
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 208
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 209
    return-void
.end method

.method static synthetic a(Lorg/acra/ErrorReporter;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 853
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating DialogIntent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/acra/ErrorReporter$ReportBuilder;->c(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->reportDialogClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 855
    const-string v1, "REPORT_FILE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    const-string v1, "REPORT_EXCEPTION"

    invoke-static {p2}, Lorg/acra/ErrorReporter$ReportBuilder;->c(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 857
    return-object v0
.end method

.method static synthetic a(Lorg/acra/ErrorReporter;Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->a(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 904
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 905
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 906
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 907
    sget-object v2, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {p1, v2}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v2

    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v2, :cond_0

    sget-object v0, Lorg/acra/ACRAConstants;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".stacktrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lorg/acra/ErrorReporter;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/acra/ErrorReporter;->h:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private a(Ljava/lang/String;Lorg/acra/collector/CrashReportData;)V
    .locals 3

    .prologue
    .line 929
    :try_start_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing crash report file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance v0, Lorg/acra/f;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-direct {v0, v1}, Lorg/acra/f;-><init>(Landroid/content/Context;)V

    .line 931
    invoke-virtual {v0, p2, p1}, Lorg/acra/f;->a(Lorg/acra/collector/CrashReportData;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :goto_0
    return-void

    .line 932
    :catch_0
    move-exception v0

    .line 933
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occurred while writing the report file..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 443
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v2

    sget-object v3, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v2, v3, :cond_0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v2

    sget-object v3, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->forceCloseDialogAfterToast()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 448
    :goto_0
    if-eqz p1, :cond_2

    .line 449
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 451
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Handing Exception on to default ExceptionHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 474
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 443
    goto :goto_0

    :cond_2
    move v0, v1

    .line 448
    goto :goto_1

    .line 457
    :cond_3
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fatal error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    iget-object v0, p0, Lorg/acra/ErrorReporter;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 464
    if-eqz v0, :cond_4

    .line 465
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Finishing the last Activity prior to killing the Process"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 467
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lorg/acra/ErrorReporter;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 471
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 472
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_2
.end method

.method private a(Lorg/acra/ErrorReporter$ReportBuilder;)V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 687
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->a:Z

    if-nez v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->k:Lorg/acra/ExceptionHandlerInitializer;

    invoke-interface {v0, p0}, Lorg/acra/ExceptionHandlerInitializer;->initializeExceptionHandler(Lorg/acra/ErrorReporter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_1
    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->a(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 702
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    move-object v6, v0

    move v7, v8

    .line 715
    :goto_2
    sget-object v0, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v6, v0, :cond_2

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->resToastText()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v6, v0, :cond_2

    sget-object v0, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v6, v0, :cond_9

    :cond_2
    move v10, v9

    .line 718
    :goto_3
    new-instance v12, Lorg/acra/l;

    invoke-direct {v12, v11}, Lorg/acra/l;-><init>(Lorg/acra/g;)V

    .line 719
    if-eqz v10, :cond_3

    .line 720
    new-instance v0, Lorg/acra/i;

    invoke-direct {v0, p0, v12}, Lorg/acra/i;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/l;)V

    invoke-virtual {v0}, Lorg/acra/i;->start()V

    .line 741
    :cond_3
    iget-object v0, p0, Lorg/acra/ErrorReporter;->e:Lorg/acra/collector/CrashReportDataFactory;

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->b(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->c(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->d(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->a(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v4

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->e(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/acra/collector/CrashReportDataFactory;->createCrashData(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;ZLjava/lang/Thread;)Lorg/acra/collector/CrashReportData;

    move-result-object v0

    .line 747
    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->a(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;

    move-result-object v4

    .line 748
    invoke-direct {p0, v4, v0}, Lorg/acra/ErrorReporter;->a(Ljava/lang/String;Lorg/acra/collector/CrashReportData;)V

    .line 750
    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->f(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->sendReportsAtShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 751
    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->e(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;

    move-result-object v0

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->c(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/acra/ErrorReporter;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 756
    :cond_4
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v6, v0, :cond_5

    sget-object v0, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v6, v0, :cond_5

    iget-object v0, p0, Lorg/acra/ErrorReporter;->c:Landroid/content/SharedPreferences;

    const-string v1, "acra.alwaysaccept"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 761
    :cond_5
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "About to start ReportSenderWorker from #handleException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {p0, v7, v9}, Lorg/acra/ErrorReporter;->a(ZZ)Lorg/acra/y;

    move-result-object v2

    .line 763
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-ne v6, v0, :cond_6

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->f(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    .line 779
    sput-boolean v8, Lorg/acra/ErrorReporter;->i:Z

    .line 780
    new-instance v0, Lorg/acra/j;

    invoke-direct {v0, p0, v12}, Lorg/acra/j;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/l;)V

    invoke-virtual {v0}, Lorg/acra/j;->start()V

    .line 803
    :cond_7
    sget-object v0, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v6, v0, :cond_c

    iget-object v0, p0, Lorg/acra/ErrorReporter;->c:Landroid/content/SharedPreferences;

    const-string v1, "acra.alwaysaccept"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    move v3, v9

    .line 806
    :goto_5
    new-instance v0, Lorg/acra/k;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/acra/k;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/y;ZLjava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V

    invoke-virtual {v0}, Lorg/acra/k;->start()V

    goto/16 :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initlize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/ErrorReporter;->k:Lorg/acra/ExceptionHandlerInitializer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from #handleException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 704
    :cond_8
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    .line 710
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    sget-object v2, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v1, v2, :cond_d

    move-object v6, v0

    move v7, v9

    .line 711
    goto/16 :goto_2

    :cond_9
    move v10, v8

    .line 715
    goto/16 :goto_3

    .line 769
    :cond_a
    sget-object v0, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v6, v0, :cond_b

    .line 770
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Creating Notification."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-direct {p0, v4, p1}, Lorg/acra/ErrorReporter;->b(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V

    :cond_b
    move-object v2, v11

    goto :goto_4

    :cond_c
    move v3, v8

    .line 803
    goto :goto_5

    :cond_d
    move-object v6, v0

    move v7, v8

    goto/16 :goto_2
.end method

.method static synthetic a(Lorg/acra/ErrorReporter;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$ReportBuilder;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ErrorReporter$ReportBuilder;)V

    return-void
.end method

.method private a(ZZI)V
    .locals 8

    .prologue
    .line 951
    new-instance v0, Lorg/acra/d;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-direct {v0, v1}, Lorg/acra/d;-><init>(Landroid/content/Context;)V

    .line 952
    invoke-virtual {v0}, Lorg/acra/d;->a()[Ljava/lang/String;

    move-result-object v1

    .line 953
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 954
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    sub-int/2addr v2, p3

    if-ge v0, v2, :cond_3

    .line 955
    aget-object v2, v1, v0

    .line 956
    iget-object v3, p0, Lorg/acra/ErrorReporter;->f:Lorg/acra/c;

    invoke-virtual {v3, v2}, Lorg/acra/c;->b(Ljava/lang/String;)Z

    move-result v3

    .line 957
    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez v3, :cond_2

    if-eqz p2, :cond_2

    .line 958
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 959
    sget-object v4, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 961
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete report : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 965
    :cond_3
    return-void
.end method

.method private a([Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 977
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 978
    iget-object v4, p0, Lorg/acra/ErrorReporter;->f:Lorg/acra/c;

    invoke-virtual {v4, v3}, Lorg/acra/c;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 982
    :goto_1
    return v0

    .line 977
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V
    .locals 8

    .prologue
    .line 871
    iget-object v0, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 873
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    .line 876
    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v2

    .line 878
    iget-object v3, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 880
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 882
    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 883
    iget-object v3, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 885
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating Notification for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->a(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v3

    .line 887
    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    sget v5, Lorg/acra/ErrorReporter;->l:I

    add-int/lit8 v7, v5, 0x1

    sput v7, Lorg/acra/ErrorReporter;->l:I

    const/high16 v7, 0x8000000

    invoke-static {v4, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 889
    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v6, v4, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 890
    iget v1, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v6, Landroid/app/Notification;->flags:I

    .line 895
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->a(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v1

    .line 896
    const-string v2, "FORCE_CANCEL"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 897
    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 900
    const/16 v1, 0x29a

    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 901
    return-void
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lorg/acra/ErrorReporter;->i:Z

    return v0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 82
    sput-boolean p0, Lorg/acra/ErrorReporter;->i:Z

    return p0
.end method

.method public static getInstance()Lorg/acra/ErrorReporter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(ZZ)Lorg/acra/y;
    .locals 3

    .prologue
    .line 521
    new-instance v0, Lorg/acra/y;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/acra/y;-><init>(Landroid/content/Context;Ljava/util/List;ZZ)V

    .line 522
    invoke-virtual {v0}, Lorg/acra/y;->start()V

    .line 523
    return-object v0
.end method

.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 530
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lorg/acra/ErrorReporter;->a(ZZI)V

    .line 531
    return-void
.end method

.method a(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 610
    if-eqz p1, :cond_0

    move v0, v1

    .line 611
    :goto_0
    invoke-direct {p0, v2, v1, v0}, Lorg/acra/ErrorReporter;->a(ZZI)V

    .line 612
    return-void

    :cond_0
    move v0, v2

    .line 610
    goto :goto_0
.end method

.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lorg/acra/ErrorReporter;->e:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1, p2}, Lorg/acra/collector/CrashReportDataFactory;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    return-void
.end method

.method public addReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/acra/ErrorReporter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public checkReportsOnApplicationStart()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 539
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lorg/acra/ErrorReporter;->c:Landroid/content/SharedPreferences;

    const-string v3, "acra.lastVersionNr"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    .line 543
    new-instance v0, Lorg/acra/util/PackageManagerWrapper;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-direct {v0, v3}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 544
    invoke-virtual {v0}, Lorg/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 545
    if-eqz v3, :cond_1

    .line 546
    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v6, v0

    cmp-long v0, v6, v4

    if-lez v0, :cond_7

    move v0, v1

    .line 547
    :goto_0
    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->a()V

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 551
    const-string v4, "acra.lastVersionNr"

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 556
    :cond_1
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    .line 558
    sget-object v3, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v3, :cond_2

    sget-object v3, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 566
    invoke-virtual {p0, v1}, Lorg/acra/ErrorReporter;->a(Z)V

    .line 569
    :cond_3
    new-instance v3, Lorg/acra/d;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-direct {v3, v4}, Lorg/acra/d;-><init>(Landroid/content/Context;)V

    .line 570
    invoke-virtual {v3}, Lorg/acra/d;->a()[Ljava/lang/String;

    move-result-object v3

    .line 572
    if-eqz v3, :cond_6

    array-length v4, v3

    if-lez v4, :cond_6

    .line 581
    invoke-direct {p0, v3}, Lorg/acra/ErrorReporter;->a([Ljava/lang/String;)Z

    move-result v3

    .line 583
    sget-object v4, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_4

    sget-object v4, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_4

    if-eqz v3, :cond_6

    sget-object v4, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_4

    sget-object v4, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v4, :cond_6

    .line 587
    :cond_4
    sget-object v4, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v4, :cond_5

    if-nez v3, :cond_5

    .line 590
    iget-object v0, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->resToastText()I

    move-result v3

    invoke-static {v0, v3, v1}, Lorg/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    .line 593
    :cond_5
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "About to start ReportSenderWorker from #checkReportOnApplicationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {p0, v2, v2}, Lorg/acra/ErrorReporter;->a(ZZ)Lorg/acra/y;

    .line 598
    :cond_6
    return-void

    :cond_7
    move v0, v2

    .line 546
    goto :goto_0
.end method

.method public clearCustomData()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/acra/ErrorReporter;->e:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0}, Lorg/acra/collector/CrashReportDataFactory;->clearCustomData()V

    .line 316
    return-void
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/acra/ErrorReporter;->e:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1}, Lorg/acra/collector/CrashReportDataFactory;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V

    .line 649
    return-void
.end method

.method public handleException(Ljava/lang/Throwable;Z)V
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    .line 629
    if-eqz p2, :cond_0

    .line 630
    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->endsApplication()Lorg/acra/ErrorReporter$ReportBuilder;

    .line 632
    :cond_0
    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V

    .line 633
    return-void
.end method

.method public handleSilentException(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 487
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->a:Z

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->forceSilent()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V

    .line 492
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA sent Silent report."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA is disabled. Silent report not sent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/acra/ErrorReporter;->e:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1, p2}, Lorg/acra/collector/CrashReportDataFactory;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAllReportSenders()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lorg/acra/ErrorReporter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 378
    return-void
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lorg/acra/ErrorReporter;->e:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1}, Lorg/acra/collector/CrashReportDataFactory;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/acra/ErrorReporter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public removeReportSenders(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 362
    const-class v0, Lorg/acra/sender/ReportSender;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lorg/acra/ErrorReporter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/sender/ReportSender;

    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lorg/acra/ErrorReporter;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_1
    return-void
.end method

.method public reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1

    .prologue
    .line 657
    new-instance v0, Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-direct {v0, p0}, Lorg/acra/ErrorReporter$ReportBuilder;-><init>(Lorg/acra/ErrorReporter;)V

    return-object v0
.end method

.method public setDefaultReportSenders()V
    .locals 4

    .prologue
    .line 990
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    .line 991
    invoke-static {}, Lorg/acra/ACRA;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 992
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->removeAllReportSenders()V

    .line 996
    const-string v2, ""

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 997
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reports will be sent by email (if accepted by user)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v0, Lorg/acra/sender/EmailIntentSender;

    invoke-direct {v0, v1}, Lorg/acra/sender/EmailIntentSender;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    new-instance v2, Lorg/acra/util/PackageManagerWrapper;

    invoke-direct {v2, v1}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 1003
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1009
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be granted permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " if you want your crash reports to be sent. If you don\'t want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1019
    :cond_2
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1020
    new-instance v0, Lorg/acra/sender/HttpSender;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->httpMethod()Lorg/acra/sender/HttpSender$Method;

    move-result-object v1

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/acra/sender/HttpSender;-><init>(Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    .line 507
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iput-boolean p1, p0, Lorg/acra/ErrorReporter;->a:Z

    .line 509
    return-void

    .line 507
    :cond_0
    const-string v0, "disabled"

    goto :goto_0
.end method

.method public setExceptionHandlerInitializer(Lorg/acra/ExceptionHandlerInitializer;)V
    .locals 0

    .prologue
    .line 293
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/acra/ErrorReporter;->k:Lorg/acra/ExceptionHandlerInitializer;

    .line 294
    return-void

    .line 293
    :cond_0
    sget-object p1, Lorg/acra/ErrorReporter;->j:Lorg/acra/ExceptionHandlerInitializer;

    goto :goto_0
.end method

.method public setReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 0

    .prologue
    .line 388
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->removeAllReportSenders()V

    .line 389
    invoke-virtual {p0, p1}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/sender/ReportSender;)V

    .line 390
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 404
    :try_start_0
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->a:Z

    if-nez v0, :cond_2

    .line 405
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 406
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA is disabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - forwarding uncaught Exception on to default ExceptionHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA is disabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - no default ExceptionHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA caught a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 431
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 418
    :cond_2
    :try_start_1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA caught a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Building report"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->a(Lorg/acra/ErrorReporter$ReportBuilder;Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->endsApplication()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
