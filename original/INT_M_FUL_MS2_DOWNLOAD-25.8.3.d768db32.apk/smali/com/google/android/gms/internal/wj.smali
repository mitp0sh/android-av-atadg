.class Lcom/google/android/gms/internal/wj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/im;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/im;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wj;->a:Lcom/google/android/gms/internal/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/im;Lcom/google/android/gms/internal/wh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wj;-><init>(Lcom/google/android/gms/internal/im;)V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wj;->a:Lcom/google/android/gms/internal/im;

    invoke-static {v0}, Lcom/google/android/gms/internal/im;->a(Lcom/google/android/gms/internal/im;)V

    return-void
.end method
