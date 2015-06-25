.class Lcom/google/android/gms/tagmanager/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/al;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/tagmanager/am;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/am;Lcom/google/android/gms/tagmanager/al;JLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/an;->d:Lcom/google/android/gms/tagmanager/am;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/an;->a:Lcom/google/android/gms/tagmanager/al;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/an;->b:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/an;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/an;->d:Lcom/google/android/gms/tagmanager/am;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/am;->a(Lcom/google/android/gms/tagmanager/am;)Lcom/google/android/gms/tagmanager/ao;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dq;->c()Lcom/google/android/gms/tagmanager/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/an;->d:Lcom/google/android/gms/tagmanager/am;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/am;->b(Lcom/google/android/gms/tagmanager/am;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/an;->a:Lcom/google/android/gms/tagmanager/al;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/dq;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/al;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/an;->d:Lcom/google/android/gms/tagmanager/am;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/dq;->d()Lcom/google/android/gms/tagmanager/ao;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/am;->a(Lcom/google/android/gms/tagmanager/am;Lcom/google/android/gms/tagmanager/ao;)Lcom/google/android/gms/tagmanager/ao;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/an;->d:Lcom/google/android/gms/tagmanager/am;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/am;->a(Lcom/google/android/gms/tagmanager/am;)Lcom/google/android/gms/tagmanager/ao;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/an;->b:J

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/an;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/tagmanager/ao;->a(JLjava/lang/String;)V

    return-void
.end method
