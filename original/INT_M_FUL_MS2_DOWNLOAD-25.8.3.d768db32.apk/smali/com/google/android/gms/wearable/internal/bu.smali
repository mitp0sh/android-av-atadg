.class final Lcom/google/android/gms/wearable/internal/bu;
.super Lcom/google/android/gms/wearable/internal/bq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/bq",
        "<",
        "Lcom/google/android/gms/wearable/DataItemBuffer;",
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
            "Lcom/google/android/gms/wearable/DataItemBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/bq;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method


# virtual methods
.method public ab(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/DataItemBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/wearable/DataItemBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/bu;->a(Ljava/lang/Object;)V

    return-void
.end method
