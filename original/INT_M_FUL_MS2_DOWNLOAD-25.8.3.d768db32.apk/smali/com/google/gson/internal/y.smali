.class final Lcom/google/gson/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/gson/internal/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/gson/internal/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/gson/internal/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lcom/google/gson/internal/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/gson/internal/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final g:I

.field h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field i:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/y;->f:Ljava/lang/Object;

    .line 481
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/y;->g:I

    .line 482
    iput-object p0, p0, Lcom/google/gson/internal/y;->e:Lcom/google/gson/internal/y;

    iput-object p0, p0, Lcom/google/gson/internal/y;->d:Lcom/google/gson/internal/y;

    .line 483
    return-void
.end method

.method constructor <init>(Lcom/google/gson/internal/y;Ljava/lang/Object;ILcom/google/gson/internal/y;Lcom/google/gson/internal/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;TK;I",
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;",
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lcom/google/gson/internal/y;->a:Lcom/google/gson/internal/y;

    .line 488
    iput-object p2, p0, Lcom/google/gson/internal/y;->f:Ljava/lang/Object;

    .line 489
    iput p3, p0, Lcom/google/gson/internal/y;->g:I

    .line 490
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/y;->i:I

    .line 491
    iput-object p4, p0, Lcom/google/gson/internal/y;->d:Lcom/google/gson/internal/y;

    .line 492
    iput-object p5, p0, Lcom/google/gson/internal/y;->e:Lcom/google/gson/internal/y;

    .line 493
    iput-object p0, p5, Lcom/google/gson/internal/y;->d:Lcom/google/gson/internal/y;

    .line 494
    iput-object p0, p4, Lcom/google/gson/internal/y;->e:Lcom/google/gson/internal/y;

    .line 495
    return-void
.end method


# virtual methods
.method public a()Lcom/google/gson/internal/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 534
    .line 535
    iget-object v0, p0, Lcom/google/gson/internal/y;->b:Lcom/google/gson/internal/y;

    .line 536
    :goto_0
    if-eqz v0, :cond_0

    .line 538
    iget-object v1, v0, Lcom/google/gson/internal/y;->b:Lcom/google/gson/internal/y;

    move-object p0, v0

    move-object v0, v1

    goto :goto_0

    .line 540
    :cond_0
    return-object p0
.end method

.method public b()Lcom/google/gson/internal/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 547
    .line 548
    iget-object v0, p0, Lcom/google/gson/internal/y;->c:Lcom/google/gson/internal/y;

    .line 549
    :goto_0
    if-eqz v0, :cond_0

    .line 551
    iget-object v1, v0, Lcom/google/gson/internal/y;->c:Lcom/google/gson/internal/y;

    move-object p0, v0

    move-object v0, v1

    goto :goto_0

    .line 553
    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 513
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 514
    check-cast p1, Ljava/util/Map$Entry;

    .line 515
    iget-object v1, p0, Lcom/google/gson/internal/y;->f:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/gson/internal/y;->h:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 516
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    const/4 v0, 0x1

    .line 518
    :cond_0
    return v0

    .line 515
    :cond_1
    iget-object v1, p0, Lcom/google/gson/internal/y;->f:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 516
    :cond_2
    iget-object v1, p0, Lcom/google/gson/internal/y;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/gson/internal/y;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/gson/internal/y;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 522
    iget-object v0, p0, Lcom/google/gson/internal/y;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/gson/internal/y;->h:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 523
    :goto_1
    xor-int/2addr v0, v1

    return v0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/y;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/gson/internal/y;->h:Ljava/lang/Object;

    .line 523
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/gson/internal/y;->h:Ljava/lang/Object;

    .line 507
    iput-object p1, p0, Lcom/google/gson/internal/y;->h:Ljava/lang/Object;

    .line 508
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gson/internal/y;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/internal/y;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
