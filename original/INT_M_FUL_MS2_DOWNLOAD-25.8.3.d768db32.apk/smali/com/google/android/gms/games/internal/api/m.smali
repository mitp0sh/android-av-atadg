.class Lcom/google/android/gms/games/internal/api/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/games/internal/api/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/l;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/m;->b:Lcom/google/android/gms/games/internal/api/l;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/m;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAchievementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/m;->b:Lcom/google/android/gms/games/internal/api/l;

    invoke-static {v0}, Lcom/google/android/gms/games/internal/api/l;->a(Lcom/google/android/gms/games/internal/api/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/m;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
