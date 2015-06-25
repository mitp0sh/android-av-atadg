.class Lcom/google/android/gms/drive/internal/cp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/d$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/d$b",
        "<",
        "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/drive/internal/co;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/co;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/cp;->c:Lcom/google/android/gms/drive/internal/co;

    iput-wide p2, p0, Lcom/google/android/gms/drive/internal/cp;->a:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/internal/cp;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/cp;->a:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/cp;->b:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;->onProgress(JJ)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/cp;->a(Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    return-void
.end method

.method public gG()V
    .locals 0

    return-void
.end method
