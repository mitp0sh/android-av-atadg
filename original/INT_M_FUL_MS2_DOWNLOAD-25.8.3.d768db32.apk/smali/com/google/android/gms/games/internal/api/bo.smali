.class Lcom/google/android/gms/games/internal/api/bo;
.super Lcom/google/android/gms/games/internal/api/bx;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/bo;->b:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/bo;->a:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/bx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/bo;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/bo;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/bo;->a:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->e(Lcom/google/android/gms/common/api/BaseImplementation$b;Z)V

    return-void
.end method
