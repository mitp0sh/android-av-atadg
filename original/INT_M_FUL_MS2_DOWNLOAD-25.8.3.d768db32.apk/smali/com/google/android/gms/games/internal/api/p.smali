.class Lcom/google/android/gms/games/internal/api/p;
.super Lcom/google/android/gms/games/internal/api/s;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/games/internal/api/EventsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/EventsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/p;->c:Lcom/google/android/gms/games/internal/api/EventsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/p;->a:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/p;->b:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/s;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/n;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/p;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/p;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/p;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->o(Ljava/lang/String;I)V

    return-void
.end method
