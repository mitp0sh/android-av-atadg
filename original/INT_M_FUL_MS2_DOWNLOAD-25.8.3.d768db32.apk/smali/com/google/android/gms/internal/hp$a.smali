.class public final Lcom/google/android/gms/internal/hp$a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/hj;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/BitSet;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hp$a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/hp$a;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hp$a;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public G(Z)Lcom/google/android/gms/internal/hp$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/hp$a;->c:Z

    return-object p0
.end method

.method public H(Z)Lcom/google/android/gms/internal/hp$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/hp$a;->e:Z

    return-object p0
.end method

.method public Q(I)Lcom/google/android/gms/internal/hp$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hp$a;->h:Ljava/util/BitSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hp$a;->h:Ljava/util/BitSet;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hp$a;->h:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public at(Ljava/lang/String;)Lcom/google/android/gms/internal/hp$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hp$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public au(Ljava/lang/String;)Lcom/google/android/gms/internal/hp$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hp$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public fG()Lcom/google/android/gms/internal/hp;
    .locals 10

    const/4 v1, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hp$a;->h:Ljava/util/BitSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hp$a;->h:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    new-array v8, v0, [I

    iget-object v0, p0, Lcom/google/android/gms/internal/hp$a;->h:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    aput v0, v8, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/hp$a;->h:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/hp;

    iget-object v1, p0, Lcom/google/android/gms/internal/hp$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/hp$a;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/hp$a;->c:Z

    iget v4, p0, Lcom/google/android/gms/internal/hp$a;->d:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/hp$a;->e:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/hp$a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/hp$a;->g:Ljava/util/List;

    iget-object v9, p0, Lcom/google/android/gms/internal/hp$a;->g:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/android/gms/internal/hj;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/gms/internal/hj;

    iget-object v9, p0, Lcom/google/android/gms/internal/hp$a;->i:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/hp;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/hj;[ILjava/lang/String;)V

    return-object v0
.end method
