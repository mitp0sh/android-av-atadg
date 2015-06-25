.class abstract Lcom/google/android/gms/cast/ae;
.super Lcom/google/android/gms/cast/Cast$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/cast/Cast$a",
        "<",
        "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
        ">;"
    }
.end annotation


# instance fields
.field h:Lcom/google/android/gms/internal/iv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/Cast$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Lcom/google/android/gms/cast/af;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/af;-><init>(Lcom/google/android/gms/cast/ae;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/ae;->h:Lcom/google/android/gms/internal/iv;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/ag;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/ag;-><init>(Lcom/google/android/gms/cast/ae;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/ae;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    move-result-object v0

    return-object v0
.end method
