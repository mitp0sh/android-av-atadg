.class Lcom/google/android/gms/internal/aar;
.super Lcom/google/android/gms/internal/aau;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/google/android/gms/internal/ol;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aar;->b:Lcom/google/android/gms/internal/ol;

    iput-object p3, p0, Lcom/google/android/gms/internal/aar;->a:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/aau;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/google/android/gms/internal/ok;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/aav;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aav;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aar;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ok;->a(Lcom/google/android/gms/internal/oj;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void
.end method
