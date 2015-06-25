.class final Lcom/google/android/gms/wearable/internal/bk;
.super Lcom/google/android/gms/wearable/internal/cb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/cb",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

.field private b:[Landroid/content/IntentFilter;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/cb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/bk;->a:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/bk;->b:[Landroid/content/IntentFilter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;Lcom/google/android/gms/wearable/internal/bi;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/bk;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/bk;->a:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/bk;->b:[Landroid/content/IntentFilter;

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/internal/ba;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bk;->a(Lcom/google/android/gms/wearable/internal/ba;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/wearable/internal/ba;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bk;->a:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/bk;->b:[Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/wearable/internal/ba;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/internal/bk;->a:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    iput-object v2, p0, Lcom/google/android/gms/wearable/internal/bk;->b:[Landroid/content/IntentFilter;

    return-void
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bk;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
