.class final Lcom/google/android/gms/wearable/internal/bz;
.super Lcom/google/android/gms/wearable/internal/bq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/bq",
        "<",
        "Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/bq;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/wearable/internal/at;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/wearable/internal/ah$b;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/at;->statusCode:I

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/av;->gN(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/wearable/internal/at;->ayd:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/ah$b;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/bz;->a(Ljava/lang/Object;)V

    return-void
.end method
