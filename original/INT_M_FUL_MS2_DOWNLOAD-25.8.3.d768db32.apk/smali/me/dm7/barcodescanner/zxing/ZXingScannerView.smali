.class public Lme/dm7/barcodescanner/zxing/ZXingScannerView;
.super Lme/dm7/barcodescanner/core/BarcodeScannerView;
.source "SourceFile"


# static fields
.field public static final ALL_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/google/zxing/MultiFormatReader;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    .line 38
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lme/dm7/barcodescanner/core/BarcodeScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a()V

    .line 61
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 81
    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getFormats()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a:Lcom/google/zxing/MultiFormatReader;

    .line 83
    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 84
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 134
    invoke-virtual {p0, p2, p3}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getFramingRectInPreview(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 135
    if-nez v1, :cond_0

    .line 147
    :goto_0
    return-object v9

    .line 142
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v9, v0

    .line 147
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    move-object v0, v9

    goto :goto_1
.end method

.method public getFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 90
    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    .line 91
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    .line 93
    invoke-virtual {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 94
    array-length v2, p1

    new-array v2, v2, [B

    move v5, v4

    .line 95
    :goto_0
    if-ge v5, v1, :cond_1

    move v3, v4

    .line 96
    :goto_1
    if-ge v3, v0, :cond_0

    .line 97
    mul-int v6, v3, v1

    add-int/2addr v6, v1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    mul-int v7, v5, v0

    add-int/2addr v7, v3

    aget-byte v7, p1, v7

    aput-byte v7, v2, v6

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    :cond_0
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 105
    :goto_2
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p0, p1, v1, v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_4

    .line 109
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 111
    :try_start_0
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 119
    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 123
    :goto_3
    if-eqz v0, :cond_3

    .line 124
    invoke-virtual {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->stopCamera()V

    .line 125
    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    invoke-interface {v1, v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;->handleResult(Lcom/google/zxing/Result;)V

    .line 131
    :cond_2
    :goto_4
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 119
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v2

    .line 120
    goto :goto_3

    .line 114
    :catch_1
    move-exception v0

    .line 119
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v2

    .line 120
    goto :goto_3

    .line 116
    :catch_2
    move-exception v0

    .line 119
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v2

    .line 120
    goto :goto_3

    .line 119
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v0

    .line 129
    :cond_3
    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_4

    :cond_4
    move-object v0, v2

    goto :goto_3

    :cond_5
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_2
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->b:Ljava/util/List;

    .line 65
    invoke-direct {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a()V

    .line 66
    return-void
.end method

.method public setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    .line 70
    return-void
.end method
