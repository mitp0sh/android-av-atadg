.class Lme/dm7/barcodescanner/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic a:Lme/dm7/barcodescanner/core/CameraPreview;


# direct methods
.method constructor <init>(Lme/dm7/barcodescanner/core/CameraPreview;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lme/dm7/barcodescanner/core/b;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lme/dm7/barcodescanner/core/b;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->f(Lme/dm7/barcodescanner/core/CameraPreview;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lme/dm7/barcodescanner/core/b;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {v1}, Lme/dm7/barcodescanner/core/CameraPreview;->e(Lme/dm7/barcodescanner/core/CameraPreview;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    return-void
.end method
