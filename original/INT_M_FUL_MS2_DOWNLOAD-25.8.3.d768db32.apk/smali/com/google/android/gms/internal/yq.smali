.class Lcom/google/android/gms/internal/yq;
.super Lcom/google/android/gms/internal/lu$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/lu$a",
        "<",
        "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/m;

.field final synthetic b:Lcom/google/android/gms/internal/ml;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ml;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yq;->b:Lcom/google/android/gms/internal/ml;

    iput-object p3, p0, Lcom/google/android/gms/internal/yq;->a:Lcom/google/android/gms/fitness/request/m;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/lu$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->F(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/lu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/yq;->a(Lcom/google/android/gms/internal/lu;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/lu;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/yt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/yt;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/yq;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/lu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/lu;->jM()Lcom/google/android/gms/internal/lz;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/yq;->a:Lcom/google/android/gms/fitness/request/m;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/fitness/request/m;Lcom/google/android/gms/internal/ma;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/yq;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    move-result-object v0

    return-object v0
.end method
