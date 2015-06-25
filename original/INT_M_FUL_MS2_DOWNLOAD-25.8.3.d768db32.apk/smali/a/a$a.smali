.class public final enum La/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:La/a$a;

.field public static final enum MALE:La/a$a;

.field public static final enum UNKNOWN:La/a$a;

.field private static final synthetic a:[La/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, La/a$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, La/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a$a;->UNKNOWN:La/a$a;

    new-instance v0, La/a$a;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3}, La/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a$a;->MALE:La/a$a;

    new-instance v0, La/a$a;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4}, La/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a$a;->FEMALE:La/a$a;

    const/4 v0, 0x3

    new-array v0, v0, [La/a$a;

    sget-object v1, La/a$a;->UNKNOWN:La/a$a;

    aput-object v1, v0, v2

    sget-object v1, La/a$a;->MALE:La/a$a;

    aput-object v1, v0, v3

    sget-object v1, La/a$a;->FEMALE:La/a$a;

    aput-object v1, v0, v4

    sput-object v0, La/a$a;->a:[La/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a$a;
    .locals 1

    const-class v0, La/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a$a;

    return-object v0
.end method

.method public static values()[La/a$a;
    .locals 1

    sget-object v0, La/a$a;->a:[La/a$a;

    invoke-virtual {v0}, [La/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a$a;

    return-object v0
.end method
