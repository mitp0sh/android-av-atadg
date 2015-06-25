.class Lcom/google/android/gms/appstate/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/appstate/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appstate/g;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appstate/h;->b:Lcom/google/android/gms/appstate/g;

    iput-object p2, p0, Lcom/google/android/gms/appstate/h;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateKey()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/h;->b:Lcom/google/android/gms/appstate/g;

    iget v0, v0, Lcom/google/android/gms/appstate/g;->a:I

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/h;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
