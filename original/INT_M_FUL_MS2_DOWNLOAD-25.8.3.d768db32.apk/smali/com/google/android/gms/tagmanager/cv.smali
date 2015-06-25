.class Lcom/google/android/gms/tagmanager/cv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cw;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/ct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cv;->a:Lcom/google/android/gms/tagmanager/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/ff;)Lcom/google/android/gms/tagmanager/cs;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/cs;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cv;->a:Lcom/google/android/gms/tagmanager/ct;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/ct;->a(Lcom/google/android/gms/tagmanager/ct;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cv;->a:Lcom/google/android/gms/tagmanager/ct;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/ct;->b(Lcom/google/android/gms/tagmanager/ct;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/tagmanager/cs;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/ff;)V

    return-object v0
.end method
