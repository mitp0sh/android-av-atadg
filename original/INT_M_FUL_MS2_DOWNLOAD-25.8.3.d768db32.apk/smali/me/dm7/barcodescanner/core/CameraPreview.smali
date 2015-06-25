.class public Lme/dm7/barcodescanner/core/CameraPreview;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Landroid/hardware/Camera$AutoFocusCallback;

.field private b:Landroid/hardware/Camera;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/hardware/Camera$PreviewCallback;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    .line 23
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    .line 195
    new-instance v0, Lme/dm7/barcodescanner/core/a;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/a;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->h:Ljava/lang/Runnable;

    .line 204
    new-instance v0, Lme/dm7/barcodescanner/core/b;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/b;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->a:Landroid/hardware/Camera$AutoFocusCallback;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    .line 23
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    .line 195
    new-instance v0, Lme/dm7/barcodescanner/core/a;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/a;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->h:Ljava/lang/Runnable;

    .line 204
    new-instance v0, Lme/dm7/barcodescanner/core/b;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/b;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->a:Landroid/hardware/Camera$AutoFocusCallback;

    .line 33
    return-void
.end method

.method static synthetic a(Lme/dm7/barcodescanner/core/CameraPreview;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic b(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    return v0
.end method

.method static synthetic c(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    return v0
.end method

.method static synthetic d(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    return v0
.end method

.method static synthetic e(Lme/dm7/barcodescanner/core/CameraPreview;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lme/dm7/barcodescanner/core/CameraPreview;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private getOptimalPreviewSize()Landroid/hardware/Camera$Size;
    .locals 18

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 138
    const/4 v3, 0x0

    .line 176
    :cond_0
    :goto_0
    return-object v3

    .line 141
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 142
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    .line 143
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 144
    iget v7, v2, Landroid/graphics/Point;->y:I

    .line 148
    int-to-double v2, v3

    int-to-double v4, v7

    div-double v8, v2, v4

    .line 149
    if-nez v6, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 151
    :cond_2
    const/4 v3, 0x0

    .line 152
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 157
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 158
    iget v11, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v11

    iget v11, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v11

    div-double/2addr v12, v14

    .line 159
    sub-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpl-double v11, v12, v14

    if-gtz v11, :cond_3

    .line 160
    iget v11, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v12, v11

    cmpg-double v11, v12, v4

    if-gez v11, :cond_6

    .line 162
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v4, v3

    move-wide/from16 v16, v4

    move-object v4, v2

    move-wide/from16 v2, v16

    :goto_2
    move-wide/from16 v16, v2

    move-object v3, v4

    move-wide/from16 v4, v16

    .line 164
    goto :goto_1

    .line 167
    :cond_4
    if-nez v3, :cond_0

    .line 168
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 169
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 170
    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v4

    if-gez v8, :cond_5

    .line 172
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v4, v3

    move-wide/from16 v16, v4

    move-object v4, v2

    move-wide/from16 v2, v16

    :goto_4
    move-wide/from16 v16, v2

    move-object v3, v4

    move-wide/from16 v4, v16

    .line 174
    goto :goto_3

    :cond_5
    move-wide/from16 v16, v4

    move-object v4, v3

    move-wide/from16 v2, v16

    goto :goto_4

    :cond_6
    move-wide/from16 v16, v4

    move-object v4, v3

    move-wide/from16 v2, v16

    goto :goto_2
.end method


# virtual methods
.method public getDisplayOrientation()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 112
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 113
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 114
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 115
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 119
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 127
    :goto_0
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 128
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 129
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 133
    :goto_1
    return v0

    :pswitch_0
    move v0, v1

    .line 120
    goto :goto_0

    .line 121
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 122
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 123
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 131
    :cond_0
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public initCameraPreview()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 44
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 45
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->requestLayout()V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->showCameraPreview()V

    goto :goto_0
.end method

.method public setAutoFocus(Z)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    if-eqz v0, :cond_0

    .line 181
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    if-ne p1, v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    .line 185
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    if-eqz v0, :cond_2

    .line 186
    const-string v0, "CameraPreview"

    const-string v1, "Starting autofocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->a:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0

    .line 189
    :cond_2
    const-string v0, "CameraPreview"

    const-string v1, "Cancelling autofocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public setCamera(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    .line 37
    iput-object p2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->g:Landroid/hardware/Camera$PreviewCallback;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->c:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method public setupCameraParameters()V
    .locals 3

    .prologue
    .line 105
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getOptimalPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 107
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 108
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 109
    return-void
.end method

.method public showCameraPreview()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    .line 77
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->setupCameraParameters()V

    .line 78
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 79
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 80
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->g:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 81
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 82
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->a:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v1, "CameraPreview"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopCameraPreview()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    .line 95
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 96
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 97
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "CameraPreview"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 60
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 64
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->showCameraPreview()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    .line 56
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    .line 70
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 71
    return-void
.end method
