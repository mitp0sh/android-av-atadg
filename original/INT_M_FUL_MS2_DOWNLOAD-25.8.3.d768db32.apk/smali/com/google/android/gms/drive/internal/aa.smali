.class public Lcom/google/android/gms/drive/internal/aa;
.super Lcom/google/android/gms/drive/internal/ag$a;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/drive/events/c;

.field private final c:Lcom/google/android/gms/drive/internal/az;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;ILcom/google/android/gms/drive/events/c;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/ag$a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/aa;->d:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/drive/internal/aa;->a:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/aa;->b:Lcom/google/android/gms/drive/events/c;

    new-instance v0, Lcom/google/android/gms/drive/internal/az;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/drive/internal/az;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/google/android/gms/drive/internal/q;)V

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/aa;->c:Lcom/google/android/gms/drive/internal/az;

    return-void
.end method


# virtual methods
.method public bw(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bx(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/android/gms/drive/internal/OnEventResponse;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->iQ()Lcom/google/android/gms/drive/events/DriveEvent;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/drive/internal/aa;->a:I

    invoke-interface {v1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->K(Z)V

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa;->d:Ljava/util/List;

    invoke-interface {v1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->K(Z)V

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa;->c:Lcom/google/android/gms/drive/internal/az;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/aa;->b:Lcom/google/android/gms/drive/events/c;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/drive/internal/az;->a(Lcom/google/android/gms/drive/events/c;Lcom/google/android/gms/drive/events/DriveEvent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
