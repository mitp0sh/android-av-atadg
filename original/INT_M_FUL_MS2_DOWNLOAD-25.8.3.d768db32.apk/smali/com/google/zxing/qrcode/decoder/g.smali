.class final Lcom/google/zxing/qrcode/decoder/g;
.super Lcom/google/zxing/qrcode/decoder/c;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/qrcode/decoder/c;-><init>(Lcom/google/zxing/qrcode/decoder/d;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/decoder/d;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/g;-><init>()V

    return-void
.end method


# virtual methods
.method a(II)Z
    .locals 1

    .prologue
    .line 108
    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
