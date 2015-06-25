.class Lcom/google/android/gms/games/internal/api/bs;
.super Lcom/google/android/gms/games/internal/api/bz;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

.field final synthetic d:Lcom/google/android/gms/games/snapshot/SnapshotContents;

.field final synthetic e:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/bs;->e:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/bs;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/bs;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/internal/api/bs;->c:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iput-object p6, p0, Lcom/google/android/gms/games/internal/api/bs;->d:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/bz;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/bo;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/bs;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/bs;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/bs;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/games/internal/api/bs;->c:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/bs;->d:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    return-void
.end method
