.class Lcom/google/android/gms/internal/zo;
.super Lcom/google/android/gms/internal/zq;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/app/PendingIntent;

.field final synthetic c:Lcom/google/android/gms/internal/nb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nb;Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zo;->c:Lcom/google/android/gms/internal/nb;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zo;->a:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zo;->b:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/nk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zo;->a(Lcom/google/android/gms/internal/nk;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/nk;)V
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zo;->a:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zo;->b:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/nk;->a(JLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Kw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zo;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
