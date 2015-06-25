.class Lcom/google/android/gms/internal/aco;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/android/gms/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/u;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aco;->b:Lcom/google/android/gms/internal/u;

    iput-object p2, p0, Lcom/google/android/gms/internal/aco;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aco;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/ei;->d(Landroid/content/Intent;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aco;->b:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/acq;->j:Lcom/google/android/gms/internal/fy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aco;->b:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/acq;->j:Lcom/google/android/gms/internal/fy;

    iget-object v0, v0, Lcom/google/android/gms/internal/fy;->se:Lcom/google/android/gms/internal/gu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aco;->b:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/acq;->j:Lcom/google/android/gms/internal/fy;

    iget-object v0, v0, Lcom/google/android/gms/internal/fy;->se:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gu;->dC()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aco;->b:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/acq;->j:Lcom/google/android/gms/internal/fy;

    iget-object v0, v0, Lcom/google/android/gms/internal/fy;->se:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gu;->dC()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aco;->b:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/acq;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/acq;->x:Z

    return-void
.end method
