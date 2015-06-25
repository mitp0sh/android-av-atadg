.class Lme/dm7/barcodescanner/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lme/dm7/barcodescanner/core/CameraPreview;


# direct methods
.method constructor <init>(Lme/dm7/barcodescanner/core/CameraPreview;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lme/dm7/barcodescanner/core/a;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lme/dm7/barcodescanner/core/a;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->a(Lme/dm7/barcodescanner/core/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/a;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->b(Lme/dm7/barcodescanner/core/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/a;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->c(Lme/dm7/barcodescanner/core/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/a;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->d(Lme/dm7/barcodescanner/core/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lme/dm7/barcodescanner/core/a;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->a(Lme/dm7/barcodescanner/core/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lme/dm7/barcodescanner/core/a;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraPreview;->a:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 200
    :cond_0
    return-void
.end method
