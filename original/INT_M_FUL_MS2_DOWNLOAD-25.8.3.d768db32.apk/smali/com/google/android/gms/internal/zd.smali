.class Lcom/google/android/gms/internal/zd;
.super Lcom/google/android/gms/internal/lu$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/lu$a",
        "<",
        "Lcom/google/android/gms/fitness/result/SessionStopResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/mn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mn;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zd;->c:Lcom/google/android/gms/internal/mn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zd;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/lu$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/SessionStopResult;->H(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/lu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zd;->a(Lcom/google/android/gms/internal/lu;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/lu;)V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zj;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/zc;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/lu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/lu;->jM()Lcom/google/android/gms/internal/lz;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/fitness/request/y$a;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/request/y$a;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zd;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/request/y$a;->bx(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/y$a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/request/y$a;->by(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/y$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/request/y$a;->kl()Lcom/google/android/gms/fitness/request/y;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/fitness/request/y;Lcom/google/android/gms/internal/mc;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zd;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;

    move-result-object v0

    return-object v0
.end method
