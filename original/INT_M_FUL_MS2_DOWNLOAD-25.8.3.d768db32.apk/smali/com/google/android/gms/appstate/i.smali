.class final Lcom/google/android/gms/appstate/i;
.super Lcom/google/android/gms/appstate/q;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/appstate/i;->a:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/appstate/q;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ib;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/i;->a(Lcom/google/android/gms/internal/ib;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ib;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/appstate/i;->a:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ib;->b(Lcom/google/android/gms/common/api/BaseImplementation$b;I)V

    return-void
.end method
