.class public Lde/gdata/mobilesecurity/scan/ScanService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/scan/AsyncAction;
.implements Lde/gdata/mobilesecurity/scan/NotifyProgress;


# static fields
.field public static final BACKGROUND_SCAN_FINISHED:I = 0x65c7e

.field public static final SCAN_ADVANCE:Ljava/lang/String; = "SCAN_ADVANCE"

.field public static final SCAN_FINISHED:Ljava/lang/String; = "SCAN_FINISHED"

.field public static final SCAN_FLIP_INDETERMINATE:Ljava/lang/String; = "SCAN_FLIP_INDETERMINATE"

.field public static final SCAN_OUTDATED_DAYS:I = 0x8

.field public static final SCAN_PROGRESS_STEP:Ljava/lang/String; = "SCAN_PROGRESS_STEP"

.field public static final SCAN_RESET:Ljava/lang/String; = "SCAN_RESET"

.field public static final SCAN_SET_ADVANCE_STEP:Ljava/lang/String; = "SCAN_SET_ADVANCE_STEP"

.field public static final SCAN_SET_LIMIT:Ljava/lang/String; = "SCAN_SET_LIMIT"

.field public static final SCAN_SET_PROGRESS:Ljava/lang/String; = "SCAN_SET_PROGRESS"

.field public static final SCAN_STEP:Ljava/lang/String; = "SCAN_STEP"

.field public static final SCAN_TICK:Ljava/lang/String; = "SCAN_TICK"

.field public static final SCAN_TYPE_IN_PROGRESS:Ljava/lang/String; = "SCAN_TYPE_IN_PROGRESS"

.field public static final SCAN_UPDATE_STATUS:Ljava/lang/String; = "SCAN_SET_UPDATE_STATUS"

.field public static final SCAN_WAKE_LOCK:Ljava/lang/String; = "ScanWakeLock"

.field public static final SERVICE_FRAGMENT_IS_NOT_RUNNING:Ljava/lang/String; = "SERVICE_FRAGMENT_IS_NOT_RUNNING"

.field public static final SERVICE_FRAGMENT_IS_RUNNING:Ljava/lang/String; = "SERVICE_FRAGMENT_IS_RUNNING"

.field public static final SERVICE_IS_RUNNING:Ljava/lang/String; = "SERVICE_IS_RUNNING"

.field public static final SINGLE_APP:Ljava/lang/String; = "app_to_scan"

.field public static final SINGLE_APP_LABEL:Ljava/lang/String; = "app_label_to_scan"

.field public static final START_APP_SCAN:Ljava/lang/String; = "START_APP_SCAN"

.field public static final START_FILE_SCAN:Ljava/lang/String; = "START_FILE_SCAN"

.field public static final START_SIDELOAD_SCAN:Ljava/lang/String; = "START_SIDELOAD_SCAN"

.field private static a:I

.field private static g:Z


# instance fields
.field private volatile b:Landroid/os/Looper;

.field private volatile c:Lde/gdata/mobilesecurity/scan/f;

.field private d:Landroid/support/v4/content/LocalBroadcastManager;

.field private e:Landroid/app/NotificationManager;

.field private f:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private n:Lde/gdata/mobilesecurity/scan/ScanService;

.field private o:I

.field private p:Z

.field private q:Landroid/support/v4/app/NotificationCompat$Builder;

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f0d0345

    sput v0, Lde/gdata/mobilesecurity/scan/ScanService;->a:I

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/scan/ScanService;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 90
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->f:Z

    .line 93
    iput v1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->h:I

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->i:Ljava/lang/String;

    .line 96
    const v0, 0x7f0d0345

    iput v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->k:I

    .line 97
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->l:Z

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->o:I

    .line 101
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->p:Z

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->r:J

    .line 336
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/scan/ScanService;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->h:I

    return v0
.end method

