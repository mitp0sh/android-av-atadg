.class Lcom/google/android/gms/internal/acm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/v;

.field final synthetic b:Lcom/google/android/gms/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/acm;->b:Lcom/google/android/gms/internal/u;

    iput-object p2, p0, Lcom/google/android/gms/internal/acm;->a:Lcom/google/android/gms/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/acm;->a:Lcom/google/android/gms/internal/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/v;->av()V

    const/4 v0, 0x0

    return v0
.end method
