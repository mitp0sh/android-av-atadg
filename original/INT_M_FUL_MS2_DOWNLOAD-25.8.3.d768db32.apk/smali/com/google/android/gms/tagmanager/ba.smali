.class Lcom/google/android/gms/tagmanager/ba;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/l$a;

.field final synthetic b:Lcom/google/android/gms/tagmanager/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/az;ILcom/google/android/gms/tagmanager/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ba;->b:Lcom/google/android/gms/tagmanager/az;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/ba;->a:Lcom/google/android/gms/tagmanager/l$a;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ba;->a:Lcom/google/android/gms/tagmanager/l$a;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/l$a;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method