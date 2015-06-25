.class Lcom/google/android/gms/tagmanager/eu;
.super Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ld;

.field private final b:Lcom/google/android/gms/tagmanager/fa;

.field private final c:Landroid/os/Looper;

.field private final d:Lcom/google/android/gms/tagmanager/cj;

.field private final e:I

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/tagmanager/TagManager;

.field private final h:Ljava/lang/String;

.field private i:Lcom/google/android/gms/tagmanager/fc;

.field private volatile j:Lcom/google/android/gms/tagmanager/n;

.field private volatile k:Z

.field private l:Lcom/google/android/gms/internal/c$j;

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Lcom/google/android/gms/tagmanager/fb;

.field private p:Lcom/google/android/gms/tagmanager/ex;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/fc;Lcom/google/android/gms/tagmanager/fb;Lcom/google/android/gms/internal/ld;Lcom/google/android/gms/tagmanager/cj;)V
    .locals 2

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/eu;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/eu;->g:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/eu;->c:Landroid/os/Looper;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/eu;->h:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/tagmanager/eu;->e:I

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/eu;->i:Lcom/google/android/gms/tagmanager/fc;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/eu;->o:Lcom/google/android/gms/tagmanager/fb;

    new-instance v0, Lcom/google/android/gms/tagmanager/fa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/fa;-><init>(Lcom/google/android/gms/tagmanager/eu;Lcom/google/android/gms/tagmanager/ev;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->b:Lcom/google/android/gms/tagmanager/fa;

    new-instance v0, Lcom/google/android/gms/internal/c$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->l:Lcom/google/android/gms/internal/c$j;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/eu;->a:Lcom/google/android/gms/internal/ld;

    iput-object p9, p0, Lcom/google/android/gms/tagmanager/eu;->d:Lcom/google/android/gms/tagmanager/cj;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/eu;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/tagmanager/cg;->a()Lcom/google/android/gms/tagmanager/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/eu;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move-object v0, p3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/ff;)V
    .locals 13

    new-instance v12, Lcom/google/android/gms/tagmanager/cz;

    move-object/from16 v0, p4

    invoke-direct {v12, p1, v0}, Lcom/google/android/gms/tagmanager/cz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/tagmanager/ct;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-direct {v10, p1, v0, v1}, Lcom/google/android/gms/tagmanager/ct;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/ff;)V

    invoke-static {}, Lcom/google/android/gms/internal/lf;->if()Lcom/google/android/gms/internal/ld;

    move-result-object v11

    new-instance v2, Lcom/google/android/gms/tagmanager/be;

    const/16 v3, 0x1e

    const-wide/32 v4, 0xdbba0

    const-wide/16 v6, 0x1388

    const-string v8, "refreshing"

    invoke-static {}, Lcom/google/android/gms/internal/lf;->if()Lcom/google/android/gms/internal/ld;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/tagmanager/be;-><init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/ld;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v9, v12

    move-object v12, v2

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/tagmanager/eu;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/fc;Lcom/google/android/gms/tagmanager/fb;Lcom/google/android/gms/internal/ld;Lcom/google/android/gms/tagmanager/cj;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/eu;)Lcom/google/android/gms/internal/ld;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->a:Lcom/google/android/gms/internal/ld;

    return-object v0
.end method

