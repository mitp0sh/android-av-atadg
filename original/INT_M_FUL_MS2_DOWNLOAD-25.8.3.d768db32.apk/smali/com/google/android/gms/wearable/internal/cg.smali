.class Lcom/google/android/gms/wearable/internal/cg;
.super Lcom/google/android/gms/wearable/internal/cb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/cb",
        "<",
        "Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/google/android/gms/wearable/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/f;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/cg;->b:Lcom/google/android/gms/wearable/internal/f;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/cg;->a:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/cb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/f$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/f$c;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/internal/ba;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/cg;->a(Lcom/google/android/gms/wearable/internal/ba;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/wearable/internal/ba;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/cg;->a:Landroid/net/Uri;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/ba;->c(Lcom/google/android/gms/common/api/BaseImplementation$b;Landroid/net/Uri;)V

    return-void
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/cg;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;

    move-result-object v0

    return-object v0
.end method
