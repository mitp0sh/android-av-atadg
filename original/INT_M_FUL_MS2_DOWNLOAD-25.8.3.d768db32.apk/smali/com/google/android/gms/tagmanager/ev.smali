.class Lcom/google/android/gms/tagmanager/ev;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/n$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/eu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/eu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ev;->a:Lcom/google/android/gms/tagmanager/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ct(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ev;->a:Lcom/google/android/gms/tagmanager/eu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/eu;->a(Ljava/lang/String;)V

    return-void
.end method

.method public pl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ev;->a:Lcom/google/android/gms/tagmanager/eu;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/eu;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pn()V
    .locals 1

    const-string v0, "Refresh ignored: container loaded as default only."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bf;->b(Ljava/lang/String;)V

    return-void
.end method
