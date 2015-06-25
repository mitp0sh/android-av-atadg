.class Lcom/google/android/gms/internal/aba;
.super Lcom/google/android/gms/internal/abb;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/oy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/oy;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/aba;->a:Lcom/google/android/gms/internal/oy;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/abb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/aba;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aba;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/plus/internal/e;->l(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method
