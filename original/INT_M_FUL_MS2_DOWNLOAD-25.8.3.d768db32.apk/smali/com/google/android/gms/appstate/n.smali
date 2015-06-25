.class abstract Lcom/google/android/gms/appstate/n;
.super Lcom/google/android/gms/appstate/AppStateManager$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/appstate/AppStateManager$a",
        "<",
        "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateListResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/appstate/o;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/appstate/o;-><init>(Lcom/google/android/gms/appstate/n;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/n;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateListResult;

    move-result-object v0

    return-object v0
.end method
