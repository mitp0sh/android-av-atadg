.class Lcom/google/android/gms/games/internal/api/az;
.super Lcom/google/android/gms/games/internal/api/bf;


# instance fields
.field final synthetic a:[I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/google/android/gms/games/internal/api/QuestsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/az;->d:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/az;->a:[I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/az;->b:I

    iput-boolean p5, p0, Lcom/google/android/gms/games/internal/api/az;->c:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/bf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/ax;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/az;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/az;->a:[I

    iget v1, p0, Lcom/google/android/gms/games/internal/api/az;->b:I

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/az;->c:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;[IIZ)V

    return-void
.end method
