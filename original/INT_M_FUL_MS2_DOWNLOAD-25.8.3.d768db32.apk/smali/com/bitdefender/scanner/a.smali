.class Lcom/bitdefender/scanner/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bitdefender/scanner/IResponseScan;


# instance fields
.field final synthetic a:Lcom/bitdefender/scanner/BDScanOnInstallService;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/bitdefender/scanner/BDScanOnInstallService;Z)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lcom/bitdefender/scanner/a;->a:Lcom/bitdefender/scanner/BDScanOnInstallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bitdefender/scanner/a;->b:Z

    .line 38
    iput-boolean p2, p0, Lcom/bitdefender/scanner/a;->b:Z

    .line 39
    return-void
.end method


# virtual methods
.method public ResponseScanFinished(Ljava/util/ArrayList;)V
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
    .line 48
    iget-object v0, p0, Lcom/bitdefender/scanner/a;->a:Lcom/bitdefender/scanner/BDScanOnInstallService;

    iget-boolean v1, p0, Lcom/bitdefender/scanner/a;->b:Z

    invoke-static {v0, p1, v1}, Lcom/bitdefender/scanner/BDScanOnInstallService;->a(Lcom/bitdefender/scanner/BDScanOnInstallService;Ljava/util/ArrayList;Z)V

    .line 49
    iget-object v0, p0, Lcom/bitdefender/scanner/a;->a:Lcom/bitdefender/scanner/BDScanOnInstallService;

    invoke-virtual {v0}, Lcom/bitdefender/scanner/BDScanOnInstallService;->stopSelf()V

    .line 50
    return-void
.end method

.method public ResponseScanInProgress(ILjava/lang/String;I)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bitdefender/scanner/a;->a:Lcom/bitdefender/scanner/BDScanOnInstallService;

    invoke-static {v0, p1, p2, p3}, Lcom/bitdefender/scanner/BDScanOnInstallService;->a(Lcom/bitdefender/scanner/BDScanOnInstallService;ILjava/lang/String;I)V

    .line 44
    return-void
.end method
