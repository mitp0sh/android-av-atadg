.class Lcom/google/android/gms/internal/uf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fy;

.field final synthetic b:Lcom/google/android/gms/internal/fd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fd;Lcom/google/android/gms/internal/fy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/uf;->b:Lcom/google/android/gms/internal/fd;

    iput-object p2, p0, Lcom/google/android/gms/internal/uf;->a:Lcom/google/android/gms/internal/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/uf;->b:Lcom/google/android/gms/internal/fd;

    invoke-static {v0}, Lcom/google/android/gms/internal/fd;->a(Lcom/google/android/gms/internal/fd;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uf;->b:Lcom/google/android/gms/internal/fd;

    invoke-static {v0}, Lcom/google/android/gms/internal/fd;->b(Lcom/google/android/gms/internal/fd;)Lcom/google/android/gms/internal/fc$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/uf;->a:Lcom/google/android/gms/internal/fy;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/fc$a;->a(Lcom/google/android/gms/internal/fy;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
