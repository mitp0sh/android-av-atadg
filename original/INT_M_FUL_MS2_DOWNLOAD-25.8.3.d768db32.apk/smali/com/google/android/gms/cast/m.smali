.class Lcom/google/android/gms/cast/m;
.super Lcom/google/android/gms/cast/n;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/cast/Cast$CastApi$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/m;->b:Lcom/google/android/gms/cast/Cast$CastApi$a;

    iput-object p3, p0, Lcom/google/android/gms/cast/m;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/n;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/im;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/m;->a(Lcom/google/android/gms/internal/im;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/im;)V
    .locals 2

    const/16 v1, 0x7d1

    iget-object v0, p0, Lcom/google/android/gms/cast/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IllegalArgument: sessionId cannot be null or empty"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/cast/m;->e(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/m;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/im;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/m;->W(I)V

    goto :goto_0
.end method
