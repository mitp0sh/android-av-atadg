.class public Lde/gdata/webportal/android/ScannerActivity;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"

# interfaces
.implements Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;


# static fields
.field public static final REQUEST_SCAN_BARCODE:I = 0x1


# instance fields
.field private a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResult(Lcom/google/zxing/Result;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 49
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 50
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lde/gdata/webportal/android/ScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/webportal/android/ScannerActivity;->finishActivity(I)V

    .line 52
    invoke-virtual {p0}, Lde/gdata/webportal/android/ScannerActivity;->finish()V

    .line 53
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 23
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/webportal/android/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .line 26
    iget-object v0, p0, Lde/gdata/webportal/android/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setFormats(Ljava/util/List;)V

    .line 27
    iget-object v0, p0, Lde/gdata/webportal/android/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {p0, v0}, Lde/gdata/webportal/android/ScannerActivity;->setContentView(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->onPause()V

    .line 41
    iget-object v0, p0, Lde/gdata/webportal/android/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->stopCamera()V

    .line 42
    iget-object v0, p0, Lde/gdata/webportal/android/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V

    .line 43
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->onResume()V

    .line 33
    iget-object v0, p0, Lde/gdata/webportal/android/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V

    .line 34
    iget-object v0, p0, Lde/gdata/webportal/android/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setAutoFocus(Z)V

    .line 35
    iget-object v0, p0, Lde/gdata/webportal/android/ScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->startCamera()V

    .line 36
    return-void
.end method
