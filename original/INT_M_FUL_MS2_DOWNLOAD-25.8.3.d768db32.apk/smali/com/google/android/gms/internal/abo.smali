.class Lcom/google/android/gms/internal/abo;
.super Lcom/google/android/gms/internal/abq;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/google/android/gms/internal/pc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/abo;->b:Lcom/google/android/gms/internal/pc;

    iput-object p3, p0, Lcom/google/android/gms/internal/abo;->a:Ljava/util/Collection;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/abq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/abl;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/abo;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/abo;->a:Ljava/util/Collection;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/util/Collection;)V

    return-void
.end method
