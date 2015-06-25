.class Lcom/google/android/gms/games/internal/api/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/games/internal/api/cl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/cl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/cm;->b:Lcom/google/android/gms/games/internal/api/cl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/cm;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatchId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/cm;->b:Lcom/google/android/gms/games/internal/api/cl;

    invoke-static {v0}, Lcom/google/android/gms/games/internal/api/cl;->a(Lcom/google/android/gms/games/internal/api/cl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/cm;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
