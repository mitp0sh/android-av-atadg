.class Lcom/google/android/gms/drive/internal/bz;
.super Lcom/google/android/gms/drive/internal/c;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/bz;->a:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/internal/OnContentsResponse;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/bz;->a:Lcom/google/android/gms/common/api/BaseImplementation$b;

    new-instance v1, Lcom/google/android/gms/drive/internal/bs;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->Kw:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/drive/internal/s;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnContentsResponse;->iL()Lcom/google/android/gms/drive/Contents;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/s;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/bs;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public n(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/bz;->a:Lcom/google/android/gms/common/api/BaseImplementation$b;

    new-instance v1, Lcom/google/android/gms/drive/internal/bs;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/bs;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->b(Ljava/lang/Object;)V

    return-void
.end method
