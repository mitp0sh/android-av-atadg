.class abstract Lcom/google/android/gms/games/internal/api/bz;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/bo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/api/bz;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/ca;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/ca;-><init>(Lcom/google/android/gms/games/internal/api/bz;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/bz;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    move-result-object v0

    return-object v0
.end method
