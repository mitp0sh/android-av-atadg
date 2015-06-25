.class Lcom/google/android/gms/tagmanager/dt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/dq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/dt;->a:Lcom/google/android/gms/tagmanager/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dt;->a:Lcom/google/android/gms/tagmanager/dq;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dq;->e(Lcom/google/android/gms/tagmanager/dq;)Lcom/google/android/gms/tagmanager/ao;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ao;->a()V

    return-void
.end method
