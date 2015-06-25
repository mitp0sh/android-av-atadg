.class Lcom/google/android/gms/internal/abr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/People$LoadPeopleResult;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/internal/abq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/abq;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/abr;->b:Lcom/google/android/gms/internal/abq;

    iput-object p2, p0, Lcom/google/android/gms/internal/abr;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/abr;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
