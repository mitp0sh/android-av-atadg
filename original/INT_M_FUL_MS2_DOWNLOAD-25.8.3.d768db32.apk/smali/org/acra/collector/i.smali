.class final enum Lorg/acra/collector/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/acra/collector/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/acra/collector/i;

.field public static final enum b:Lorg/acra/collector/i;

.field public static final enum c:Lorg/acra/collector/i;

.field public static final enum d:Lorg/acra/collector/i;

.field private static final synthetic e:[Lorg/acra/collector/i;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lorg/acra/collector/i;

    const-string v1, "AVC"

    invoke-direct {v0, v1, v2}, Lorg/acra/collector/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/collector/i;->a:Lorg/acra/collector/i;

    new-instance v0, Lorg/acra/collector/i;

    const-string v1, "H263"

    invoke-direct {v0, v1, v3}, Lorg/acra/collector/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/collector/i;->b:Lorg/acra/collector/i;

    new-instance v0, Lorg/acra/collector/i;

    const-string v1, "MPEG4"

    invoke-direct {v0, v1, v4}, Lorg/acra/collector/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/collector/i;->c:Lorg/acra/collector/i;

    new-instance v0, Lorg/acra/collector/i;

    const-string v1, "AAC"

    invoke-direct {v0, v1, v5}, Lorg/acra/collector/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/collector/i;->d:Lorg/acra/collector/i;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/acra/collector/i;

    sget-object v1, Lorg/acra/collector/i;->a:Lorg/acra/collector/i;

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/collector/i;->b:Lorg/acra/collector/i;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/collector/i;->c:Lorg/acra/collector/i;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/collector/i;->d:Lorg/acra/collector/i;

    aput-object v1, v0, v5

    sput-object v0, Lorg/acra/collector/i;->e:[Lorg/acra/collector/i;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/collector/i;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/acra/collector/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/collector/i;

    return-object v0
.end method

.method public static values()[Lorg/acra/collector/i;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/acra/collector/i;->e:[Lorg/acra/collector/i;

    invoke-virtual {v0}, [Lorg/acra/collector/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/collector/i;

    return-object v0
.end method
