.class Lcom/google/android/gms/internal/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/google/android/gms/internal/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/af;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/x;->b:Lcom/google/android/gms/internal/af;

    iput-object p2, p0, Lcom/google/android/gms/internal/x;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->b:Lcom/google/android/gms/internal/af;

    iget-object v1, p0, Lcom/google/android/gms/internal/x;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/af;->a(Lorg/json/JSONObject;)V

    return-void
.end method
