.class Lcom/google/android/gms/cast/e;
.super Lcom/google/android/gms/cast/n;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/cast/Cast$CastApi$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/e;->c:Lcom/google/android/gms/cast/Cast$CastApi$a;

    iput-object p3, p0, Lcom/google/android/gms/cast/e;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/e;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/n;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/im;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/e;->a(Lcom/google/android/gms/internal/im;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/im;)V
    .locals 3

    const/16 v2, 0x7d1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/im;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/e;->W(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/e;->W(I)V

    goto :goto_0
.end method
