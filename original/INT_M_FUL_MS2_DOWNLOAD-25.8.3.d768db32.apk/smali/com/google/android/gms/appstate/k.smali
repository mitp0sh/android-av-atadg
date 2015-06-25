.class final Lcom/google/android/gms/appstate/k;
.super Lcom/google/android/gms/appstate/q;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;[B)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/appstate/k;->a:I

    iput-object p3, p0, Lcom/google/android/gms/appstate/k;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/appstate/k;->c:[B

    invoke-direct {p0, p1}, Lcom/google/android/gms/appstate/q;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ib;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/k;->a(Lcom/google/android/gms/internal/ib;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ib;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/appstate/k;->a:I

    iget-object v1, p0, Lcom/google/android/gms/appstate/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/appstate/k;->c:[B

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/ib;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;ILjava/lang/String;[B)V

    return-void
.end method
