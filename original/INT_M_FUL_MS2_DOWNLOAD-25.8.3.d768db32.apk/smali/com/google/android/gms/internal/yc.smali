.class Lcom/google/android/gms/internal/yc;
.super Lcom/google/android/gms/internal/lu$c;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/BleScanCallback;

.field final synthetic b:Lcom/google/android/gms/internal/mh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/BleScanCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yc;->b:Lcom/google/android/gms/internal/mh;

    iput-object p3, p0, Lcom/google/android/gms/internal/yc;->a:Lcom/google/android/gms/fitness/request/BleScanCallback;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/lu$c;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/lu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/yc;->a(Lcom/google/android/gms/internal/lu;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/lu;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/lu$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lu$b;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/lu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/fitness/request/ad;

    iget-object v3, p0, Lcom/google/android/gms/internal/yc;->a:Lcom/google/android/gms/fitness/request/BleScanCallback;

    invoke-direct {v2, v3}, Lcom/google/android/gms/fitness/request/ad;-><init>(Lcom/google/android/gms/fitness/request/BleScanCallback;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/lu;->jM()Lcom/google/android/gms/internal/lz;

    move-result-object v3

    invoke-interface {v3, v2, v0, v1}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/fitness/request/ad;Lcom/google/android/gms/internal/md;Ljava/lang/String;)V

    return-void
.end method
