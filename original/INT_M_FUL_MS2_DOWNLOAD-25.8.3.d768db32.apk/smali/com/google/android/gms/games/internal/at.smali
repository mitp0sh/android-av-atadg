.class final Lcom/google/android/gms/games/internal/at;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;


# instance fields
.field private final a:Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/at;->a:Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;

    return-void
.end method
