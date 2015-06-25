.class Lcom/google/zxing/aztec/encoder/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/aztec/encoder/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/zxing/aztec/encoder/HighLevelEncoder;


# direct methods
.method constructor <init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/b;->a:Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/aztec/encoder/d;Lcom/google/zxing/aztec/encoder/d;)I
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/d;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/aztec/encoder/d;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 192
    check-cast p1, Lcom/google/zxing/aztec/encoder/d;

    check-cast p2, Lcom/google/zxing/aztec/encoder/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/aztec/encoder/b;->a(Lcom/google/zxing/aztec/encoder/d;Lcom/google/zxing/aztec/encoder/d;)I

    move-result v0

    return v0
.end method
