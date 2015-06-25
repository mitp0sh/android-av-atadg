.class final enum Lcom/google/zxing/pdf417/decoder/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/pdf417/decoder/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/pdf417/decoder/g;

.field public static final enum b:Lcom/google/zxing/pdf417/decoder/g;

.field public static final enum c:Lcom/google/zxing/pdf417/decoder/g;

.field public static final enum d:Lcom/google/zxing/pdf417/decoder/g;

.field public static final enum e:Lcom/google/zxing/pdf417/decoder/g;

.field public static final enum f:Lcom/google/zxing/pdf417/decoder/g;

.field private static final synthetic g:[Lcom/google/zxing/pdf417/decoder/g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/google/zxing/pdf417/decoder/g;

    const-string v1, "ALPHA"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/pdf417/decoder/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/g;->a:Lcom/google/zxing/pdf417/decoder/g;

    .line 36
    new-instance v0, Lcom/google/zxing/pdf417/decoder/g;

    const-string v1, "LOWER"

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/pdf417/decoder/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/g;->b:Lcom/google/zxing/pdf417/decoder/g;

    .line 37
    new-instance v0, Lcom/google/zxing/pdf417/decoder/g;

    const-string v1, "MIXED"

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/pdf417/decoder/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/g;->c:Lcom/google/zxing/pdf417/decoder/g;

    .line 38
    new-instance v0, Lcom/google/zxing/pdf417/decoder/g;

    const-string v1, "PUNCT"

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/pdf417/decoder/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/g;->d:Lcom/google/zxing/pdf417/decoder/g;

    .line 39
    new-instance v0, Lcom/google/zxing/pdf417/decoder/g;

    const-string v1, "ALPHA_SHIFT"

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/pdf417/decoder/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/g;->e:Lcom/google/zxing/pdf417/decoder/g;

    .line 40
    new-instance v0, Lcom/google/zxing/pdf417/decoder/g;

    const-string v1, "PUNCT_SHIFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/g;->f:Lcom/google/zxing/pdf417/decoder/g;

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/g;

    sget-object v1, Lcom/google/zxing/pdf417/decoder/g;->a:Lcom/google/zxing/pdf417/decoder/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/pdf417/decoder/g;->b:Lcom/google/zxing/pdf417/decoder/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/pdf417/decoder/g;->c:Lcom/google/zxing/pdf417/decoder/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/pdf417/decoder/g;->d:Lcom/google/zxing/pdf417/decoder/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/pdf417/decoder/g;->e:Lcom/google/zxing/pdf417/decoder/g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/pdf417/decoder/g;->f:Lcom/google/zxing/pdf417/decoder/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/g;->g:[Lcom/google/zxing/pdf417/decoder/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/pdf417/decoder/g;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/zxing/pdf417/decoder/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/pdf417/decoder/g;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/pdf417/decoder/g;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/zxing/pdf417/decoder/g;->g:[Lcom/google/zxing/pdf417/decoder/g;

    invoke-virtual {v0}, [Lcom/google/zxing/pdf417/decoder/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/pdf417/decoder/g;

    return-object v0
.end method
