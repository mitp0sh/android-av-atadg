.class Lcom/google/android/gms/analytics/bb;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/aw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/bb;->a:Lcom/google/android/gms/analytics/aw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/aw;Lcom/google/android/gms/analytics/ax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/bb;-><init>(Lcom/google/android/gms/analytics/aw;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/bb;->a:Lcom/google/android/gms/analytics/aw;

    invoke-static {v0}, Lcom/google/android/gms/analytics/aw;->b(Lcom/google/android/gms/analytics/aw;)Lcom/google/android/gms/analytics/az;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/az;->a:Lcom/google/android/gms/analytics/az;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/bb;->a:Lcom/google/android/gms/analytics/aw;

    invoke-static {v0}, Lcom/google/android/gms/analytics/aw;->c(Lcom/google/android/gms/analytics/aw;)V

    :cond_0
    return-void
.end method
