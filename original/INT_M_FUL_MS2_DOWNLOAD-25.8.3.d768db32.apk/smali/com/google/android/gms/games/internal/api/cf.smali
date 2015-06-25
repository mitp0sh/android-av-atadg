.class Lcom/google/android/gms/games/internal/api/cf;
.super Lcom/google/android/gms/games/internal/api/cv;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

.field final synthetic e:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/cf;->e:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/cf;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/cf;->b:[B

    iput-object p5, p0, Lcom/google/android/gms/games/internal/api/cf;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/internal/api/cf;->d:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/cv;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/cb;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/cf;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/cf;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/cf;->b:[B

    iget-object v4, p0, Lcom/google/android/gms/games/internal/api/cf;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/cf;->d:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method
