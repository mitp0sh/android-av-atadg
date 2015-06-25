.class Lcom/google/android/gms/internal/vr;
.super Lcom/google/android/gms/internal/vu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vu",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Lcom/google/android/gms/internal/hr;

.field final synthetic c:Lcom/google/android/gms/internal/hz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[Lcom/google/android/gms/internal/hr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/vr;->c:Lcom/google/android/gms/internal/hz;

    iput-object p3, p0, Lcom/google/android/gms/internal/vr;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/vr;->b:[Lcom/google/android/gms/internal/hr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hu;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/vv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vv;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/vr;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/vr;->b:[Lcom/google/android/gms/internal/hr;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/internal/hv;Ljava/lang/String;[Lcom/google/android/gms/internal/hr;)V

    return-void
.end method
