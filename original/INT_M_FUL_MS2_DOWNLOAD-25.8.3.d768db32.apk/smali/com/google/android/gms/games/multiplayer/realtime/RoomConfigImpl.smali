.class public final Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;
.super Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;


# instance fields
.field private final a:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

.field private final b:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

.field private final c:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:[Ljava/lang/String;

.field private final g:Landroid/os/Bundle;

.field private final h:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->a:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->a:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->b:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->b:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->c:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->c:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->d:Ljava/lang/String;

    iget v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->e:I

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->e:I

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->g:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->g:Landroid/os/Bundle;

    iget-boolean v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->h:Z

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->f:Ljava/util/ArrayList;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->f:[Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->c:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->h:Z

    const-string v1, "Must either enable sockets OR specify a message listener"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jx;->a(ZLjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAutoMatchCriteria()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitedPlayerIds()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->c:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-object v0
.end method

.method public getRoomStatusUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->b:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    return-object v0
.end method

.method public getRoomUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->a:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    return-object v0
.end method

.method public getVariant()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->e:I

    return v0
.end method

.method public isSocketEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfigImpl;->h:Z

    return v0
.end method
