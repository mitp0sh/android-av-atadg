.class public final Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

.field b:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

.field c:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

.field d:Ljava/lang/String;

.field e:I

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/os/Bundle;

.field h:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->h:Z

    const-string v0, "Must provide a RoomUpdateListener"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/jx;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->a:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V

    return-void
.end method


# virtual methods
.method public addPlayersToInvite(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/jx;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addPlayersToInvite([Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/jx;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->f:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;)V

    return-object v0
.end method

.method public setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method public setInvitationIdToAccept(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/jx;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->c:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-object p0
.end method

.method public setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->b:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    return-object p0
.end method

.method public setSocketCommunicationEnabled(Z)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->h:Z

    return-object p0
.end method

.method public setVariant(I)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-lez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Variant must be a positive integer or Room.ROOM_VARIANT_ANY"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jx;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->e:I

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
