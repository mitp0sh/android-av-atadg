.class Lcom/google/android/gms/drive/internal/br;
.super Lcom/google/android/gms/drive/internal/cd;


# instance fields
.field final synthetic a:Lcom/google/android/gms/drive/internal/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/p;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/br;->a:Lcom/google/android/gms/drive/internal/p;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/cd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/br;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->iG()Lcom/google/android/gms/drive/internal/ae;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/bg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/drive/internal/bg;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/ae;->a(Lcom/google/android/gms/drive/internal/af;)V

    return-void
.end method
