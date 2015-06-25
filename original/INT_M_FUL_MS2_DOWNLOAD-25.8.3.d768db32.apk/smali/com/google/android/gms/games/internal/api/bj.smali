.class Lcom/google/android/gms/games/internal/api/bj;
.super Lcom/google/android/gms/games/internal/api/bk;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/gms/games/internal/api/RequestsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;III)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/bj;->d:Lcom/google/android/gms/games/internal/api/RequestsImpl;

    iput p3, p0, Lcom/google/android/gms/games/internal/api/bj;->a:I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/bj;->b:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/bj;->c:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/bk;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/bh;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/bj;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/games/internal/api/bj;->a:I

    iget v1, p0, Lcom/google/android/gms/games/internal/api/bj;->b:I

    iget v2, p0, Lcom/google/android/gms/games/internal/api/bj;->c:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;III)V

    return-void
.end method
