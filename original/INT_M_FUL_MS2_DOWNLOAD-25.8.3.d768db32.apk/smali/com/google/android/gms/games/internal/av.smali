.class final Lcom/google/android/gms/games/internal/av;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;


# instance fields
.field private final a:Lcom/google/android/gms/games/GameBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/GameBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/av;->a:Lcom/google/android/gms/games/GameBuffer;

    return-void
.end method


# virtual methods
.method public getGames()Lcom/google/android/gms/games/GameBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/av;->a:Lcom/google/android/gms/games/GameBuffer;

    return-object v0
.end method
