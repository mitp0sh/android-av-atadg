.class Lcom/google/android/gms/analytics/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ai;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/at;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/at;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/au;->a:Lcom/google/android/gms/analytics/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/au;->a:Lcom/google/android/gms/analytics/at;

    iget-object v1, p0, Lcom/google/android/gms/analytics/au;->a:Lcom/google/android/gms/analytics/at;

    invoke-static {v1}, Lcom/google/android/gms/analytics/at;->a(Lcom/google/android/gms/analytics/at;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/at;->a(ZZ)V

    return-void
.end method
