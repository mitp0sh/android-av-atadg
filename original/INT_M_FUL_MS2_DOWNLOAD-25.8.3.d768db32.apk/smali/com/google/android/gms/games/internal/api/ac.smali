.class Lcom/google/android/gms/games/internal/api/ac;
.super Lcom/google/android/gms/games/internal/api/aj;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/ac;->d:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/ac;->a:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/ac;->b:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/ac;->c:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/aj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/aa;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/ac;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/ac;->a:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/ac;->b:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/ac;->c:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
