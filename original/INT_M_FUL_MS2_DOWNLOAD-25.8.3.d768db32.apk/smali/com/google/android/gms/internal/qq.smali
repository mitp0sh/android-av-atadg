.class public abstract Lcom/google/android/gms/internal/qq;
.super Lcom/google/android/gms/internal/qw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/qq",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/qw;"
    }
.end annotation


# instance fields
.field protected ayW:Lcom/google/android/gms/internal/acg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/qr",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    iget v2, p1, Lcom/google/android/gms/internal/qr;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/qz;->hl(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/acg;->a(I)Lcom/google/android/gms/internal/ach;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ach;->a(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/qp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/acg;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/acg;->b(I)Lcom/google/android/gms/internal/ach;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ach;->a(Lcom/google/android/gms/internal/qp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/qo;I)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/qo;->gQ(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/qz;->hl(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/qo;->s(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/aci;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/aci;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/acg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/acg;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ach;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ach;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/acg;->a(ILcom/google/android/gms/internal/ach;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ach;->a(Lcom/google/android/gms/internal/aci;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/acg;->a(I)Lcom/google/android/gms/internal/ach;

    move-result-object v0

    goto :goto_1
.end method

.method protected final a(Lcom/google/android/gms/internal/qq;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acg;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acg;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    iget-object v1, p1, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/acg;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected c()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/acg;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/acg;->b(I)Lcom/google/android/gms/internal/ach;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ach;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method protected final rQ()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acg;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/qq;->ayW:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acg;->hashCode()I

    move-result v0

    goto :goto_0
.end method
