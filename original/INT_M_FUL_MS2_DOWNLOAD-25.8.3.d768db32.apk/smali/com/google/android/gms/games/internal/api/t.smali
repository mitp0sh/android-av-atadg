.class Lcom/google/android/gms/games/internal/api/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/games/internal/api/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/s;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/t;->b:Lcom/google/android/gms/games/internal/api/s;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/t;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/t;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
