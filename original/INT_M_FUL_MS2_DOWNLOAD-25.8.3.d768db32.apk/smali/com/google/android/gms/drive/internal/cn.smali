.class Lcom/google/android/gms/drive/internal/cn;
.super Lcom/google/android/gms/drive/internal/bt;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field final synthetic c:Lcom/google/android/gms/drive/internal/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/t;Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/cn;->c:Lcom/google/android/gms/drive/internal/t;

    iput p3, p0, Lcom/google/android/gms/drive/internal/cn;->a:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/cn;->b:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/bt;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/cn;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->iG()Lcom/google/android/gms/drive/internal/ae;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/OpenContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/cn;->c:Lcom/google/android/gms/drive/internal/t;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/t;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/drive/internal/cn;->a:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/OpenContentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v2, Lcom/google/android/gms/drive/internal/bn;

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/cn;->b:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/drive/internal/bn;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/ae;->a(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Lcom/google/android/gms/drive/internal/af;)V

    return-void
.end method
