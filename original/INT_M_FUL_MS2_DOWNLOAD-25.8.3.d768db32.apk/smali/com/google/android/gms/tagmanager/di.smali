.class Lcom/google/android/gms/tagmanager/di;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/dk;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/google/android/gms/tagmanager/df;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/df;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/di;->e:Lcom/google/android/gms/tagmanager/df;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/di;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/di;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/di;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/di;->d:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/di;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cq;->c()Lcom/google/android/gms/tagmanager/co;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/co;->c(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/di;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cq;->d()Lcom/google/android/gms/tagmanager/co;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/co;->c(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-void
.end method
