.class Lcom/google/android/gms/analytics/bd;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/aw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/bd;->a:Lcom/google/android/gms/analytics/aw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/aw;Lcom/google/android/gms/analytics/ax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/bd;-><init>(Lcom/google/android/gms/analytics/aw;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd;->a:Lcom/google/android/gms/analytics/aw;

    invoke-static {v0}, Lcom/google/android/gms/analytics/aw;->d(Lcom/google/android/gms/analytics/aw;)V

    return-void
.end method
