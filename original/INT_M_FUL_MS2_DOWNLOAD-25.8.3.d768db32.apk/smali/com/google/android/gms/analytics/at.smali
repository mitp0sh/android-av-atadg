.class Lcom/google/android/gms/analytics/at;
.super Lcom/google/android/gms/analytics/v;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static p:Lcom/google/android/gms/analytics/at;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/analytics/ah;

.field private volatile d:Lcom/google/android/gms/analytics/aj;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Lcom/google/android/gms/analytics/ai;

.field private l:Landroid/os/Handler;

.field private m:Lcom/google/android/gms/analytics/as;

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/at;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/v;-><init>()V

    const/16 v0, 0x708

    iput v0, p0, Lcom/google/android/gms/analytics/at;->e:I

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/at;->f:Z

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/at;->i:Z

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/at;->j:Z

    new-instance v0, Lcom/google/android/gms/analytics/au;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/au;-><init>(Lcom/google/android/gms/analytics/at;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/at;->k:Lcom/google/android/gms/analytics/ai;

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/at;->n:Z

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/at;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/at;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/at;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/at;->e:I

    return v0
.end method

.method public static c()Lcom/google/android/gms/analytics/at;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/at;->p:Lcom/google/android/gms/analytics/at;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/analytics/at;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/at;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/at;->p:Lcom/google/android/gms/analytics/at;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/at;->p:Lcom/google/android/gms/analytics/at;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/at;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/at;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/at;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private g()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/analytics/as;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/as;-><init>(Lcom/google/android/gms/analytics/v;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/at;->m:Lcom/google/android/gms/analytics/as;

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->m:Lcom/google/android/gms/analytics/as;

    iget-object v1, p0, Lcom/google/android/gms/analytics/at;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/as;->a(Landroid/content/Context;)V

    return-void
.end method

.method private h()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/at;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/av;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/av;-><init>(Lcom/google/android/gms/analytics/at;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    iget v0, p0, Lcom/google/android/gms/analytics/at;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/at;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/analytics/at;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->d:Lcom/google/android/gms/analytics/aj;

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->V(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/at;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/analytics/y;->a()Lcom/google/android/gms/analytics/y;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/y$a;->AO:Lcom/google/android/gms/analytics/y$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/y;->a(Lcom/google/android/gms/analytics/y$a;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->d:Lcom/google/android/gms/analytics/aj;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/aj;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->V(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/analytics/at;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/analytics/y;->a()Lcom/google/android/gms/analytics/y;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/y$a;->AP:Lcom/google/android/gms/analytics/y$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/y;->a(Lcom/google/android/gms/analytics/y$a;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->n:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->i:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/analytics/at;->e:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/at;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    iput p1, p0, Lcom/google/android/gms/analytics/at;->e:I

    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/at;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/analytics/aj;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/at;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->d:Lcom/google/android/gms/analytics/aj;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/analytics/at;->d:Lcom/google/android/gms/analytics/aj;

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->f:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/at;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/at;->f:Z

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/at;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/at;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->n:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/at;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->n:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/analytics/at;->e:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/at;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/android/gms/analytics/at;->e:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/at;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/analytics/at;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->V(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/at;->n:Z

    iput-boolean p2, p0, Lcom/google/android/gms/analytics/at;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/analytics/at;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/at;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/at;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()Lcom/google/android/gms/analytics/ah;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->c:Lcom/google/android/gms/analytics/ah;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/analytics/m;

    iget-object v1, p0, Lcom/google/android/gms/analytics/at;->k:Lcom/google/android/gms/analytics/ai;

    iget-object v2, p0, Lcom/google/android/gms/analytics/at;->b:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/analytics/j;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/j;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/m;-><init>(Lcom/google/android/gms/analytics/ai;Landroid/content/Context;Lcom/google/android/gms/analytics/o;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/at;->c:Lcom/google/android/gms/analytics/ah;

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->c:Lcom/google/android/gms/analytics/ah;

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/at;->o:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/ah;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->c:Lcom/google/android/gms/analytics/ah;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ah;->d()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/at;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/r;->ad(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/at;->h:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->l:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/at;->h()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->m:Lcom/google/android/gms/analytics/as;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/at;->j:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/at;->g()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->c:Lcom/google/android/gms/analytics/ah;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->d:Lcom/google/android/gms/analytics/aj;

    if-nez v0, :cond_0

    const-string v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->V(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/at;->g:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/analytics/y;->a()Lcom/google/android/gms/analytics/y;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/y$a;->Bb:Lcom/google/android/gms/analytics/y$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/y;->a(Lcom/google/android/gms/analytics/y$a;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->d:Lcom/google/android/gms/analytics/aj;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/aj;->c()V

    goto :goto_0
.end method
