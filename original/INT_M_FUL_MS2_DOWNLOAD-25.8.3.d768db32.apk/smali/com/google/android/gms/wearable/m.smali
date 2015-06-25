.class Lcom/google/android/gms/wearable/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/internal/al;

.field final synthetic b:Lcom/google/android/gms/wearable/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/i;Lcom/google/android/gms/wearable/internal/al;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/m;->b:Lcom/google/android/gms/wearable/i;

    iput-object p2, p0, Lcom/google/android/gms/wearable/m;->a:Lcom/google/android/gms/wearable/internal/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->b:Lcom/google/android/gms/wearable/i;

    iget-object v0, v0, Lcom/google/android/gms/wearable/i;->a:Lcom/google/android/gms/wearable/WearableListenerService;

    iget-object v1, p0, Lcom/google/android/gms/wearable/m;->a:Lcom/google/android/gms/wearable/internal/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/WearableListenerService;->onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V

    return-void
.end method
