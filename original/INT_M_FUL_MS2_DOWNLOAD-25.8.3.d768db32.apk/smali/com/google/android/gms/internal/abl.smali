.class Lcom/google/android/gms/internal/abl;
.super Lcom/google/android/gms/internal/abq;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/pc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pc;Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/abl;->c:Lcom/google/android/gms/internal/pc;

    iput p3, p0, Lcom/google/android/gms/internal/abl;->a:I

    iput-object p4, p0, Lcom/google/android/gms/internal/abl;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/abq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/abl;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/abl;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/abl;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/abl;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;ILjava/lang/String;)Lcom/google/android/gms/internal/jr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/abl;->a(Lcom/google/android/gms/internal/jr;)V

    return-void
.end method
