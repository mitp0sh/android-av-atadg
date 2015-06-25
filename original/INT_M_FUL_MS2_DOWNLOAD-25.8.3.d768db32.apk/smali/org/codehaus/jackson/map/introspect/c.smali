.class final Lorg/codehaus/jackson/map/introspect/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lorg/codehaus/jackson/map/introspect/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/c;Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    .line 563
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    .line 565
    if-nez p3, :cond_0

    .line 566
    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    .line 570
    :goto_0
    iput-boolean p4, p0, Lorg/codehaus/jackson/map/introspect/c;->d:Z

    .line 571
    iput-boolean p5, p0, Lorg/codehaus/jackson/map/introspect/c;->e:Z

    .line 572
    return-void

    .line 568
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p3, v0

    :cond_1
    iput-object p3, p0, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lorg/codehaus/jackson/map/introspect/c;Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;
    .locals 1

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/introspect/c;->b(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    return-object v0
.end method

.method private b(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/c;->a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    .line 618
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/introspect/c;->b(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/c;->a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/map/introspect/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 591
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/introspect/c;->e:Z

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 600
    :goto_0
    return-object v0

    .line 592
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/c;->a()Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/c;->a()Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    if-eq v0, v1, :cond_2

    .line 597
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/c;->a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 600
    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 579
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/c;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/codehaus/jackson/map/introspect/c;->d:Z

    iget-boolean v5, p0, Lorg/codehaus/jackson/map/introspect/c;->e:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/c;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/c;Ljava/lang/String;ZZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    if-ne p1, v0, :cond_0

    .line 586
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/codehaus/jackson/map/introspect/c;->d:Z

    iget-boolean v5, p0, Lorg/codehaus/jackson/map/introspect/c;->e:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/c;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/c;Ljava/lang/String;ZZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public b()Lorg/codehaus/jackson/map/introspect/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 606
    :goto_0
    iget-boolean v1, p0, Lorg/codehaus/jackson/map/introspect/c;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/c;->a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    :cond_0
    return-object v0

    .line 605
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/c;->b()Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Lorg/codehaus/jackson/map/introspect/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 623
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    if-nez v0, :cond_1

    move-object v0, p0

    .line 641
    :cond_0
    :goto_0
    return-object v0

    .line 626
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/c;->c()Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 628
    iget-object v1, v0, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 629
    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/c;->a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    goto :goto_0

    .line 632
    :cond_2
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/c;->a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    goto :goto_0

    .line 634
    :cond_3
    iget-object v1, v0, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 638
    iget-boolean v1, p0, Lorg/codehaus/jackson/map/introspect/c;->d:Z

    iget-boolean v2, v0, Lorg/codehaus/jackson/map/introspect/c;->d:Z

    if-ne v1, v2, :cond_4

    .line 639
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/c;->a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    goto :goto_0

    .line 641
    :cond_4
    iget-boolean v1, p0, Lorg/codehaus/jackson/map/introspect/c;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/c;->a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codehaus/jackson/map/introspect/c;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v1, :cond_0

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    :cond_0
    return-object v0
.end method
