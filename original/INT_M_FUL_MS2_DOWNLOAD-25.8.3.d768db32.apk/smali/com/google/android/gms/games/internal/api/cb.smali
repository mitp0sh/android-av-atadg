.class Lcom/google/android/gms/games/internal/api/cb;
.super Lcom/google/android/gms/games/internal/api/cn;


# instance fields
.field final synthetic a:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;

.field final synthetic b:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/cb;->b:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/cb;->a:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/cn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/cb;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/cb;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/cb;->a:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V

    return-void
.end method
