.class final enum Lcom/google/android/gms/analytics/az;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/analytics/az;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/analytics/az;

.field public static final enum b:Lcom/google/android/gms/analytics/az;

.field public static final enum c:Lcom/google/android/gms/analytics/az;

.field public static final enum d:Lcom/google/android/gms/analytics/az;

.field public static final enum e:Lcom/google/android/gms/analytics/az;

.field public static final enum f:Lcom/google/android/gms/analytics/az;

.field public static final enum g:Lcom/google/android/gms/analytics/az;

.field private static final synthetic h:[Lcom/google/android/gms/analytics/az;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/analytics/az;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/analytics/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/az;->a:Lcom/google/android/gms/analytics/az;

    new-instance v0, Lcom/google/android/gms/analytics/az;

    const-string v1, "CONNECTED_SERVICE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/analytics/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/az;->b:Lcom/google/android/gms/analytics/az;

    new-instance v0, Lcom/google/android/gms/analytics/az;

    const-string v1, "CONNECTED_LOCAL"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/analytics/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/az;->c:Lcom/google/android/gms/analytics/az;

    new-instance v0, Lcom/google/android/gms/analytics/az;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/analytics/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/az;->d:Lcom/google/android/gms/analytics/az;

    new-instance v0, Lcom/google/android/gms/analytics/az;

    const-string v1, "PENDING_CONNECTION"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/analytics/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/az;->e:Lcom/google/android/gms/analytics/az;

    new-instance v0, Lcom/google/android/gms/analytics/az;

    const-string v1, "PENDING_DISCONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/az;->f:Lcom/google/android/gms/analytics/az;

    new-instance v0, Lcom/google/android/gms/analytics/az;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/az;->g:Lcom/google/android/gms/analytics/az;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/gms/analytics/az;

    sget-object v1, Lcom/google/android/gms/analytics/az;->a:Lcom/google/android/gms/analytics/az;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/analytics/az;->b:Lcom/google/android/gms/analytics/az;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/analytics/az;->c:Lcom/google/android/gms/analytics/az;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/analytics/az;->d:Lcom/google/android/gms/analytics/az;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/analytics/az;->e:Lcom/google/android/gms/analytics/az;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/analytics/az;->f:Lcom/google/android/gms/analytics/az;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/analytics/az;->g:Lcom/google/android/gms/analytics/az;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/analytics/az;->h:[Lcom/google/android/gms/analytics/az;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/analytics/az;
    .locals 1

    const-class v0, Lcom/google/android/gms/analytics/az;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/az;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/analytics/az;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/az;->h:[Lcom/google/android/gms/analytics/az;

    invoke-virtual {v0}, [Lcom/google/android/gms/analytics/az;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/analytics/az;

    return-object v0
.end method
