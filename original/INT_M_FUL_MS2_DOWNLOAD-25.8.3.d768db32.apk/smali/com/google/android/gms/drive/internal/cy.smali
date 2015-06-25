.class Lcom/google/android/gms/drive/internal/cy;
.super Lcom/google/android/gms/drive/internal/dc;


# instance fields
.field final synthetic a:Lcom/google/android/gms/drive/internal/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/x;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/cy;->a:Lcom/google/android/gms/drive/internal/x;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/internal/dc;-><init>(Lcom/google/android/gms/drive/internal/x;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/cy;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->iG()Lcom/google/android/gms/drive/internal/ae;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/da;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/cy;->a:Lcom/google/android/gms/drive/internal/x;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/google/android/gms/drive/internal/da;-><init>(Lcom/google/android/gms/drive/internal/x;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/drive/internal/cy;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/ae;->h(Lcom/google/android/gms/drive/internal/af;)V

    return-void
.end method
