.class Lcom/google/android/gms/cast/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/cast/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/o;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/p;->b:Lcom/google/android/gms/cast/o;

    iput-object p2, p0, Lcom/google/android/gms/cast/p;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationStatus()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/p;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getWasLaunched()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method