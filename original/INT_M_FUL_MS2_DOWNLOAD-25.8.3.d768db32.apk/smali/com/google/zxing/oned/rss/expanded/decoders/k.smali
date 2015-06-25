.class final Lcom/google/zxing/oned/rss/expanded/decoders/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/oned/rss/expanded/decoders/o;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/oned/rss/expanded/decoders/o;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/k;->b:Z

    .line 44
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/k;->a:Lcom/google/zxing/oned/rss/expanded/decoders/o;

    .line 45
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/o;Z)V

    .line 40
    return-void
.end method


# virtual methods
.method a()Lcom/google/zxing/oned/rss/expanded/decoders/o;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/k;->a:Lcom/google/zxing/oned/rss/expanded/decoders/o;

    return-object v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/k;->b:Z

    return v0
.end method
