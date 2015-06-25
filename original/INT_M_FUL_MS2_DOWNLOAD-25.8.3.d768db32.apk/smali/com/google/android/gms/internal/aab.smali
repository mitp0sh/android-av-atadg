.class Lcom/google/android/gms/internal/aab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/c$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aaa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aab;->a:Lcom/google/android/gms/internal/aaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aab;->a:Lcom/google/android/gms/internal/aaa;

    invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->eD(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aaa;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
