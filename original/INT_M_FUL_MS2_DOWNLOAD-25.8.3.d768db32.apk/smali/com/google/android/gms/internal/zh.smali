.class Lcom/google/android/gms/internal/zh;
.super Lcom/google/android/gms/internal/lu$c;


# instance fields
.field final synthetic a:Landroid/app/PendingIntent;

.field final synthetic b:Lcom/google/android/gms/internal/mn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mn;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zh;->b:Lcom/google/android/gms/internal/mn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zh;->a:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/lu$c;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/lu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zh;->a(Lcom/google/android/gms/internal/lu;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/lu;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/lu$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lu$b;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    new-instance v1, Lcom/google/android/gms/fitness/request/aa;

    iget-object v2, p0, Lcom/google/android/gms/internal/zh;->a:Landroid/app/PendingIntent;

    invoke-direct {v1, v2}, Lcom/google/android/gms/fitness/request/aa;-><init>(Landroid/app/PendingIntent;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/lu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/lu;->jM()Lcom/google/android/gms/internal/lz;

    move-result-object v3

    invoke-interface {v3, v1, v0, v2}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/fitness/request/aa;Lcom/google/android/gms/internal/md;Ljava/lang/String;)V

    return-void
.end method
