.class public final Lcom/google/android/gms/internal/qm;
.super Lcom/google/android/gms/internal/qq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/qq",
        "<",
        "Lcom/google/android/gms/internal/qm;",
        ">;"
    }
.end annotation


# instance fields
.field public ayq:[Lcom/google/android/gms/internal/qm$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qq;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/qm;->rt()Lcom/google/android/gms/internal/qm;

    return-void
.end method

.method public static n([B)Lcom/google/android/gms/internal/qm;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/qm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qm;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/qw;->a(Lcom/google/android/gms/internal/qw;[B)Lcom/google/android/gms/internal/qw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qm;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/qp;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/qp;->a(ILcom/google/android/gms/internal/qw;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/qq;->a(Lcom/google/android/gms/internal/qp;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qw;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qm;->t(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qm;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/qq;->c()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/qp;->c(ILcom/google/android/gms/internal/qw;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/qm;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/qm;

    iget-object v1, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    iget-object v2, p1, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/qu;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qm;->a(Lcom/google/android/gms/internal/qq;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/qu;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/qm;->rQ()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public rt()Lcom/google/android/gms/internal/qm;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/qm$a;->ru()[Lcom/google/android/gms/internal/qm$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/qm;->ayW:Lcom/google/android/gms/internal/acg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/qm;->azh:I

    return-object p0
.end method

.method public t(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qm;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->rz()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/qm;->a(Lcom/google/android/gms/internal/qo;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qz;->b(Lcom/google/android/gms/internal/qo;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/qm$a;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/qm$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/qm$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/qo;->a(Lcom/google/android/gms/internal/qw;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->rz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/qm$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/qm$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/qo;->a(Lcom/google/android/gms/internal/qw;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/qm;->ayq:[Lcom/google/android/gms/internal/qm$a;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
