.class Lcom/google/android/gms/internal/rf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/re;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/re;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rf;->a:Lcom/google/android/gms/internal/re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/rf;->a:Lcom/google/android/gms/internal/re;

    iget-object v0, v0, Lcom/google/android/gms/internal/re;->d:Lcom/google/android/gms/internal/an;

    iget-object v1, p0, Lcom/google/android/gms/internal/rf;->a:Lcom/google/android/gms/internal/re;

    iget-object v1, v1, Lcom/google/android/gms/internal/re;->b:Lcom/google/android/gms/internal/ak;

    iget-object v2, p0, Lcom/google/android/gms/internal/rf;->a:Lcom/google/android/gms/internal/re;

    iget-object v2, v2, Lcom/google/android/gms/internal/re;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/ak;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rf;->a(Ljava/lang/String;)V

    return-void
.end method