.method private a(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    return-object v0
.end method

.method private static a(Landroid/content/Context;IIZJLjava/lang/String;)Lde/gdata/mobilesecurity/scan/LogEntry;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 841
    new-instance v1, Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/content/Context;)V

    .line 842
    if-eqz p3, :cond_0

    .line 843
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 879
    :goto_0
    return-object v1

    .line 845
    :cond_0
    new-instance v2, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;-><init>()V

    .line 846
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 850
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->getPotentiallyUnwantedProgramsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 851
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->size()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 853
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    .line 854
    aput-object p6, v5, v0

    .line 855
    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 856
    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 857
    const/4 v6, 0x3

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    .line 858
    const/4 v4, 0x4

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    .line 859
    const/4 v3, 0x5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    .line 860
    const/4 v3, 0x6

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->getDetailsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    .line 861
    new-instance v3, Lde/gdata/mobilesecurity/sigfile/SignatureDb;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->getSignatureFileDate(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 862
    const/4 v4, 0x7

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    .line 864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    array-length v4, v5

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v6, v5, v0

    .line 866
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    const-string v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 870
    :cond_1
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 871
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->containsOnlyPotentiallyUnwantedPrograms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 872
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    .line 876
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 874
    :cond_3
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setInfected()V

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/cloud/CloudScan;ZJ)Lde/gdata/mobilesecurity/scan/LogEntry;
    .locals 7

    .prologue
    .line 836
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->getAppsScanned()I

    move-result v1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->getFilesScanned()I

    move-result v2

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->getScanJob()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Landroid/content/Context;IIZJLjava/lang/String;)Lde/gdata/mobilesecurity/scan/LogEntry;

    move-result-object v0

    return-object v0
.end method

