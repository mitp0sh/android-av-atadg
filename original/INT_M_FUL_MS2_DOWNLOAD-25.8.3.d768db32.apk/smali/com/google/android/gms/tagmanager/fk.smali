.class Lcom/google/android/gms/tagmanager/fk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/DataLayer$c$a;

.field final synthetic b:Lcom/google/android/gms/tagmanager/fi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/fi;Lcom/google/android/gms/tagmanager/DataLayer$c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/fk;->b:Lcom/google/android/gms/tagmanager/fi;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/fk;->a:Lcom/google/android/gms/tagmanager/DataLayer$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/fk;->a:Lcom/google/android/gms/tagmanager/DataLayer$c$a;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/fk;->b:Lcom/google/android/gms/tagmanager/fi;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/fi;->a(Lcom/google/android/gms/tagmanager/fi;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer$c$a;->h(Ljava/util/List;)V

    return-void
.end method
