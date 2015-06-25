.class Lcom/google/android/gms/internal/yv;
.super Lcom/google/android/gms/internal/yy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/yy",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/o;

.field final synthetic b:Lcom/google/android/gms/internal/mm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mm;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yv;->b:Lcom/google/android/gms/internal/mm;

    iput-object p3, p0, Lcom/google/android/gms/internal/yv;->a:Lcom/google/android/gms/fitness/request/o;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/yy;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/lu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/yv;->a(Lcom/google/android/gms/internal/lu;)V

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

    invoke-interface {p1}, Lcom/google/android/gms/internal/lu;->jM()Lcom/google/android/gms/internal/lz;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/yv;->a:Lcom/google/android/gms/fitness/request/o;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/fitness/request/o;Lcom/google/android/gms/internal/md;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/yv;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
