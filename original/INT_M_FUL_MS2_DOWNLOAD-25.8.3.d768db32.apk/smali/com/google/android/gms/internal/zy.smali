.class Lcom/google/android/gms/internal/zy;
.super Lcom/google/android/gms/internal/zz;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/internal/nf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zy;->b:Lcom/google/android/gms/internal/nf;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zy;->a:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zz;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/nk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zy;->a(Lcom/google/android/gms/internal/nk;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/nk;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zy;->a:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/nk;->S(Z)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Kw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zy;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
