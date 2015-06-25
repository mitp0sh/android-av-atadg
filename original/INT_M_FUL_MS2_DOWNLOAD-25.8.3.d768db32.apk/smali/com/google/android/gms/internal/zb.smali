.class Lcom/google/android/gms/internal/zb;
.super Lcom/google/android/gms/internal/md$a;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/yz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/yz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/yz;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/md$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zb;->a:Lcom/google/android/gms/common/api/BaseImplementation$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/zb;->b:Lcom/google/android/gms/internal/yz;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/yz;Lcom/google/android/gms/internal/yu;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zb;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/yz;)V

    return-void
.end method


# virtual methods
.method public j(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zb;->b:Lcom/google/android/gms/internal/yz;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zb;->b:Lcom/google/android/gms/internal/yz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/yz;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zb;->a:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->b(Ljava/lang/Object;)V

    return-void
.end method
