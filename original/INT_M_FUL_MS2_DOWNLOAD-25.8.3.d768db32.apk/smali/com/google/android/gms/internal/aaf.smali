.class Lcom/google/android/gms/internal/aaf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/c$b;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aaf;->a:Lcom/google/android/gms/internal/aae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/app/PendingIntent;)V
    .locals 2

    const-string v0, "GeofencingImpl"

    const-string v1, "PendingIntent callback shouldn\'t have been called"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(I[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aaf;->a:Lcom/google/android/gms/internal/aae;

    invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->eD(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aae;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
