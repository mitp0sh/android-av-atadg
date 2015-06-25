.class Lcom/google/android/gms/internal/wl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/internal/wk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wk;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wl;->b:Lcom/google/android/gms/internal/wk;

    iput p2, p0, Lcom/google/android/gms/internal/wl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wl;->b:Lcom/google/android/gms/internal/wk;

    iget-object v0, v0, Lcom/google/android/gms/internal/wk;->a:Lcom/google/android/gms/internal/im;

    invoke-static {v0}, Lcom/google/android/gms/internal/im;->d(Lcom/google/android/gms/internal/im;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wl;->b:Lcom/google/android/gms/internal/wk;

    iget-object v0, v0, Lcom/google/android/gms/internal/wk;->a:Lcom/google/android/gms/internal/im;

    invoke-static {v0}, Lcom/google/android/gms/internal/im;->d(Lcom/google/android/gms/internal/im;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/wl;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    :cond_0
    return-void
.end method
