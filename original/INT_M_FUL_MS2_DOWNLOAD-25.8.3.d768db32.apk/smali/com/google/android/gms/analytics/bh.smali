.class Lcom/google/android/gms/analytics/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/be;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/bh;->a:Lcom/google/android/gms/analytics/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/be;Lcom/google/android/gms/analytics/bf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/bh;-><init>(Lcom/google/android/gms/analytics/be;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/bh;->a:Lcom/google/android/gms/analytics/be;

    invoke-static {v0}, Lcom/google/android/gms/analytics/be;->d(Lcom/google/android/gms/analytics/be;)Lcom/google/android/gms/analytics/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/w;->c()V

    return-void
.end method
