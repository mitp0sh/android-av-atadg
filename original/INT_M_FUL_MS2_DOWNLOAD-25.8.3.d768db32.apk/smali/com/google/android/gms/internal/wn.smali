.class Lcom/google/android/gms/internal/wn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ij;

.field final synthetic b:Lcom/google/android/gms/internal/wk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wk;Lcom/google/android/gms/internal/ij;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wn;->b:Lcom/google/android/gms/internal/wk;

    iput-object p2, p0, Lcom/google/android/gms/internal/wn;->a:Lcom/google/android/gms/internal/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wn;->b:Lcom/google/android/gms/internal/wk;

    iget-object v0, v0, Lcom/google/android/gms/internal/wk;->a:Lcom/google/android/gms/internal/im;

    iget-object v1, p0, Lcom/google/android/gms/internal/wn;->a:Lcom/google/android/gms/internal/ij;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/im;->a(Lcom/google/android/gms/internal/im;Lcom/google/android/gms/internal/ij;)V

    return-void
.end method
