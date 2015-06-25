.class public Lcom/bitdefender/scanner/BDScanOnInstallService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/bitdefender/scanner/a;

.field private b:Lcom/bitdefender/scanner/Scanner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/bitdefender/scanner/BDScanOnInstallService;->a:Lcom/bitdefender/scanner/a;

    .line 15
    iput-object v0, p0, Lcom/bitdefender/scanner/BDScanOnInstallService;->b:Lcom/bitdefender/scanner/Scanner;

    .line 32
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v1, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v1}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 109
    iput p1, v1, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 110
    iput-object p2, v1, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bitdefender/scanner/BDScanOnInstallService;->a(Ljava/util/ArrayList;Z)V

    .line 113
    invoke-virtual {p0}, Lcom/bitdefender/scanner/BDScanOnInstallService;->stopSelf()V

    .line 114
    return-void
.end method

.method private declared-synchronized a(ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bitdefender.scanner.ON_INSTALL_SCAN_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    const-string v1, "PROGRESS_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v1, "PACKAGE_ANALYZED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v1, "PROGRESS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/bitdefender/scanner/BDScanOnInstallService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/bitdefender/scanner/BDScanOnInstallService;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/bitdefender/scanner/BDScanOnInstallService;->a(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/bitdefender/scanner/BDScanOnInstallService;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/bitdefender/scanner/BDScanOnInstallService;->a(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bitdefender.scanner.ON_INSTALL_SCAN_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    const-string v1, "RESULT_LIST"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 129
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/bitdefender/scanner/BDScanOnInstallService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 56
    if-nez p1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/bitdefender/scanner/BDScanOnInstallService;->stopSelf()V

    .line 102
    :cond_0
    :goto_0
    return v4

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    if-nez v0, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/bitdefender/scanner/BDScanOnInstallService;->stopSelf()V

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scanning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    if-eqz v0, :cond_3

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :try_start_0
    invoke-static {}, Lcom/bitdefender/scanner/Scanner;->getInstance()Lcom/bitdefender/scanner/Scanner;

    move-result-object v1

    iput-object v1, p0, Lcom/bitdefender/scanner/BDScanOnInstallService;->b:Lcom/bitdefender/scanner/Scanner;

    .line 87
    iget-object v1, p0, Lcom/bitdefender/scanner/BDScanOnInstallService;->b:Lcom/bitdefender/scanner/Scanner;

    invoke-virtual {v1}, Lcom/bitdefender/scanner/Scanner;->GetOnInstallScanStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    new-instance v1, Lcom/bitdefender/scanner/a;

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/bitdefender/scanner/a;-><init>(Lcom/bitdefender/scanner/BDScanOnInstallService;Z)V

    iput-object v1, p0, Lcom/bitdefender/scanner/BDScanOnInstallService;->a:Lcom/bitdefender/scanner/a;

    .line 90
    iget-object v1, p0, Lcom/bitdefender/scanner/BDScanOnInstallService;->b:Lcom/bitdefender/scanner/Scanner;

    iget-object v2, p0, Lcom/bitdefender/scanner/BDScanOnInstallService;->a:Lcom/bitdefender/scanner/a;

    invoke-virtual {v1, v0, v2}, Lcom/bitdefender/scanner/Scanner;->ScanInstalledPackage(Ljava/lang/String;Lcom/bitdefender/scanner/IResponseScan;)V
    :try_end_0
    .catch Lcom/bd/android/shared/BDNotInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 99
    const/16 v1, -0x135

    invoke-direct {p0, v1, v0}, Lcom/bitdefender/scanner/BDScanOnInstallService;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/bitdefender/scanner/BDScanOnInstallService;->stopSelf()V

    goto :goto_0

    .line 94
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/bitdefender/scanner/BDScanOnInstallService;->stopSelf()V
    :try_end_1
    .catch Lcom/bd/android/shared/BDNotInitializedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
