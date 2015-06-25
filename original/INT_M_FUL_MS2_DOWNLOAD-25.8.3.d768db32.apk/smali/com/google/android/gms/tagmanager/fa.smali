.class Lcom/google/android/gms/tagmanager/fa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/n$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/eu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/eu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/fa;->a:Lcom/google/android/gms/tagmanager/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/eu;Lcom/google/android/gms/tagmanager/ev;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/fa;-><init>(Lcom/google/android/gms/tagmanager/eu;)V

    return-void
.end method


# virtual methods
.method public ct(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/fa;->a:Lcom/google/android/gms/tagmanager/eu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/eu;->a(Ljava/lang/String;)V

    return-void
.end method

.method public pl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/fa;->a:Lcom/google/android/gms/tagmanager/eu;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/eu;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pn()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/fa;->a:Lcom/google/android/gms/tagmanager/eu;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/eu;->g(Lcom/google/android/gms/tagmanager/eu;)Lcom/google/android/gms/tagmanager/cj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/cj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/fa;->a:Lcom/google/android/gms/tagmanager/eu;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/eu;->a(Lcom/google/android/gms/tagmanager/eu;J)V

    :cond_0
    return-void
.end method
