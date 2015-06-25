.class abstract Lcom/google/zxing/aztec/encoder/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/zxing/aztec/encoder/e;


# instance fields
.field private final b:Lcom/google/zxing/aztec/encoder/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/google/zxing/aztec/encoder/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/zxing/aztec/encoder/c;-><init>(Lcom/google/zxing/aztec/encoder/e;II)V

    sput-object v0, Lcom/google/zxing/aztec/encoder/e;->a:Lcom/google/zxing/aztec/encoder/e;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/aztec/encoder/e;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/e;->b:Lcom/google/zxing/aztec/encoder/e;

    .line 29
    return-void
.end method


# virtual methods
.method final a()Lcom/google/zxing/aztec/encoder/e;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/e;->b:Lcom/google/zxing/aztec/encoder/e;

    return-object v0
.end method

.method final a(II)Lcom/google/zxing/aztec/encoder/e;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/zxing/aztec/encoder/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/zxing/aztec/encoder/c;-><init>(Lcom/google/zxing/aztec/encoder/e;II)V

    return-object v0
.end method

.method abstract a(Lcom/google/zxing/common/BitArray;[B)V
.end method

.method final b(II)Lcom/google/zxing/aztec/encoder/e;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/zxing/aztec/encoder/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/zxing/aztec/encoder/a;-><init>(Lcom/google/zxing/aztec/encoder/e;II)V

    return-object v0
.end method
