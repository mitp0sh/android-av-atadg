.class Lcom/google/android/gms/analytics/ba;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/aw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/ba;->a:Lcom/google/android/gms/analytics/aw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/aw;Lcom/google/android/gms/analytics/ax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/ba;-><init>(Lcom/google/android/gms/analytics/aw;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->a:Lcom/google/android/gms/analytics/aw;

    invoke-static {v0}, Lcom/google/android/gms/analytics/aw;->b(Lcom/google/android/gms/analytics/aw;)Lcom/google/android/gms/analytics/az;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/az;->b:Lcom/google/android/gms/analytics/az;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->a:Lcom/google/android/gms/analytics/aw;

    invoke-static {v0}, Lcom/google/android/gms/analytics/aw;->e(Lcom/google/android/gms/analytics/aw;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->a:Lcom/google/android/gms/analytics/aw;

    invoke-static {v0}, Lcom/google/android/gms/analytics/aw;->f(Lcom/google/android/gms/analytics/aw;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->a:Lcom/google/android/gms/analytics/aw;

    invoke-static {v2}, Lcom/google/android/gms/analytics/aw;->g(Lcom/google/android/gms/analytics/aw;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->a:Lcom/google/android/gms/analytics/aw;

    invoke-static {v2}, Lcom/google/android/gms/analytics/aw;->h(Lcom/google/android/gms/analytics/aw;)Lcom/google/android/gms/internal/ld;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ld;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->V(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->a:Lcom/google/android/gms/analytics/aw;

    invoke-static {v0}, Lcom/google/android/gms/analytics/aw;->i(Lcom/google/android/gms/analytics/aw;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->a:Lcom/google/android/gms/analytics/aw;

    invoke-static {v0}, Lcom/google/android/gms/analytics/aw;->j(Lcom/google/android/gms/analytics/aw;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/ba;

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->a:Lcom/google/android/gms/analytics/aw;

    invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/ba;-><init>(Lcom/google/android/gms/analytics/aw;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->a:Lcom/google/android/gms/analytics/aw;

    invoke-static {v2}, Lcom/google/android/gms/analytics/aw;->g(Lcom/google/android/gms/analytics/aw;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
