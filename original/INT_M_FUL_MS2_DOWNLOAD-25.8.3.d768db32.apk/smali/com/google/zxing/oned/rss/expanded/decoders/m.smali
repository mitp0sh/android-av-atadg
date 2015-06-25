.class final enum Lcom/google/zxing/oned/rss/expanded/decoders/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/oned/rss/expanded/decoders/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/oned/rss/expanded/decoders/m;

.field public static final enum b:Lcom/google/zxing/oned/rss/expanded/decoders/m;

.field public static final enum c:Lcom/google/zxing/oned/rss/expanded/decoders/m;

.field private static final synthetic d:[Lcom/google/zxing/oned/rss/expanded/decoders/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    const-string v1, "NUMERIC"

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/m;->a:Lcom/google/zxing/oned/rss/expanded/decoders/m;

    .line 39
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    const-string v1, "ALPHA"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/m;->b:Lcom/google/zxing/oned/rss/expanded/decoders/m;

    .line 40
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    const-string v1, "ISO_IEC_646"

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/m;->c:Lcom/google/zxing/oned/rss/expanded/decoders/m;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/zxing/oned/rss/expanded/decoders/m;

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/m;->a:Lcom/google/zxing/oned/rss/expanded/decoders/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/m;->b:Lcom/google/zxing/oned/rss/expanded/decoders/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/m;->c:Lcom/google/zxing/oned/rss/expanded/decoders/m;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/m;->d:[Lcom/google/zxing/oned/rss/expanded/decoders/m;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/m;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/oned/rss/expanded/decoders/m;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/m;->d:[Lcom/google/zxing/oned/rss/expanded/decoders/m;

    invoke-virtual {v0}, [Lcom/google/zxing/oned/rss/expanded/decoders/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/oned/rss/expanded/decoders/m;

    return-object v0
.end method
