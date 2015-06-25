.class Lcom/google/android/gms/drive/internal/bo;
.super Lcom/google/android/gms/drive/internal/by;


# instance fields
.field final synthetic a:Lcom/google/android/gms/drive/query/Query;

.field final synthetic b:Lcom/google/android/gms/drive/internal/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/p;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/bo;->b:Lcom/google/android/gms/drive/internal/p;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/bo;->a:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/by;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/bo;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->iG()Lcom/google/android/gms/drive/internal/ae;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/QueryRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/bo;->a:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/QueryRequest;-><init>(Lcom/google/android/gms/drive/query/Query;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/ca;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/ca;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/ae;->a(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/af;)V

    return-void
.end method
