.class Lcom/google/android/gms/games/internal/api/ag;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/ag;->d:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/ag;->a:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/games/internal/api/ag;->b:J

    iput-object p6, p0, Lcom/google/android/gms/games/internal/api/ag;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/ag;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/ag;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/games/internal/api/ag;->b:J

    iget-object v6, p0, Lcom/google/android/gms/games/internal/api/ag;->c:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
