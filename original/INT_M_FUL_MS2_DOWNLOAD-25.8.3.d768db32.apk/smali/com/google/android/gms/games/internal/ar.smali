.class final Lcom/google/android/gms/games/internal/ar;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/event/Events$LoadEventsResult;


# instance fields
.field private final a:Lcom/google/android/gms/games/event/EventBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/event/EventBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/event/EventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/ar;->a:Lcom/google/android/gms/games/event/EventBuffer;

    return-void
.end method


# virtual methods
.method public getEvents()Lcom/google/android/gms/games/event/EventBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/ar;->a:Lcom/google/android/gms/games/event/EventBuffer;

    return-object v0
.end method
