.class Lcom/google/android/gms/internal/zj;
.super Lcom/google/android/gms/internal/mc$a;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/fitness/result/SessionStopResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/fitness/result/SessionStopResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/mc$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zj;->a:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/zc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zj;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/fitness/result/SessionStopResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zj;->a:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->b(Ljava/lang/Object;)V

    return-void
.end method
