.class final Lcom/google/android/gms/plus/internal/r;
.super Lcom/google/android/gms/internal/jl$d;

# interfaces
.implements Lcom/google/android/gms/plus/People$LoadPeopleResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/jl",
        "<",
        "Lcom/google/android/gms/plus/internal/d;",
        ">.d<",
        "Lcom/google/android/gms/common/api/BaseImplementation$b",
        "<",
        "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
        ">;>;",
        "Lcom/google/android/gms/plus/People$LoadPeopleResult;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/android/gms/plus/internal/e;

.field private final d:Lcom/google/android/gms/common/api/Status;

.field private final e:Ljava/lang/String;

.field private f:Lcom/google/android/gms/plus/model/people/PersonBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/r;->c:Lcom/google/android/gms/plus/internal/e;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/jl$d;-><init>(Lcom/google/android/gms/internal/jl;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/r;->d:Lcom/google/android/gms/common/api/Status;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/r;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/android/gms/plus/model/people/PersonBuffer;

    invoke-direct {v0, p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/r;->f:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->b(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic b(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/plus/internal/r;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/r;->f:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/r;->d:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/r;->f:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/r;->f:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    :cond_0
    return-void
.end method
