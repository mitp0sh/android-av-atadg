.class Lcom/google/android/gms/games/internal/api/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/games/internal/api/bz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/bz;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/ca;->b:Lcom/google/android/gms/games/internal/api/bz;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/ca;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConflictId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolutionSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/ca;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
