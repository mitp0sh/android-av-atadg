.class abstract Lcom/google/android/gms/internal/aaw;
.super Lcom/google/android/gms/common/api/BaseImplementation$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/BaseImplementation$a",
        "<TR;",
        "Lcom/google/android/gms/internal/om;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/panorama/Panorama;->DQ:Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/BaseImplementation$a;-><init>(Lcom/google/android/gms/common/api/Api$c;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/google/android/gms/internal/ok;)V
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/om;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aaw;->a(Lcom/google/android/gms/internal/om;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/om;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/om;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/om;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ok;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/aaw;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ok;)V

    return-void
.end method
