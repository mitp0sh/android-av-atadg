.class Lcom/google/android/gms/internal/zv;
.super Lcom/google/android/gms/internal/zz;


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic b:Landroid/app/PendingIntent;

.field final synthetic c:Lcom/google/android/gms/internal/nf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zv;->c:Lcom/google/android/gms/internal/nf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zv;->a:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/zv;->b:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zz;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/nk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zv;->a(Lcom/google/android/gms/internal/nk;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/nk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zv;->a:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lcom/google/android/gms/internal/zv;->b:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/nk;->b(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Kw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zv;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
