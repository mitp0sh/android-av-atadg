.class Lcom/google/android/gms/internal/abg;
.super Lcom/google/android/gms/internal/abj;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/pb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pb;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/abg;->b:Lcom/google/android/gms/internal/pb;

    iput-object p3, p0, Lcom/google/android/gms/internal/abg;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/abj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/abd;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/abg;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/abg;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/e;->removeMoment(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Kw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/abg;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
