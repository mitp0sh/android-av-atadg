.class Lcom/google/android/gms/cast/f;
.super Lcom/google/android/gms/cast/o;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/cast/Cast$CastApi$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/f;->b:Lcom/google/android/gms/cast/Cast$CastApi$a;

    iput-object p3, p0, Lcom/google/android/gms/cast/f;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/o;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/im;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/f;->a(Lcom/google/android/gms/internal/im;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/im;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/f;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/im;->a(Ljava/lang/String;ZLcom/google/android/gms/common/api/BaseImplementation$b;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/f;->W(I)V

    goto :goto_0
.end method
