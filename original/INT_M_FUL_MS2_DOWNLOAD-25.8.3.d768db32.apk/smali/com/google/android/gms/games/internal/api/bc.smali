.class Lcom/google/android/gms/games/internal/api/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/games/internal/api/bb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/bb;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/bc;->b:Lcom/google/android/gms/games/internal/api/bb;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/bc;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuest()Lcom/google/android/gms/games/quest/Quest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/bc;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
