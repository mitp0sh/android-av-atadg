.class final Lcom/google/zxing/oned/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/google/zxing/oned/b;

.field private final c:Lcom/google/zxing/oned/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/d;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/google/zxing/oned/b;

    invoke-direct {v0}, Lcom/google/zxing/oned/b;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/d;->b:Lcom/google/zxing/oned/b;

    .line 29
    new-instance v0, Lcom/google/zxing/oned/c;

    invoke-direct {v0}, Lcom/google/zxing/oned/c;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/d;->c:Lcom/google/zxing/oned/c;

    return-void
.end method


# virtual methods
.method a(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/oned/d;->a:[I

    invoke-static {p2, p3, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->a(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/oned/d;->c:Lcom/google/zxing/oned/c;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/zxing/oned/c;->a(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    iget-object v1, p0, Lcom/google/zxing/oned/d;->b:Lcom/google/zxing/oned/b;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/zxing/oned/b;->a(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;

    move-result-object v0

    goto :goto_0
.end method
