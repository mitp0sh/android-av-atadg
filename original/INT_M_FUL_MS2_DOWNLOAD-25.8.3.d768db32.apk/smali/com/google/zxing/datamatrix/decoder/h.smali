.class final Lcom/google/zxing/datamatrix/decoder/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[Lcom/google/zxing/datamatrix/decoder/g;


# direct methods
.method private constructor <init>(ILcom/google/zxing/datamatrix/decoder/g;)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/h;->a:I

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/zxing/datamatrix/decoder/g;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/h;->b:[Lcom/google/zxing/datamatrix/decoder/g;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/zxing/datamatrix/decoder/g;Lcom/google/zxing/datamatrix/decoder/f;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/datamatrix/decoder/h;-><init>(ILcom/google/zxing/datamatrix/decoder/g;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/zxing/datamatrix/decoder/g;Lcom/google/zxing/datamatrix/decoder/g;)V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/h;->a:I

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/datamatrix/decoder/g;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/h;->b:[Lcom/google/zxing/datamatrix/decoder/g;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/zxing/datamatrix/decoder/g;Lcom/google/zxing/datamatrix/decoder/g;Lcom/google/zxing/datamatrix/decoder/f;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/datamatrix/decoder/h;-><init>(ILcom/google/zxing/datamatrix/decoder/g;Lcom/google/zxing/datamatrix/decoder/g;)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/h;->a:I

    return v0
.end method

.method b()[Lcom/google/zxing/datamatrix/decoder/g;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/h;->b:[Lcom/google/zxing/datamatrix/decoder/g;

    return-object v0
.end method
