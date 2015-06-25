.class public abstract Lme/dm7/barcodescanner/core/BarcodeScannerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private a:Landroid/hardware/Camera;

.field private b:Lme/dm7/barcodescanner/core/CameraPreview;

.field private c:Lme/dm7/barcodescanner/core/ViewFinderView;

.field private d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupLayout()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupLayout()V

    .line 25
    return-void
.end method


# virtual methods
.method public getFlash()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 104
    :cond_0
    return v0
.end method

.method public declared-synchronized getFramingRectInPreview(II)Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 54
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-virtual {v1}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 55
    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 58
    :cond_1
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 59
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 60
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 62
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 67
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v4

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v4

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 68
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v4

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v4

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 69
    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v4

    iget v4, v1, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v4

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 70
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 72
    iput-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Landroid/graphics/Rect;

    .line 74
    :cond_2
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAutoFocus(Z)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->b:Lme/dm7/barcodescanner/core/CameraPreview;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->b:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/CameraPreview;->setAutoFocus(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public setFlash(Z)V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 80
    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 91
    :goto_1
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setupLayout()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lme/dm7/barcodescanner/core/CameraPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->b:Lme/dm7/barcodescanner/core/CameraPreview;

    .line 29
    new-instance v0, Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lme/dm7/barcodescanner/core/ViewFinderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 30
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->b:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    .line 31
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public startCamera()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lme/dm7/barcodescanner/core/CameraUtils;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    .line 36
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/ViewFinderView;->setupViewFinder()V

    .line 38
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->b:Lme/dm7/barcodescanner/core/CameraPreview;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, p0}, Lme/dm7/barcodescanner/core/CameraPreview;->setCamera(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V

    .line 39
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->b:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->initCameraPreview()V

    .line 41
    :cond_0
    return-void
.end method

.method public stopCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->b:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 46
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->b:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, v1, v1}, Lme/dm7/barcodescanner/core/CameraPreview;->setCamera(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V

    .line 47
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 48
    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    .line 50
    :cond_0
    return-void
.end method

.method public toggleFlash()V
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 115
    :goto_0
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 117
    :cond_0
    return-void

    .line 113
    :cond_1
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method
