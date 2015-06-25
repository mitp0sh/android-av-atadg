.class Lcom/google/android/gms/tagmanager/fl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/tagmanager/fi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/fi;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/fl;->b:Lcom/google/android/gms/tagmanager/fi;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/fl;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/fl;->b:Lcom/google/android/gms/tagmanager/fi;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/fl;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/fi;->a(Lcom/google/android/gms/tagmanager/fi;Ljava/lang/String;)V

    return-void
.end method
