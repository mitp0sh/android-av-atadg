.class Lcom/google/android/gms/internal/aac;
.super Lcom/google/android/gms/internal/aag;


# instance fields
.field final synthetic a:Landroid/app/PendingIntent;

.field final synthetic b:Lcom/google/android/gms/internal/ng;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aac;->b:Lcom/google/android/gms/internal/ng;

    iput-object p3, p0, Lcom/google/android/gms/internal/aac;->a:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/aag;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/nk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aac;->a(Lcom/google/android/gms/internal/nk;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/nk;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/aad;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aad;-><init>(Lcom/google/android/gms/internal/aac;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aac;->a:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/nk;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/location/c$b;)V

    return-void
.end method
