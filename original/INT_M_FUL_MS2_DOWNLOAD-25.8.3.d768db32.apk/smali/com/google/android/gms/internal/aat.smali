.class final Lcom/google/android/gms/internal/aat;
.super Lcom/google/android/gms/internal/oj$a;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/google/android/gms/internal/oj;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/oj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aat;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/aat;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/aat;->c:Lcom/google/android/gms/internal/oj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/oj$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aat;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/aat;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ol;->a(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aat;->c:Lcom/google/android/gms/internal/oj;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/oj;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    return-void
.end method
