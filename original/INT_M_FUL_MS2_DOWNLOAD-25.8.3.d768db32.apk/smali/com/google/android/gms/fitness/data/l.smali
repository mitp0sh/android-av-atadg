.class public Lcom/google/android/gms/fitness/data/l;
.super Lcom/google/android/gms/fitness/data/k$a;


# instance fields
.field private final a:Lcom/google/android/gms/fitness/request/OnDataPointListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/request/OnDataPointListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/k$a;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/jx;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/OnDataPointListener;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/l;->a:Lcom/google/android/gms/fitness/request/OnDataPointListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/OnDataPointListener;Lcom/google/android/gms/fitness/data/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/l;-><init>(Lcom/google/android/gms/fitness/request/OnDataPointListener;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/l;->a:Lcom/google/android/gms/fitness/request/OnDataPointListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/request/OnDataPointListener;->onDataPoint(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-void
.end method
