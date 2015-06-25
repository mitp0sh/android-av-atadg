.class public Lde/gdata/mobilesecurity/scan/ResponseScan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bitdefender/scanner/IResponseScan;


# instance fields
.field a:I

.field private b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lde/gdata/mobilesecurity/scan/ScanCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->a:I

    .line 16
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->b:Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->c:Ljava/util/Map;

    .line 18
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->d:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->e:Lde/gdata/mobilesecurity/scan/ScanCallbacks;

    .line 23
    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/scan/ScanCallbacks;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->a:I

    .line 16
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->b:Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->c:Ljava/util/Map;

    .line 18
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->d:Z

    .line 26
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->e:Lde/gdata/mobilesecurity/scan/ScanCallbacks;

    .line 27
    return-void
.end method


# virtual methods
.method public ResponseScanFinished(Ljava/util/ArrayList;)V
    .locals 6
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
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 63
    const-string v0, "Cloud responded"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    iput-boolean v4, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->b:Z

    .line 66
    iput v5, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->a:I

    .line 87
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitdefender/scanner/ResultInfo;

    .line 72
    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->c:Ljava/util/Map;

    iget-object v3, v0, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    iget v2, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    if-gez v2, :cond_2

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BD Engine Failed error Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_2
    iget v2, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->c:Ljava/util/Map;

    iget-object v3, v0, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 84
    :cond_3
    iput v5, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->a:I

    .line 85
    iput-boolean v4, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->b:Z

    .line 86
    iput-boolean v4, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->d:Z

    goto :goto_0
.end method

.method public ResponseScanInProgress(ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->e:Lde/gdata/mobilesecurity/scan/ScanCallbacks;

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->e:Lde/gdata/mobilesecurity/scan/ScanCallbacks;

    invoke-virtual {v0, p3}, Lde/gdata/mobilesecurity/scan/ScanCallbacks;->setBdProgress(I)V

    .line 46
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 48
    :pswitch_0
    const-string v0, "Building PackageList"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Anaylzing package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_2
    const-string v0, "Asking cloud"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getInfectionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getResult()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->d:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/scan/ResponseScan;->b:Z

    return v0
.end method
