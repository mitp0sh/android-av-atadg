.class public Lcom/google/android/gms/internal/bt;
.super Lcom/google/android/gms/internal/bw$a;

# interfaces
.implements Lcom/google/android/gms/internal/bv$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ey;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Ljava/lang/String;

.field private final f:D

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/Object;

.field private j:Lcom/google/android/gms/internal/bv;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bt;->i:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/bt;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/bt;->b:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/google/android/gms/internal/bt;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bt;->d:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/google/android/gms/internal/bt;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/internal/bt;->f:D

    iput-object p8, p0, Lcom/google/android/gms/internal/bt;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/bt;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/bv;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bt;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/bt;->j:Lcom/google/android/gms/internal/bv;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aw()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bt;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->j:Lcom/google/android/gms/internal/bv;

    if-nez v0, :cond_0

    const-string v0, "Attempt to record impression before app install ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->T(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->j:Lcom/google/android/gms/internal/bv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bv;->aw()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bC()Lcom/google/android/gms/dynamic/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->k(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    return-object v0
.end method

.method public bD()Lcom/google/android/gms/dynamic/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->k(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    return-object v0
.end method

.method public bE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->e:Ljava/lang/String;

    return-object v0
.end method

.method public bF()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/bt;->f:D

    return-wide v0
.end method

.method public bG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->g:Ljava/lang/String;

    return-object v0
.end method

.method public bH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/bt;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->j:Lcom/google/android/gms/internal/bv;

    if-nez v0, :cond_0

    const-string v0, "Attempt to perform click before app install ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->T(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->j:Lcom/google/android/gms/internal/bv;

    const-string v2, "2"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/bv;->b(Ljava/lang/String;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
