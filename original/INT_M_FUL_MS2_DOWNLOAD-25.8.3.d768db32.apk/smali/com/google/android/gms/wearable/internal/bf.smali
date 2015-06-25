.class final Lcom/google/android/gms/wearable/internal/bf;
.super Lcom/google/android/gms/wearable/internal/bc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/bc",
        "<",
        "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/bc;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/bb;
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/wearable/internal/bb;->b(Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/bb;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a(Ljava/lang/Object;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/bb;
    .locals 1

    check-cast p1, Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/bf;->a(Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/bb;

    move-result-object v0

    return-object v0
.end method
