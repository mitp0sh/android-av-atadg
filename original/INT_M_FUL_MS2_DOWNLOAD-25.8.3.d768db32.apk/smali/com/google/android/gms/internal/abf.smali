.class Lcom/google/android/gms/internal/abf;
.super Lcom/google/android/gms/internal/abk;


# instance fields
.field final synthetic a:Lcom/google/android/gms/plus/model/moments/Moment;

.field final synthetic b:Lcom/google/android/gms/internal/pb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pb;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/plus/model/moments/Moment;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/abf;->b:Lcom/google/android/gms/internal/pb;

    iput-object p3, p0, Lcom/google/android/gms/internal/abf;->a:Lcom/google/android/gms/plus/model/moments/Moment;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/abk;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/abd;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/abf;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/abf;->a:Lcom/google/android/gms/plus/model/moments/Moment;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/plus/model/moments/Moment;)V

    return-void
.end method
