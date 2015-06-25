.class Lcom/google/android/gms/tagmanager/dj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/dk;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/df;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/df;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/dj;->a:Lcom/google/android/gms/tagmanager/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/cr$e;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/cr$e;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cr$a;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cr$a;",
            ">;",
            "Lcom/google/android/gms/tagmanager/cq;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$e;->qv()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$e;->qw()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cq;->e()Lcom/google/android/gms/tagmanager/co;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$e;->qv()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$e;->qA()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/co;->c(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cq;->f()Lcom/google/android/gms/tagmanager/co;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$e;->qw()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$e;->qB()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/co;->c(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
