.class Lcom/google/android/gms/wearable/internal/bm;
.super Lcom/google/android/gms/wearable/internal/cb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/cb",
        "<",
        "Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/internal/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/ak;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/bm;->a:Lcom/google/android/gms/wearable/internal/ak;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/cb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/ak$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/ak$b;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/internal/ba;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bm;->a(Lcom/google/android/gms/wearable/internal/ba;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/wearable/internal/ba;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/wearable/internal/ba;->p(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bm;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;

    move-result-object v0

    return-object v0
.end method