.method private declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->o:Lcom/google/android/gms/tagmanager/fb;

    if-nez v0, :cond_0

    const-string v0, "Refresh requested, but no network load scheduler."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bf;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->o:Lcom/google/android/gms/tagmanager/fb;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eu;->l:Lcom/google/android/gms/internal/c$j;

    iget-object v1, v1, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/fb;->a(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/gms/internal/c$j;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->i:Lcom/google/android/gms/tagmanager/fc;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/pu$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pu$a;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/eu;->m:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/pu$a;->auB:J

    new-instance v1, Lcom/google/android/gms/internal/c$f;

    invoke-direct {v1}, Lcom/google/android/gms/internal/c$f;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/pu$a;->gs:Lcom/google/android/gms/internal/c$f;

    iput-object p1, v0, Lcom/google/android/gms/internal/pu$a;->auC:Lcom/google/android/gms/internal/c$j;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eu;->i:Lcom/google/android/gms/tagmanager/fc;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/fc;->a(Lcom/google/android/gms/internal/pu$a;)V
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

.method private declared-synchronized a(Lcom/google/android/gms/internal/c$j;JZ)V
    .locals 8

    const-wide/32 v6, 0x2932e00

    monitor-enter p0

    if-eqz p4, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/eu;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/eu;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->j:Lcom/google/android/gms/tagmanager/n;

    if-nez v0, :cond_2

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/eu;->l:Lcom/google/android/gms/internal/c$j;

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/eu;->m:J

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x2932e00

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/eu;->m:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/eu;->a:Lcom/google/android/gms/internal/ld;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ld;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/eu;->a(J)V

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eu;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/eu;->g:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/eu;->h:Ljava/lang/String;

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/c$j;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eu;->j:Lcom/google/android/gms/tagmanager/n;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/tagmanager/n;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/eu;->g:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/eu;->c:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/eu;->b:Lcom/google/android/gms/tagmanager/fa;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/eu;->j:Lcom/google/android/gms/tagmanager/n;

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/eu;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eu;->p:Lcom/google/android/gms/tagmanager/ex;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/ex;->a(Lcom/google/android/gms/tagmanager/Container;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->j:Lcom/google/android/gms/tagmanager/n;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/eu;->b(Lcom/google/android/gms/common/api/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eu;->j:Lcom/google/android/gms/tagmanager/n;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/n;->a(Lcom/google/android/gms/tagmanager/Container;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/eu;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/eu;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/eu;Lcom/google/android/gms/internal/c$j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/eu;->a(Lcom/google/android/gms/internal/c$j;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/eu;Lcom/google/android/gms/internal/c$j;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/eu;->a(Lcom/google/android/gms/internal/c$j;JZ)V

    return-void
.end method

.method private a(Z)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->i:Lcom/google/android/gms/tagmanager/fc;

    new-instance v1, Lcom/google/android/gms/tagmanager/ey;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/ey;-><init>(Lcom/google/android/gms/tagmanager/eu;Lcom/google/android/gms/tagmanager/ev;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/fc;->a(Lcom/google/android/gms/tagmanager/bg;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->o:Lcom/google/android/gms/tagmanager/fb;

    new-instance v1, Lcom/google/android/gms/tagmanager/ez;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/ez;-><init>(Lcom/google/android/gms/tagmanager/eu;Lcom/google/android/gms/tagmanager/ev;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/fb;->a(Lcom/google/android/gms/tagmanager/bg;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->i:Lcom/google/android/gms/tagmanager/fc;

    iget v1, p0, Lcom/google/android/gms/tagmanager/eu;->e:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/fc;->a(I)Lcom/google/android/gms/tagmanager/cr$c;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Lcom/google/android/gms/tagmanager/n;

    iget-object v8, p0, Lcom/google/android/gms/tagmanager/eu;->g:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v9, p0, Lcom/google/android/gms/tagmanager/eu;->c:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eu;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/eu;->g:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/eu;->h:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cr$c;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eu;->b:Lcom/google/android/gms/tagmanager/fa;

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/eu;->j:Lcom/google/android/gms/tagmanager/n;

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/ew;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/ew;-><init>(Lcom/google/android/gms/tagmanager/eu;Z)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->p:Lcom/google/android/gms/tagmanager/ex;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/eu;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->o:Lcom/google/android/gms/tagmanager/fb;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/tagmanager/fb;->a(JLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->i:Lcom/google/android/gms/tagmanager/fc;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/fc;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/eu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/eu;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/eu;)Lcom/google/android/gms/internal/c$j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->l:Lcom/google/android/gms/internal/c$j;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/tagmanager/eu;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/eu;->m:J

    return-wide v0
.end method

.method private e()Z
    .locals 3

    invoke-static {}, Lcom/google/android/gms/tagmanager/cg;->a()Lcom/google/android/gms/tagmanager/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cg;->b()Lcom/google/android/gms/tagmanager/ch;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/ch;->b:Lcom/google/android/gms/tagmanager/ch;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cg;->b()Lcom/google/android/gms/tagmanager/ch;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/ch;->c:Lcom/google/android/gms/tagmanager/ch;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eu;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cg;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/android/gms/tagmanager/eu;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/eu;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/tagmanager/eu;)Lcom/google/android/gms/tagmanager/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->j:Lcom/google/android/gms/tagmanager/n;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/tagmanager/eu;)Lcom/google/android/gms/tagmanager/cj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->d:Lcom/google/android/gms/tagmanager/cj;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->j:Lcom/google/android/gms/tagmanager/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->j:Lcom/google/android/gms/tagmanager/n;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->Kz:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_1

    const-string v0, "timer expired: setting result to failure"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bf;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/n;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method public a()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->i:Lcom/google/android/gms/tagmanager/fc;

    iget v1, p0, Lcom/google/android/gms/tagmanager/eu;->e:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/fc;->a(I)Lcom/google/android/gms/tagmanager/cr$c;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eu;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/eu;->g:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/eu;->h:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cr$c;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/n;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/eu;->g:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/eu;->c:Landroid/os/Looper;

    new-instance v4, Lcom/google/android/gms/tagmanager/ev;

    invoke-direct {v4, p0}, Lcom/google/android/gms/tagmanager/ev;-><init>(Lcom/google/android/gms/tagmanager/eu;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/eu;->b(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    iput-object v7, p0, Lcom/google/android/gms/tagmanager/eu;->o:Lcom/google/android/gms/tagmanager/fb;

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/eu;->i:Lcom/google/android/gms/tagmanager/fc;

    return-void

    :cond_0
    const-string v0, "Default was requested, but no default container was found"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bf;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/eu;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/eu;->b(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/eu;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->o:Lcom/google/android/gms/tagmanager/fb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->o:Lcom/google/android/gms/tagmanager/fb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/fb;->a(Ljava/lang/String;)V
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

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/eu;->a(Z)V

    return-void
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/eu;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/eu;->a(Z)V

    return-void
.end method

.method declared-synchronized d()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eu;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
