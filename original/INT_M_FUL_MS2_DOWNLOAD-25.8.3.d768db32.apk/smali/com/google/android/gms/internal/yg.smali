.class Lcom/google/android/gms/internal/yg;
.super Lcom/google/android/gms/internal/lu$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/lu$a",
        "<",
        "Lcom/google/android/gms/fitness/result/BleDevicesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/mh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mh;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yg;->a:Lcom/google/android/gms/internal/mh;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/lu$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/BleDevicesResult;->C(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/lu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/yg;->a(Lcom/google/android/gms/internal/lu;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/lu;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/yh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/yh;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/yb;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/lu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/lu;->jM()Lcom/google/android/gms/internal/lz;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mp;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/yg;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object v0

    return-object v0
.end method
