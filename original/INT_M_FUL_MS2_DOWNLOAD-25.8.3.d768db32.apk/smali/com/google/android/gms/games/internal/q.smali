.class final Lcom/google/android/gms/games/internal/q;
.super Lcom/google/android/gms/games/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onDisconnectedFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method
