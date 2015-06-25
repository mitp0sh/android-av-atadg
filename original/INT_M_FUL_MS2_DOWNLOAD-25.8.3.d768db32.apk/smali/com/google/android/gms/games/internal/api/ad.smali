.class Lcom/google/android/gms/games/internal/api/ad;
.super Lcom/google/android/gms/games/internal/api/al;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/ad;->f:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/ad;->a:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/ad;->b:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/ad;->c:I

    iput p6, p0, Lcom/google/android/gms/games/internal/api/ad;->d:I

    iput-boolean p7, p0, Lcom/google/android/gms/games/internal/api/ad;->e:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/al;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/aa;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/ad;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/ad;->a:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/games/internal/api/ad;->b:I

    iget v4, p0, Lcom/google/android/gms/games/internal/api/ad;->c:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/ad;->d:I

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/ad;->e:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;IIIZ)V

    return-void
.end method
