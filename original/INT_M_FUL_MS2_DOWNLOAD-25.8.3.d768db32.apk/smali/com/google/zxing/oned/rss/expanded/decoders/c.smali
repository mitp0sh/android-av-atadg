.class final Lcom/google/zxing/oned/rss/expanded/decoders/c;
.super Lcom/google/zxing/oned/rss/expanded/decoders/h;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/h;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 43
    return-void
.end method


# virtual methods
.method public parseInformation()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 47
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/c;->getInformation()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 48
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/c;->b(Ljava/lang/StringBuilder;I)V

    .line 55
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/c;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/s;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v1

    .line 57
    const-string v2, "(392"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/c;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/s;

    move-result-object v1

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/o;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
