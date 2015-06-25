.class Lcom/google/android/gms/drive/internal/bq;
.super Lcom/google/android/gms/drive/internal/bw;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/drive/internal/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/p;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/bq;->b:Lcom/google/android/gms/drive/internal/p;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/bq;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/bw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/bq;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->iG()Lcom/google/android/gms/drive/internal/ae;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/GetMetadataRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/bq;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/drive/DriveId;->bi(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/GetMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/bu;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/bu;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/ae;->a(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/af;)V

    return-void
.end method
