.class public Lcom/google/android/gms/internal/ga;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ck$b;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ey;
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ga;

.field public static final vY:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/gms/internal/gb;

.field private d:Lcom/google/android/gms/internal/ld;

.field private e:Ljava/math/BigInteger;

.field private final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/fz;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gd;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/content/Context;

.field private l:Lcom/google/android/gms/internal/gs;

.field private m:Z

.field private n:Lcom/google/android/gms/internal/am;

.field private o:Lcom/google/android/gms/internal/an;

.field private p:Lcom/google/android/gms/internal/al;

.field private q:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Landroid/os/Bundle;

.field private t:Lcom/google/android/gms/internal/ex;

.field private u:Ljava/lang/String;

.field public final vZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ga;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    iget-object v0, v0, Lcom/google/android/gms/internal/ga;->vZ:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/ga;->vY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->e:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->f:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->g:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ga;->h:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ga;->i:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ga;->j:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ga;->m:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ga;->n:Lcom/google/android/gms/internal/am;

    iput-object v1, p0, Lcom/google/android/gms/internal/ga;->o:Lcom/google/android/gms/internal/an;

    iput-object v1, p0, Lcom/google/android/gms/internal/ga;->p:Lcom/google/android/gms/internal/al;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->q:Ljava/util/LinkedList;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ga;->r:Z

    invoke-static {}, Lcom/google/android/gms/internal/bn;->by()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->s:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/google/android/gms/internal/ga;->t:Lcom/google/android/gms/internal/ex;

    invoke-static {}, Lcom/google/android/gms/internal/gi;->dx()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->vZ:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/gb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->vZ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gb;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->c:Lcom/google/android/gms/internal/gb;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/gc;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ga;->b(Landroid/content/Context;Lcom/google/android/gms/internal/gc;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/gs;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ga;->b(Landroid/content/Context;Lcom/google/android/gms/internal/gs;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ga;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method public static b(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/fz;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ga;->c(Ljava/util/HashSet;)V

    return-void
.end method

.method public static bN()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->dp()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static c(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ga;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dc()Lcom/google/android/gms/internal/ga;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    return-object v0
.end method

.method public static df()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->dg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dh()Lcom/google/android/gms/internal/gb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->di()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    return-object v0
.end method

.method public static dj()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->dk()Z

    move-result v0

    return v0
.end method

.method public static dl()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->dm()Z

    move-result v0

    return v0
.end method

.method public static dn()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->do()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ga;->a:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ga;->f(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ga;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ga;->s:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->k:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->q:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/android/gms/internal/ga;->l:Lcom/google/android/gms/internal/gs;

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ex;->a(Landroid/content/Context;Ljava/lang/Thread;Lcom/google/android/gms/internal/gs;)Lcom/google/android/gms/internal/ex;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/fz;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/gd;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Thread;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ga;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->l:Lcom/google/android/gms/internal/gs;

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ex;->a(Landroid/content/Context;Ljava/lang/Thread;Lcom/google/android/gms/internal/gs;)Lcom/google/android/gms/internal/ex;

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->q:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;Lcom/google/android/gms/internal/gc;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->c:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/gb;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gd;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "slots"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "ads"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->f:Ljava/util/HashSet;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/gc;->a(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public b(Landroid/content/Context;Lcom/google/android/gms/internal/gs;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ga;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ga;->l:Lcom/google/android/gms/internal/gs;

    invoke-static {p1}, Lcom/google/android/gms/internal/gg;->o(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ga;->i:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/iy;->H(Landroid/content/Context;)V

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ck;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ck$b;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ga;->a(Ljava/lang/Thread;)V

    iget-object v0, p2, Lcom/google/android/gms/internal/gs;->wS:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gi;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->u:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/lf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->d:Lcom/google/android/gms/internal/ld;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ga;->j:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ga;->i:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ga;->i:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gg;->a(Landroid/content/Context;Z)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/fz;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->l:Lcom/google/android/gms/internal/gs;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/gs;->wV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public dd()Lcom/google/android/gms/internal/ld;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->d:Lcom/google/android/gms/internal/ld;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public de()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ga;->m:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dg()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->e:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->e:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ga;->e:Ljava/math/BigInteger;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public di()Lcom/google/android/gms/internal/gb;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->c:Lcom/google/android/gms/internal/gb;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dk()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ga;->h:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ga;->h:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dm()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ga;->i:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public do()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->u:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dp()Landroid/os/Bundle;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->s:Landroid/os/Bundle;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ga;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ex;

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->l:Lcom/google/android/gms/internal/gs;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/ex;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gs;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ex;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public l(Landroid/content/Context;)Lcom/google/android/gms/internal/an;
    .locals 10

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ga;->bN()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/bn;->pp:Lcom/google/android/gms/internal/iy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iy;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ll;->ij()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->de()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->n:Lcom/google/android/gms/internal/am;

    if-nez v2, :cond_3

    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/am;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/am;-><init>(Landroid/app/Application;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ga;->n:Lcom/google/android/gms/internal/am;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->p:Lcom/google/android/gms/internal/al;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/al;

    invoke-direct {v0}, Lcom/google/android/gms/internal/al;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->p:Lcom/google/android/gms/internal/al;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->o:Lcom/google/android/gms/internal/an;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/an;

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->n:Lcom/google/android/gms/internal/am;

    iget-object v3, p0, Lcom/google/android/gms/internal/ga;->p:Lcom/google/android/gms/internal/al;

    iget-object v4, p0, Lcom/google/android/gms/internal/ga;->s:Landroid/os/Bundle;

    new-instance v5, Lcom/google/android/gms/internal/ex;

    iget-object v6, p0, Lcom/google/android/gms/internal/ga;->k:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/internal/ga;->l:Lcom/google/android/gms/internal/gs;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ex;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gs;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/an;-><init>(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/al;Landroid/os/Bundle;Lcom/google/android/gms/internal/ex;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->o:Lcom/google/android/gms/internal/an;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->o:Lcom/google/android/gms/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/an;->ba()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->o:Lcom/google/android/gms/internal/an;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public x(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ga;->m:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
