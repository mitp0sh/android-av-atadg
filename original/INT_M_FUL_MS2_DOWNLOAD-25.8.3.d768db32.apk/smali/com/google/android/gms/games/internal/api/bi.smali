.class Lcom/google/android/gms/games/internal/api/bi;
.super Lcom/google/android/gms/games/internal/api/bm;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/games/internal/api/RequestsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/bi;->b:Lcom/google/android/gms/games/internal/api/RequestsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/bi;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/bm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/bh;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/bi;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/bi;->a:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->c(Lcom/google/android/gms/common/api/BaseImplementation$b;[Ljava/lang/String;)V

    return-void
.end method
