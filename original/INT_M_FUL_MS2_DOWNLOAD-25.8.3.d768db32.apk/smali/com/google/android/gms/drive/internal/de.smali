.class Lcom/google/android/gms/drive/internal/de;
.super Lcom/google/android/gms/drive/internal/by;


# instance fields
.field final synthetic a:Lcom/google/android/gms/drive/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/y;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/de;->a:Lcom/google/android/gms/drive/internal/y;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/by;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/de;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->iG()Lcom/google/android/gms/drive/internal/ae;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/ListParentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/de;->a:Lcom/google/android/gms/drive/internal/y;

    iget-object v2, v2, Lcom/google/android/gms/drive/internal/y;->Oj:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/ListParentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/dh;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/dh;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/ae;->a(Lcom/google/android/gms/drive/internal/ListParentsRequest;Lcom/google/android/gms/drive/internal/af;)V

    return-void
.end method
