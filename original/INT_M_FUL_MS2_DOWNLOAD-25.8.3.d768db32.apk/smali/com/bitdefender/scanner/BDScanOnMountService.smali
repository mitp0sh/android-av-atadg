.class public Lcom/bitdefender/scanner/BDScanOnMountService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/bitdefender/scanner/c;

.field private b:Lcom/bitdefender/scanner/Scanner;

.field private c:Lcom/bitdefender/scanner/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->a:Lcom/bitdefender/scanner/c;

    .line 12
    iput-object v0, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->b:Lcom/bitdefender/scanner/Scanner;

    .line 14
    iput-object v0, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->c:Lcom/bitdefender/scanner/k;

    .line 22
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v1, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v1}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 107
    iput p1, v1, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-direct {p0, v0}, Lcom/bitdefender/scanner/BDScanOnMountService;->a(Ljava/util/ArrayList;)V

    .line 110
    invoke-virtual {p0}, Lcom/bitdefender/scanner/BDScanOnMountService;->stopSelf()V

    .line 111
    return-void
.end method

.method private declared-synchronized a(ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bitdefender.scanner.ON_MOUNT_SCAN_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v1, "PROGRESS_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v1, "PACKAGE_ANALYZED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "PROGRESS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/bitdefender/scanner/BDScanOnMountService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/bitdefender/scanner/BDScanOnMountService;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/bitdefender/scanner/BDScanOnMountService;->a(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/bitdefender/scanner/BDScanOnMountService;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/bitdefender/scanner/BDScanOnMountService;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bitdefender.scanner.ON_MOUNT_SCAN_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v1, "RESULT_LIST"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/bitdefender/scanner/BDScanOnMountService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    invoke-static {p0}, Lcom/bitdefender/scanner/k;->a(Landroid/content/Context;)Lcom/bitdefender/scanner/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->c:Lcom/bitdefender/scanner/k;

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->b:Lcom/bitdefender/scanner/Scanner;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->a:Lcom/bitdefender/scanner/c;

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->b:Lcom/bitdefender/scanner/Scanner;

    iget-object v1, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->a:Lcom/bitdefender/scanner/c;

    invoke-virtual {v0, v1}, Lcom/bitdefender/scanner/Scanner;->StopScan(Lcom/bitdefender/scanner/IResponseScan;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->a:Lcom/bitdefender/scanner/c;

    .line 101
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 96
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 45
    if-nez p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/bitdefender/scanner/BDScanOnMountService;->stopSelf()V

    .line 89
    :cond_0
    :goto_0
    return v4

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    if-nez v0, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/bitdefender/scanner/BDScanOnMountService;->stopSelf()V

    goto :goto_0

    .line 58
    :cond_2
    const-string v1, "scanning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    invoke-static {}, Lcom/bitdefender/scanner/Scanner;->getInstance()Lcom/bitdefender/scanner/Scanner;

    move-result-object v0

    iput-object v0, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->b:Lcom/bitdefender/scanner/Scanner;

    .line 64
    iget-object v0, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->c:Lcom/bitdefender/scanner/k;

    invoke-virtual {v0}, Lcom/bitdefender/scanner/k;->e()J

    move-result-wide v0

    .line 66
    iget-object v2, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->b:Lcom/bitdefender/scanner/Scanner;

    invoke-virtual {v2}, Lcom/bitdefender/scanner/Scanner;->GetOnMountScanStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    iget-object v2, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->c:Lcom/bitdefender/scanner/k;

    invoke-virtual {v2}, Lcom/bitdefender/scanner/k;->c()Z

    move-result v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/bitdefender/scanner/BDScanOnMountService;->stopSelf()V
    :try_end_0
    .catch Lcom/bd/android/shared/BDNotInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 86
    const/16 v0, -0x135

    invoke-direct {p0, v0}, Lcom/bitdefender/scanner/BDScanOnMountService;->a(I)V

    goto :goto_0

    .line 75
    :cond_3
    :try_start_1
    new-instance v0, Lcom/bitdefender/scanner/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bitdefender/scanner/c;-><init>(Lcom/bitdefender/scanner/BDScanOnMountService;Lcom/bitdefender/scanner/b;)V

    iput-object v0, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->a:Lcom/bitdefender/scanner/c;

    .line 76
    iget-object v0, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->b:Lcom/bitdefender/scanner/Scanner;

    iget-object v1, p0, Lcom/bitdefender/scanner/BDScanOnMountService;->a:Lcom/bitdefender/scanner/c;

    invoke-virtual {v0, v1}, Lcom/bitdefender/scanner/Scanner;->ScanStorage(Lcom/bitdefender/scanner/IResponseScan;)V

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {p0}, Lcom/bitdefender/scanner/BDScanOnMountService;->stopSelf()V
    :try_end_1
    .catch Lcom/bd/android/shared/BDNotInitializedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
