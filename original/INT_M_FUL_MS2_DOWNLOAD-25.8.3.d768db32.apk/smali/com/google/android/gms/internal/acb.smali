.class Lcom/google/android/gms/internal/acb;
.super Lcom/google/android/gms/wallet/Wallet$b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/gms/internal/qg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qg;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/acb;->d:Lcom/google/android/gms/internal/qg;

    iput-object p3, p0, Lcom/google/android/gms/internal/acb;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/acb;->b:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/acb;->c:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$b;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/qh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/acb;->a(Lcom/google/android/gms/internal/qh;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/qh;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/acb;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/acb;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/acb;->c:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/qh;->d(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Kw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/acb;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