.method private a(ZZ)Lde/gdata/mobilesecurity/scan/LogEntry;
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 445
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Z)V

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 448
    new-instance v3, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 449
    new-instance v6, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;

    new-instance v7, Lde/gdata/mobilesecurity/scan/g;

    invoke-direct {v7, p0, v2}, Lde/gdata/mobilesecurity/scan/g;-><init>(Lde/gdata/mobilesecurity/scan/ScanService;Lde/gdata/mobilesecurity/scan/e;)V

    invoke-direct {v6, p0, v7}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;-><init>(Lde/gdata/mobilesecurity/scan/AsyncAction;Lde/gdata/mobilesecurity/scan/NotifyProgress;)V

    .line 450
    invoke-direct {p0, v11}, Lde/gdata/mobilesecurity/scan/ScanService;->a(I)V

    .line 451
    if-nez p2, :cond_0

    if-eqz p1, :cond_6

    .line 452
    :cond_0
    const v2, 0x7f0d0268

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/scan/ScanService;->updateStatus(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->flipIndeterminate(Z)V

    .line 454
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->setLimit(I)V

    .line 455
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->setProgress(I)V

    .line 456
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lde/gdata/mobilesecurity/scan/ScanService;->a(I)V

    .line 457
    new-instance v2, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;-><init>()V

    .line 458
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->getFileNames()Ljava/util/HashSet;

    move-result-object v7

    .line 459
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->getPackageNames()Ljava/util/HashSet;

    move-result-object v8

    .line 460
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->getInfectionList()Ljava/util/ArrayList;

    move-result-object v9

    .line 461
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->b()Z

    move-result v10

    if-nez v10, :cond_1

    .line 463
    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->clear(I)V

    .line 464
    const v10, 0x7f0d0345

    invoke-virtual {p0, v10}, Lde/gdata/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lde/gdata/mobilesecurity/scan/ScanService;->updateStatus(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v6, p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->scanInstalledApplication(Landroid/content/Context;)Z

    .line 467
    :cond_1
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lde/gdata/mobilesecurity/scan/ScanService;->a(I)V

    .line 468
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->b()Z

    move-result v10

    if-nez v10, :cond_2

    .line 469
    invoke-virtual {v2, v11}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->clear(I)V

    .line 470
    const v10, 0x7f0d0351

    invoke-virtual {p0, v10}, Lde/gdata/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lde/gdata/mobilesecurity/scan/ScanService;->updateStatus(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v6, p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->scanExternalStorage(Landroid/content/Context;)Z

    .line 473
    :cond_2
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->b()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 474
    invoke-virtual {v2, v7}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->setFileNames(Ljava/util/HashSet;)V

    .line 475
    invoke-virtual {v2, v8}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->setPackageNames(Ljava/util/HashSet;)V

    .line 476
    invoke-virtual {v2, v9}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->setInfectionList(Ljava/util/ArrayList;)V

    .line 478
    :cond_3
    const/4 v7, 0x5

    invoke-direct {p0, v7}, Lde/gdata/mobilesecurity/scan/ScanService;->a(I)V

    .line 479
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->flipIndeterminate(Z)V

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 483
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->getDeviceInfectedState()I

    move-result v2

    invoke-virtual {v3, p0, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setDeviceInfected(Landroid/content/Context;I)V

    .line 484
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->b()Z

    move-result v2

    sub-long v4, v8, v4

    invoke-static {p0, v6, v2, v4, v5}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/cloud/CloudScan;ZJ)Lde/gdata/mobilesecurity/scan/LogEntry;

    move-result-object v2

    .line 486
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->b()Z

    move-result v3

    if-nez v3, :cond_4

    .line 488
    :try_start_0
    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_4
    :goto_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->b()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_1
    invoke-direct {p0, v2, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Lde/gdata/mobilesecurity/scan/LogEntry;Z)V

    move-object v0, v2

    .line 499
    :goto_2
    return-object v0

    .line 490
    :catch_0
    move-exception v3

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserting log entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 495
    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method private declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->j:I

    .line 122
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 322
    const-class v1, Lde/gdata/mobilesecurity/scan/ScanService;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lde/gdata/mobilesecurity/scan/ScanService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit v1

    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 328
    const-class v1, Lde/gdata/mobilesecurity/scan/ScanService;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lde/gdata/mobilesecurity/scan/ScanService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit v1

    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lde/gdata/mobilesecurity/scan/LogEntry;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 611
    .line 613
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getInfected()Z

    move-result v2

    or-int/2addr v2, v1

    .line 614
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getWarning()Z

    move-result v3

    or-int/2addr v2, v3

    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0, v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessage(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    :goto_0
    or-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 619
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 620
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 623
    const-class v1, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 624
    if-nez v2, :cond_0

    .line 625
    const-string v1, "scan_result_log"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    :cond_0
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->startActivity(Landroid/content/Intent;)V

    .line 632
    :cond_1
    :goto_1
    invoke-static {p0, v2}, Lde/gdata/webportal/android/WebPortalSyncService;->updateStatus(Landroid/content/Context;Z)V

    .line 633
    return-void

    :cond_2
    move v0, v1

    .line 618
    goto :goto_0

    .line 628
    :cond_3
    if-eqz p2, :cond_1

    .line 629
    const v0, 0x7f0d03ce

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lde/gdata/mobilesecurity/util/BasePreferences;)V
    .locals 10

    .prologue
    const v4, 0x7f0d04bc

    const/4 v1, 0x1

    .line 754
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isPeriodicScan()Z

    move-result v0

    if-nez v0, :cond_1

    .line 757
    new-instance v0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;-><init>(Landroid/content/Context;)V

    .line 758
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->disable()Z

    goto :goto_0

    .line 762
    :cond_1
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/BasePreferences;->skipOnBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 763
    invoke-virtual {p1, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setScanPostponed(Z)V

    goto :goto_0

    .line 767
    :cond_2
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/BasePreferences;->scanOnPowerConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isPowerConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 768
    invoke-virtual {p1, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setScanPostponed(Z)V

    goto :goto_0

    .line 772
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 774
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getPeriodicScanIsSystemScan()Z

    move-result v0

    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->a(ZZ)Lde/gdata/mobilesecurity/scan/LogEntry;

    move-result-object v0

    .line 776
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setTimeOfLastPeriodicScan(J)V

    .line 777
    invoke-static {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->updateLastScanOutdatedNotification(Landroid/content/Context;)V

    .line 779
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getInfected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 780
    const v0, 0x7f0d04bd

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 802
    :cond_4
    :goto_1
    new-instance v0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->enable()J

    goto :goto_0

    .line 783
    :cond_5
    new-instance v0, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->getDeviceInfectedState()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setDeviceInfected(Landroid/content/Context;I)V

    .line 785
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isShowTrayIcon()Z

    move-result v0

    if-nez v0, :cond_4

    .line 786
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 787
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 788
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 790
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 791
    const v3, 0x7f0d03c7

    invoke-static {p0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 792
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 793
    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 796
    new-instance v5, Landroid/app/Notification;

    const v6, 0x7f02012e

    const-wide/16 v8, 0x0

    invoke-direct {v5, v6, v2, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 797
    invoke-virtual {v5, p0, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 798
    iget v1, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v5, Landroid/app/Notification;->flags:I

    .line 799
    const v1, 0x65c7e

    invoke-virtual {v0, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x10000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 554
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;

    new-instance v2, Lde/gdata/mobilesecurity/scan/g;

    invoke-direct {v2, p0, v1}, Lde/gdata/mobilesecurity/scan/g;-><init>(Lde/gdata/mobilesecurity/scan/ScanService;Lde/gdata/mobilesecurity/scan/e;)V

    invoke-direct {v0, p0, v2}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;-><init>(Lde/gdata/mobilesecurity/scan/AsyncAction;Lde/gdata/mobilesecurity/scan/NotifyProgress;)V

    .line 555
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->scanSingleApp(Ljava/lang/String;Landroid/content/Context;)Z

    .line 562
    new-instance v5, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    invoke-direct {v5}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;-><init>()V

    move v2, v3

    .line 563
    :goto_0
    invoke-virtual {v5}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 564
    invoke-virtual {v5, v2}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->get(I)Lde/gdata/mobilesecurity/scan/MalwareInfection;

    move-result-object v0

    .line 565
    instance-of v6, v0, Lde/gdata/mobilesecurity/scan/FileInfection;

    if-eqz v6, :cond_0

    .line 566
    check-cast v0, Lde/gdata/mobilesecurity/scan/FileInfection;

    .line 567
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/FileInfection;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v4

    .line 574
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 576
    invoke-virtual {v5}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    .line 577
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/FileInfection;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/FileInfection;->getDisplayMalwareName()Lde/gdata/mobilesecurity/sigfile/MalwareName;

    move-result-object v0

    invoke-direct {p0, v1, v2, v3, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/sigfile/MalwareName;)V

    .line 578
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 579
    const-string v1, "side_loaded"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 580
    const-class v1, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 581
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 582
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->startActivity(Landroid/content/Intent;)V

    .line 594
    :goto_2
    return-void

    :cond_0
    move-object v0, v1

    .line 563
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 585
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 586
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.packageinstaller"

    const-string v3, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 590
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 591
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/util/BasePreferences;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 658
    invoke-virtual {p3}, Lde/gdata/mobilesecurity/util/BasePreferences;->isScanAppOnInstall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    :goto_0
    return-void

    .line 661
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;

    invoke-direct {v0, p0, p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;-><init>(Lde/gdata/mobilesecurity/scan/AsyncAction;Lde/gdata/mobilesecurity/scan/NotifyProgress;)V

    .line 662
    invoke-virtual {v0, p1, p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->scanSingleApp(Ljava/lang/String;Landroid/content/Context;)Z

    .line 664
    new-instance v0, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;-><init>()V

    .line 666
    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->getAppInfection(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/AppInfection;

    move-result-object v4

    .line 668
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getLabelFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 670
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, p1

    .line 676
    :cond_1
    :goto_1
    const-string v0, ""

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 679
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 683
    :goto_2
    if-eqz v4, :cond_2

    move v0, v1

    :goto_3
    invoke-static {p0, v0}, Lde/gdata/webportal/android/WebPortalSyncService;->updateStatus(Landroid/content/Context;Z)V

    .line 684
    if-eqz v4, :cond_4

    .line 685
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/scan/AppInfection;->getDisplayMalwareName()Lde/gdata/mobilesecurity/sigfile/MalwareName;

    move-result-object v0

    .line 686
    invoke-direct {p0, p1, p2, v3, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/sigfile/MalwareName;)V

    .line 687
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sigfile/MalwareName;->isMalware()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_MALWARE:I

    :goto_4
    invoke-virtual {p3, p0, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setDeviceInfected(Landroid/content/Context;I)V

    .line 690
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 691
    const-class v1, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 692
    const-class v1, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 695
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 680
    :catch_0
    move-exception v3

    move-object v3, v0

    goto :goto_2

    :cond_2
    move v0, v2

    .line 683
    goto :goto_3

    .line 687
    :cond_3
    sget v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_PUP:I

    goto :goto_4

    .line 698
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v2, v3, v4, v1, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->getDateTime(JIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d03b1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d03b2

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 707
    :try_start_1
    new-instance v0, Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/content/Context;)V

    .line 709
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 710
    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 712
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 714
    :catch_1
    move-exception v0

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inserting log entry for 3 failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object p2, v0

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/sigfile/MalwareName;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 722
    new-instance v2, Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/content/Context;)V

    .line 723
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 724
    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    .line 726
    invoke-virtual {p4}, Lde/gdata/mobilesecurity/sigfile/MalwareName;->isMalware()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "M"

    :goto_0
    aput-object v0, v3, v1

    .line 727
    const/4 v0, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    aput-object p2, v3, v0

    .line 728
    const/4 v0, 0x2

    invoke-virtual {p4}, Lde/gdata/mobilesecurity/sigfile/MalwareName;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 729
    const/4 v0, 0x3

    aput-object p1, v3, v0

    .line 730
    const/4 v0, 0x4

    aput-object p3, v3, v0

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    array-length v5, v3

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_2

    aget-object v1, v3, v0

    .line 735
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v1, "|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 726
    :cond_0
    const-string v0, "P"

    goto :goto_0

    :cond_1
    move-object p2, p1

    .line 727
    goto :goto_1

    .line 738
    :cond_2
    invoke-virtual {p4}, Lde/gdata/mobilesecurity/sigfile/MalwareName;->isMalware()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 739
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setInfected()V

    .line 742
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 745
    :try_start_0
    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_4
    return-void

    .line 741
    :cond_3
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    goto :goto_3

    .line 747
    :catch_0
    move-exception v0

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting log entry for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    sput-boolean p1, Lde/gdata/mobilesecurity/scan/ScanService;->g:Z

    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    sget-boolean v0, Lde/gdata/mobilesecurity/scan/ScanService;->g:Z

    monitor-exit p0

    return v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 649
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 650
    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->update(Ljava/lang/String;)Z

    .line 651
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 597
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 598
    const-string v1, "app_to_scan"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    const-string v2, "app_label_to_scan"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 602
    invoke-static {p0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateSigsOutdatedNotification(Landroid/content/Context;)V

    .line 604
    if-nez v1, :cond_0

    .line 605
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Lde/gdata/mobilesecurity/util/BasePreferences;)V

    .line 608
    :goto_0
    return-void

    .line 607
    :cond_0
    invoke-direct {p0, v1, v2, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/util/BasePreferences;)V

    goto :goto_0
.end method

.method private declared-synchronized b(Z)V
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->f:Z

    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SCAN_PROGRESS_STEP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v1, "SCAN_STEP"

    iget v2, p0, Lde/gdata/mobilesecurity/scan/ScanService;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->d:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method private declared-synchronized c(Z)V
    .locals 1

    .prologue
    .line 640
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    monitor-exit p0

    return-void

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static cancelScan(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 309
    const-string v0, "SERVICE_CANCEL_SCAN"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x8000000

    invoke-static {p0, v4, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/ScanService;->n:Lde/gdata/mobilesecurity/scan/ScanService;

    const v3, 0x7f0d001a

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/ScanService;->n:Lde/gdata/mobilesecurity/scan/ScanService;

    const v3, 0x7f0d0023

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 361
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 362
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 363
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 364
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 365
    iput-boolean v4, p0, Lde/gdata/mobilesecurity/scan/ScanService;->p:Z

    .line 366
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 369
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->n:Lde/gdata/mobilesecurity/scan/ScanService;

    sget v2, Lde/gdata/mobilesecurity/scan/ScanService;->a:I

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 371
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getNotifyManager()Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->o:I

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 373
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getNotifyManager()Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->getNotifyManager()Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->o:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->p:Z

    .line 381
    :cond_0
    return-void
.end method

.method private declared-synchronized g()Z
    .locals 1

    .prologue
    .line 636
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isRunning(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 314
    const-string v0, "SERVICE_IS_RUNNING"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public static setFragmentIsRunning(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 318
    if-eqz p1, :cond_0

    const-string v0, "SERVICE_FRAGMENT_IS_RUNNING"

    :goto_0
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 319
    return-void

    .line 318
    :cond_0
    const-string v0, "SERVICE_FRAGMENT_IS_NOT_RUNNING"

    goto :goto_0
.end method

.method public static startAppScan(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 298
    const-string v0, "START_APP_SCAN"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    const v0, 0x7f0d0345

    sput v0, Lde/gdata/mobilesecurity/scan/ScanService;->a:I

    .line 300
    return-void
.end method

.method public static startFileScan(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 293
    const-string v0, "START_FILE_SCAN"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    const v0, 0x7f0d0351

    sput v0, Lde/gdata/mobilesecurity/scan/ScanService;->a:I

    .line 295
    return-void
.end method

.method public static startSideLoadScan(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    const-string v1, "APK_FILE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "START_SIDELOAD_SCAN"

    invoke-static {p0, v1, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 306
    return-void
.end method

.method public static updateLastScanOutdatedNotification(Landroid/content/Context;)V
    .locals 10

    .prologue
    const v5, 0x7f0d03d0

    const/4 v1, 0x6

    .line 816
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 818
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->hasCustomNotification(I)Z

    move-result v2

    .line 820
    new-instance v3, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTimeOfScan()J

    move-result-wide v6

    .line 821
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/MyDate;->isOlderThan(Ljava/util/Date;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 823
    :cond_0
    if-nez v2, :cond_1

    .line 824
    const v2, 0x7f0d03cf

    const v3, 0x7f02013a

    const v4, 0x7f02012f

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(IIIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 827
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 833
    :cond_1
    :goto_0
    return-void

    .line 830
    :cond_2
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->removeCustomNotification(I)V

    .line 831
    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Intent;)Lde/gdata/mobilesecurity/scan/LogEntry;
    .locals 3

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 437
    const-string v1, "START_FILE_SCAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 438
    const-string v2, "START_APP_SCAN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    .line 440
    invoke-direct {p0, v1, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(ZZ)Lde/gdata/mobilesecurity/scan/LogEntry;

    move-result-object v0

    return-object v0
.end method

.method public advance(I)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->d:Landroid/support/v4/content/LocalBroadcastManager;

    const-string v1, "SCAN_ADVANCE"

    invoke-direct {p0, v1, p1}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 158
    return-void
.end method

.method public finished()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->d:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "SCAN_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Z)V

    .line 210
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->f()V

    .line 211
    return-void
.end method

.method public flipIndeterminate(Z)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->d:Landroid/support/v4/content/LocalBroadcastManager;

    const-string v1, "SCAN_FLIP_INDETERMINATE"

    invoke-direct {p0, v1, p1}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 168
    return-void
.end method

.method public declared-synchronized getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->q:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->q:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 229
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->q:Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNotifyManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->e:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 220
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->e:Landroid/app/NotificationManager;

    .line 222
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->e:Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasCancelled()Z
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->b()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 340
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 341
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScanService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 342
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 343
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 344
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->b:Landroid/os/Looper;

    .line 345
    new-instance v0, Lde/gdata/mobilesecurity/scan/f;

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->b:Landroid/os/Looper;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/scan/f;-><init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->c:Lde/gdata/mobilesecurity/scan/f;

    .line 347
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->d:Landroid/support/v4/content/LocalBroadcastManager;

    .line 348
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->m:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 349
    iput-object p0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->n:Lde/gdata/mobilesecurity/scan/ScanService;

    .line 353
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 386
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->f()V

    .line 387
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 388
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 503
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 504
    const-string v3, "ScanWakeLock"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 505
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 508
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(I)V

    .line 509
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    .line 510
    iget-object v4, p0, Lde/gdata/mobilesecurity/scan/ScanService;->m:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isTrialOutOfTrialPeriod()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isProtectFeaturesUntilRegistration()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isInvalidTrial()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBitDefenderEnabled(Z)V

    .line 512
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 514
    const-string v0, "scan started"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->logFreeMemory(Landroid/content/Context;Ljava/lang/String;)V

    .line 516
    const-string v0, "START_FILE_SCAN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 522
    :goto_1
    if-eqz v0, :cond_4

    .line 523
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Landroid/content/Intent;)Lde/gdata/mobilesecurity/scan/LogEntry;

    move-result-object v0

    .line 524
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageExtra()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 527
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 528
    const-string v0, "gdscanlog.txt"

    invoke-static {p0, v1, v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->writeToExternalStorageDownloadFolder(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    .line 531
    :cond_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->m:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setTimeOfLastManualScan(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :cond_1
    const-string v0, "Releasing wakelock"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 548
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->finished()V

    .line 551
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 510
    goto :goto_0

    .line 518
    :cond_3
    :try_start_1
    const-string v0, "START_APP_SCAN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 519
    goto :goto_1

    .line 535
    :cond_4
    const-string v0, "START_SIDELOAD_SCAN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 536
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 537
    const-string v1, "APK_FILE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    .line 546
    const-string v0, "Releasing wakelock"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 548
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->finished()V

    goto :goto_2

    .line 540
    :cond_5
    :try_start_2
    const-string v1, "APK_FILE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 546
    :goto_3
    const-string v0, "Releasing wakelock"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 548
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->finished()V

    goto :goto_2

    .line 543
    :cond_6
    :try_start_3
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/scan/ScanService;->b(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 546
    :catchall_0
    move-exception v0

    const-string v1, "Releasing wakelock"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 548
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->finished()V

    throw v0

    :cond_7
    move v0, v2

    goto/16 :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x2

    .line 392
    if-nez p1, :cond_0

    .line 431
    :goto_0
    return v0

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 394
    if-nez v2, :cond_1

    const-string v3, "app_to_scan"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 395
    invoke-direct {p0, v4}, Lde/gdata/mobilesecurity/scan/ScanService;->b(Z)V

    .line 396
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->c:Lde/gdata/mobilesecurity/scan/f;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/f;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 397
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/ScanService;->c:Lde/gdata/mobilesecurity/scan/f;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/scan/f;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    .line 399
    goto :goto_0

    .line 400
    :cond_1
    const-string v3, "SERVICE_IS_RUNNING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 401
    const-string v1, "SERVICE_IS_RUNNING"

    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->a()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 402
    const-string v2, "progress"

    iget v3, p0, Lde/gdata/mobilesecurity/scan/ScanService;->h:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    const-string v2, "status"

    iget-object v3, p0, Lde/gdata/mobilesecurity/scan/ScanService;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v2, "scantype"

    iget v3, p0, Lde/gdata/mobilesecurity/scan/ScanService;->k:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const-string v2, "SCAN_STEP"

    iget v3, p0, Lde/gdata/mobilesecurity/scan/ScanService;->j:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/ScanService;->d:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    goto :goto_0

    .line 411
    :cond_2
    const-string v3, "SERVICE_FRAGMENT_IS_RUNNING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 412
    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->c(Z)V

    goto :goto_0

    .line 414
    :cond_3
    const-string v3, "SERVICE_FRAGMENT_IS_NOT_RUNNING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 415
    invoke-direct {p0, v4}, Lde/gdata/mobilesecurity/scan/ScanService;->c(Z)V

    goto :goto_0

    .line 417
    :cond_4
    const-string v3, "SERVICE_CANCEL_SCAN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 418
    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->b(Z)V

    goto :goto_0

    .line 420
    :cond_5
    const-string v3, "SCAN_PROGRESS_STEP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 421
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->c()V

    goto/16 :goto_0

    .line 423
    :cond_6
    const-string v0, "START_FILE_SCAN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "START_APP_SCAN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 424
    :cond_7
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->d()V

    .line 426
    :cond_8
    invoke-direct {p0, v4}, Lde/gdata/mobilesecurity/scan/ScanService;->b(Z)V

    .line 427
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->c:Lde/gdata/mobilesecurity/scan/f;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/f;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 428
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 429
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 430
    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/ScanService;->c:Lde/gdata/mobilesecurity/scan/f;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/scan/f;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    .line 431
    goto/16 :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->d:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "SCAN_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 173
    return-void
.end method

.method public setAdvanceStep(I)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->d:Landroid/support/v4/content/LocalBroadcastManager;

    const-string v1, "SCAN_SET_ADVANCE_STEP"

    invoke-direct {p0, v1, p1}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 163
    return-void
.end method

.method public setLimit(I)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->d:Landroid/support/v4/content/LocalBroadcastManager;

    const-string v1, "SCAN_SET_ADVANCE_STEP"

    invoke-direct {p0, v1, p1}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 183
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->d:Landroid/support/v4/content/LocalBroadcastManager;

    const-string v1, "SCAN_SET_PROGRESS"

    invoke-direct {p0, v1, p1}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 202
    iput p1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->h:I

    .line 204
    return-void
.end method

.method public tick()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->d:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "SCAN_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 178
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lde/gdata/mobilesecurity/scan/ScanService;->r:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 188
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->d:Landroid/support/v4/content/LocalBroadcastManager;

    const-string v1, "SCAN_SET_UPDATE_STATUS"

    invoke-direct {p0, v1, p1}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 189
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->p:Z

    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->e()V

    .line 192
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/scan/ScanService;->r:J

    .line 194
    :cond_1
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/ScanService;->i:Ljava/lang/String;

    .line 196
    return-void
.end method
