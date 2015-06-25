.class Lde/gdata/mobilesecurity/scan/cloud/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/scan/FileInfection;

.field b:Lde/gdata/mobilesecurity/scan/AppInfection;

.field c:Lcom/bitdefender/scanner/ResultInfo;

.field final synthetic d:Lde/gdata/mobilesecurity/scan/cloud/CloudScan;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/scan/cloud/CloudScan;Lde/gdata/mobilesecurity/scan/FileInfection;Lde/gdata/mobilesecurity/scan/AppInfection;Lcom/bitdefender/scanner/ResultInfo;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/cloud/a;->d:Lde/gdata/mobilesecurity/scan/cloud/CloudScan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-object p2, p0, Lde/gdata/mobilesecurity/scan/cloud/a;->a:Lde/gdata/mobilesecurity/scan/FileInfection;

    .line 564
    iput-object p4, p0, Lde/gdata/mobilesecurity/scan/cloud/a;->c:Lcom/bitdefender/scanner/ResultInfo;

    .line 565
    iput-object p3, p0, Lde/gdata/mobilesecurity/scan/cloud/a;->b:Lde/gdata/mobilesecurity/scan/AppInfection;

    .line 566
    return-void
.end method


# virtual methods
.method public a()Lde/gdata/mobilesecurity/scan/AppInfection;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/a;->b:Lde/gdata/mobilesecurity/scan/AppInfection;

    return-object v0
.end method

.method public a(Lcom/bitdefender/scanner/ResultInfo;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/cloud/a;->c:Lcom/bitdefender/scanner/ResultInfo;

    .line 590
    return-void
.end method

.method public b()Lde/gdata/mobilesecurity/scan/FileInfection;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/a;->a:Lde/gdata/mobilesecurity/scan/FileInfection;

    return-object v0
.end method

.method public c()Lcom/bitdefender/scanner/ResultInfo;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/a;->c:Lcom/bitdefender/scanner/ResultInfo;

    return-object v0
.end method
