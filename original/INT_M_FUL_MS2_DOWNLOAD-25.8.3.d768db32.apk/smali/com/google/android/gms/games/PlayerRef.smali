.class public final Lcom/google/android/gms/games/PlayerRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/Player;


# instance fields
.field private final a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

.field private final b:Lcom/google/android/gms/games/PlayerLevelInfo;

.field private final c:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    invoke-direct {v0, p3}, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    new-instance v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/PlayerColumnNames;)V

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->c:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

    invoke-direct {p0}, Lcom/google/android/gms/games/PlayerRef;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acV:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v8

    new-instance v0, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v2, v2, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acW:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v4, v4, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acX:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    if-eq v1, v8, :cond_1

    new-instance v2, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acX:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acZ:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    move-object v7, v2

    :goto_0
    new-instance v1, Lcom/google/android/gms/games/PlayerLevelInfo;

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v2, v2, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acU:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v4, v4, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->ada:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/games/PlayerLevelInfo;-><init>(JJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->b:Lcom/google/android/gms/games/PlayerLevelInfo;

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->b:Lcom/google/android/gms/games/PlayerLevelInfo;

    goto :goto_1

    :cond_1
    move-object v7, v0

    goto :goto_0
.end method

.method private a()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acU:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->aS(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acU:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Player;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->freeze()Lcom/google/android/gms/games/Player;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acM:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/PlayerRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->aR(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acQ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->aR(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acO:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastPlayedWithTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->aS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->b:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetrievedTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->adb:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->adb:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/PlayerRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public hasHiResImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIconImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public isProfileVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->add:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public kE()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->acS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public kF()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->a:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->ade:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->aS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->c:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->b(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->freeze()Lcom/google/android/gms/games/Player;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
