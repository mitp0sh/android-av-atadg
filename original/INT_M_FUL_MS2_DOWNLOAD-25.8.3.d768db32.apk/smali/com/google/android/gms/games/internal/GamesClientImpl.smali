.class public final Lcom/google/android/gms/games/internal/GamesClientImpl;
.super Lcom/google/android/gms/internal/jl;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/jl",
        "<",
        "Lcom/google/android/gms/games/internal/IGamesService;",
        ">;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

.field private final b:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/games/PlayerEntity;

.field private h:Lcom/google/android/gms/games/GameEntity;

.field private final i:Lcom/google/android/gms/games/internal/PopupManager;

.field private j:Z

.field private final k:Landroid/os/Binder;

.field private final l:J

.field private final m:Lcom/google/android/gms/games/Games$GamesOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/jl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/games/internal/a;

    invoke-direct {v2, p0}, Lcom/google/android/gms/games/internal/a;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->j:Z

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->b:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/internal/jx;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->e:Ljava/lang/String;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->k:Landroid/os/Binder;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->f:Ljava/util/Map;

    move/from16 v0, p8

    invoke-static {p0, v0}, Lcom/google/android/gms/games/internal/PopupManager;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;I)Lcom/google/android/gms/games/internal/PopupManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    move-object/from16 v0, p9

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->k(Landroid/view/View;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->l:J

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->m:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {p0, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    invoke-virtual {p0, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ll;->ii()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->c(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->g:Lcom/google/android/gms/games/PlayerEntity;

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    new-instance v3, Landroid/net/LocalSocketAddress;

    invoke-direct {v3, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    new-instance v0, Lcom/google/android/gms/games/internal/dx;

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/games/internal/dx;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v2, "Unable to create socket. Service died."

    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/GamesLog;->p(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "GamesClientImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect() call failed on socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/games/internal/GamesLog;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static b(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .locals 3

    new-instance v1, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;

    invoke-direct {v1, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->release()V

    throw v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GamesClientImpl"

    const-string v3, "IOException:"

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/games/internal/GamesLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->bN(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "GamesClientImpl"

    const-string v3, "Created native libjingle socket."

    invoke-static {v0, v3}, Lcom/google/android/gms/games/internal/GamesLog;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;

    invoke-direct {v0, v2}, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GamesClientImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create socket for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/GamesLog;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v2, "Unable to create socket. Service died."

    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/GamesLog;->p(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/d;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;",
            ">;[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cm;-><init>(Lcom/google/android/gms/common/api/d;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a([BLjava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const-string v0, "Participant IDs must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/jx;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->b([BLjava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(IIZ)Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->a(IIZ)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3, p5}, Lcom/google/android/gms/games/internal/IGamesService;->a(I[BILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Must provide a non null icon"

    invoke-static {p4, v1}, Lcom/google/android/gms/internal/jx;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.gms.games.REQUEST_ITEM_ICON"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->freeze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZZI)Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Ljava/lang/String;ZZI)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "show_welcome_popup"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->j:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/jl;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;",
            ">;III)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cs;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cs;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;IIZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;IIZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/s;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;IIZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;ILjava/lang/String;[Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContents$LoadAppContentResult;",
            ">;I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/h;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/h;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;ILjava/lang/String;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;I[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;I[I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/dn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/dn;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;",
            "II)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ak;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ak;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->mH()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;->mI()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/Bundle;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/di;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/di;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getVariant()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->mO()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getInvitedPlayerIds()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;II[Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;",
            ">;",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Snapshot already closed"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/jx;->a(ZLjava/lang/Object;)V

    invoke-virtual {p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->mT()Lcom/google/android/gms/common/data/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/File;)V

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->ir()Lcom/google/android/gms/drive/Contents;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/db;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/db;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v3

    check-cast p3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    invoke-interface {v0, v1, v3, p3, v2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->lV()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/PopupManager;->lU()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/f;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/f;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->lV()Landroid/os/IBinder;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->lU()Landroid/os/Bundle;

    move-result-object v5

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/games/internal/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/f;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;IIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ak;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ak;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;IZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid player collection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "played_with"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x9529ab2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;IZZZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/s;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;I[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;",
            "Ljava/lang/String;",
            "I[I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/dn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/dn;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;JLjava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/games/internal/df;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/df;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/dj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/dj;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ca;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ca;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cs;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cs;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ak;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ak;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid player collection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v1, "circled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "played_with"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "nearby"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8dd581 -> :sswitch_2
        0x9529ab2 -> :sswitch_1
        0x2eaadd94 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            "Lcom/google/android/gms/games/snapshot/SnapshotContents;",
            ")V"
        }
    .end annotation

    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string v2, "SnapshotContents already closed"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jx;->a(ZLjava/lang/Object;)V

    invoke-virtual {p4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->mT()Lcom/google/android/gms/common/data/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/File;)V

    :cond_0
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->ir()Lcom/google/android/gms/drive/Contents;

    move-result-object v6

    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v2, Lcom/google/android/gms/games/internal/dd;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/dd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    move-object v5, v0

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "GamesClientImpl"

    const-string v2, "service died"

    invoke-static {v1, v2}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/al;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/al;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ck;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ck;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;[IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[IIZ)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ck;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ck;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ct;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ct;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/dm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/dm;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "[B[",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/dm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/dm;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;[Ljava/lang/String;I[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/request/Requests$SendRequestResult;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I[BI)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cq;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[Ljava/lang/String;I[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;ZLandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;Z",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/o;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/o;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs a(Lcom/google/android/gms/common/api/BaseImplementation$b;Z[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/r;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/r;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;[IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;[IIZ)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ck;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ck;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/ae;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ae;-><init>(Lcom/google/android/gms/common/api/d;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->l:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
            ">;",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            ">;",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;",
            ">;",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b()V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/games/internal/cv;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/games/internal/cv;-><init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/d;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->k:Landroid/os/Binder;

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getVariant()I

    move-result v4

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getInvitedPlayerIds()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->isSocketEnabled()Z

    move-result v7

    iget-wide v8, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->l:J

    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;I[Ljava/lang/String;Landroid/os/Bundle;ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/d;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cv;-><init>(Lcom/google/android/gms/common/api/d;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Snapshot already closed"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/jx;->a(ZLjava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->ir()Lcom/google/android/gms/drive/Contents;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, v2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/drive/Contents;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/jl$e;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.google.android.gms.games.key.isHeadless"

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->m:Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v1, v1, Lcom/google/android/gms/games/Games$GamesOptions;->Xa:Z

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.games.key.showConnectingPopup"

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->m:Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v1, v1, Lcom/google/android/gms/games/Games$GamesOptions;->Xb:Z

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.games.key.connectingPopupGravity"

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->m:Lcom/google/android/gms/games/Games$GamesOptions;

    iget v1, v1, Lcom/google/android/gms/games/Games$GamesOptions;->Xc:I

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.google.android.gms.games.key.retryingSignIn"

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->m:Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v1, v1, Lcom/google/android/gms/games/Games$GamesOptions;->Xd:Z

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.games.key.sdkVariant"

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->m:Lcom/google/android/gms/games/Games$GamesOptions;

    iget v1, v1, Lcom/google/android/gms/games/Games$GamesOptions;->Xe:I

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.google.android.gms.games.key.forceResolveAccountKey"

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->m:Lcom/google/android/gms/games/Games$GamesOptions;

    iget-object v1, v1, Lcom/google/android/gms/games/Games$GamesOptions;->Xf:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.games.key.proxyApis"

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->m:Lcom/google/android/gms/games/Games$GamesOptions;

    iget-object v1, v1, Lcom/google/android/gms/games/Games$GamesOptions;->Xg:Ljava/util/ArrayList;

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const v2, 0x648278

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hv()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/PopupManager;->lV()Landroid/os/IBinder;

    move-result-object v7

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/jt;->a(Lcom/google/android/gms/internal/js;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected aC(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->aE(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;

    move-result-object v0

    return-object v0
.end method

.method public b(IIZ)Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->b(IIZ)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([I)Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->b([I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/da;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/da;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->lV()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/PopupManager;->lU()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/f;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/f;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->lV()Landroid/os/IBinder;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->lU()Landroid/os/Bundle;

    move-result-object v5

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/games/internal/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/f;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;IIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ak;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ak;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;IZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/s;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ci;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/games/internal/ci;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ak;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ak;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/g;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/al;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/al;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/al;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/al;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Z[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ck;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ck;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p3, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ct;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ct;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/bl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/bl;-><init>(Lcom/google/android/gms/common/api/d;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->l:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
            ">;",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            ">;",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;",
            ">;",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b()V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/games/internal/cv;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/games/internal/cv;-><init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/d;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->k:Landroid/os/Binder;

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getInvitationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->isSocketEnabled()Z

    move-result v5

    iget-wide v6, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->l:J

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;Ljava/lang/String;ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bA(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->bL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bE(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->bE(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bF(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/PopupManager;->lV()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->lU()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bK()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.service.START"

    return-object v0
.end method

.method protected bL()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/BaseImplementation$b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ah;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ah;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/common/api/BaseImplementation$b;IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/di;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/di;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->l(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpStreamResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cc;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;IZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/s;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/di;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/di;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/de;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/de;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/dd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/dd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/common/api/BaseImplementation$b;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/g;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/common/api/BaseImplementation$b;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ct;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ct;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/common/api/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/games/quest/QuestUpdateListener;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/cj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cj;-><init>(Lcom/google/android/gms/common/api/d;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->l:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected varargs c([Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_2

    aget-object v5, p1, v0

    const-string v6, "https://www.googleapis.com/auth/games"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "https://www.googleapis.com/auth/games.firstparty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    move v0, v4

    :goto_2
    const-string v2, "Cannot have both %s and %s!"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "https://www.googleapis.com/auth/games"

    aput-object v5, v3, v1

    const-string v1, "https://www.googleapis.com/auth/games.firstparty"

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/jx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const-string v0, "Games APIs requires %s to function."

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "https://www.googleapis.com/auth/games"

    aput-object v4, v2, v1

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/jx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public connect()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a()V

    invoke-super {p0}, Lcom/google/android/gms/internal/jl;->connect()V

    return-void
.end method

.method public d([BLjava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/games/internal/IGamesService;->b([BLjava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public d(Lcom/google/android/gms/common/api/BaseImplementation$b;IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/di;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/di;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->m(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpStreamResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cc;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;IZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/s;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/di;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/di;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/al;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/al;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/google/android/gms/common/api/BaseImplementation$b;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/r;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/r;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/google/android/gms/common/api/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/games/request/OnRequestReceivedListener;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/cn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cn;-><init>(Lcom/google/android/gms/common/api/d;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->l:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dS(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/PopupManager;->setGravity(I)V

    return-void
.end method

.method public dT(I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->dT(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->j:Z

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lE()V

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->l:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->q(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b()V

    invoke-super {p0}, Lcom/google/android/gms/internal/jl;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "Failed to notify client disconnect."

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/dj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/dj;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->o(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ah;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ah;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;IZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/s;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/w;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/w;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Lcom/google/android/gms/common/api/BaseImplementation$b;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/de;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/de;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/aa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/aa;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/dh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/dh;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->n(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cr;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;IZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cd;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f(Lcom/google/android/gms/common/api/BaseImplementation$b;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ce;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ce;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->g(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fX()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->fX()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadOwnerCoverPhotoUrisResult;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/br;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/br;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->j(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/dk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/dk;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->p(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g(Lcom/google/android/gms/common/api/BaseImplementation$b;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cf;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->h(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/bo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/bo;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->h(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cg;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->u(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h(Lcom/google/android/gms/common/api/BaseImplementation$b;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Notifications$ContactSettingLoadResult;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/n;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/n;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Notifications$InboxCountResult;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ac;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ac;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService;->t(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/dc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/dc;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->r(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/s;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/PopupManager;->l(Landroid/view/View;)V

    return-void
.end method

.method public k(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/u;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/u;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic l(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->aC(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGameSearchSuggestionsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/z;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/z;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->q(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lA()I
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lA()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v2, "service died"

    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public lB()I
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lB()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v2, "service died"

    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public lC()I
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lC()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v2, "service died"

    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public lE()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lE()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lh()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lh()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public li()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->li()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lj()Lcom/google/android/gms/games/Player;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->dS()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->g:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :try_start_1
    new-instance v1, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lG()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Lcom/google/android/gms/games/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->g:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->release()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->g:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    :try_start_6
    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public lk()Lcom/google/android/gms/games/Game;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->dS()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->h:Lcom/google/android/gms/games/GameEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :try_start_1
    new-instance v1, Lcom/google/android/gms/games/GameBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lI()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/GameBuffer;->get(I)Lcom/google/android/gms/games/Game;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/Game;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->h:Lcom/google/android/gms/games/GameEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->release()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->h:Lcom/google/android/gms/games/GameEntity;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->release()V

    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    :try_start_6
    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public ll()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->ll()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lm()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lm()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ln()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->ln()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lo()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lo()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lp()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->l:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->r(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lq()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->l:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->s(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lr()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->l:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->u(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ls()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->l:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->t(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lt()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lt()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lu()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lu()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lv()I
    .locals 3

    const/16 v1, 0x1110

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lv()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v2, "service died"

    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public lw()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lw()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lx()I
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lx()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v2, "service died"

    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public ly()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->ly()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lz()I
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->lz()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v2, "service died"

    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public m(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpForGameCategoriesResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/cb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/cb;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->s(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public n(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->u(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/ah;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/ah;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->k(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public o(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/bp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/bp;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->j(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public o(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->a:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->o(Ljava/lang/String;I)V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->i:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/PopupManager;->lT()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->j:Z

    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->j:Z

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public p(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/Notifications$GameMuteStatusLoadResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/y;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/y;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->i(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public p(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->p(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public q(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->q(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/games/multiplayer/ParticipantUtils;->bY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad participant ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;

    move-result-object v0

    :cond_3
    return-object v0
.end method
