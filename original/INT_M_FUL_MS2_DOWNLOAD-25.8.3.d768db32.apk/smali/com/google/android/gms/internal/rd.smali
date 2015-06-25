.class Lcom/google/android/gms/internal/rd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/android/gms/internal/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/an;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rd;->b:Lcom/google/android/gms/internal/an;

    iput-object p2, p0, Lcom/google/android/gms/internal/rd;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/rd;->b:Lcom/google/android/gms/internal/an;

    iget-object v1, p0, Lcom/google/android/gms/internal/rd;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/an;->b(Landroid/view/View;)V

    return-void
.end method
