.class Lcom/google/android/gms/drive/internal/bp;
.super Lcom/google/android/gms/drive/internal/bt;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/drive/internal/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/p;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/bp;->b:Lcom/google/android/gms/drive/internal/p;

    iput p3, p0, Lcom/google/android/gms/drive/internal/bp;->a:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/bt;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/bp;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->iG()Lcom/google/android/gms/drive/internal/ae;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    iget v2, p0, Lcom/google/android/gms/drive/internal/bp;->a:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/CreateContentsRequest;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/drive/internal/bz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/bz;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/ae;->a(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Lcom/google/android/gms/drive/internal/af;)V

    return-void
.end method
