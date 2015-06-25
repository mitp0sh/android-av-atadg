.class Lcom/google/android/gms/drive/internal/ci;
.super Lcom/google/android/gms/drive/internal/cd;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/android/gms/drive/internal/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/r;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/ci;->b:Lcom/google/android/gms/drive/internal/r;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/ci;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/cd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/ci;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->iG()Lcom/google/android/gms/drive/internal/ae;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CancelPendingActionsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/ci;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/CancelPendingActionsRequest;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/bg;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/bg;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/ae;->a(Lcom/google/android/gms/drive/internal/CancelPendingActionsRequest;Lcom/google/android/gms/drive/internal/af;)V

    return-void
.end method
