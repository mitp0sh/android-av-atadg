.class Lcom/google/gson/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/gson/internal/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/gson/internal/y;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 636
    iget-object v1, p0, Lcom/google/gson/internal/s;->a:Lcom/google/gson/internal/y;

    .line 637
    if-nez v1, :cond_0

    .line 648
    :goto_0
    return-object v0

    .line 641
    :cond_0
    iget-object v2, v1, Lcom/google/gson/internal/y;->a:Lcom/google/gson/internal/y;

    .line 642
    iput-object v0, v1, Lcom/google/gson/internal/y;->a:Lcom/google/gson/internal/y;

    .line 643
    iget-object v0, v1, Lcom/google/gson/internal/y;->c:Lcom/google/gson/internal/y;

    :goto_1
    if-eqz v0, :cond_1

    .line 644
    iput-object v2, v0, Lcom/google/gson/internal/y;->a:Lcom/google/gson/internal/y;

    .line 643
    iget-object v2, v0, Lcom/google/gson/internal/y;->b:Lcom/google/gson/internal/y;

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_1

    .line 647
    :cond_1
    iput-object v2, p0, Lcom/google/gson/internal/s;->a:Lcom/google/gson/internal/y;

    move-object v0, v1

    .line 648
    goto :goto_0
.end method

.method a(Lcom/google/gson/internal/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/y",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 627
    const/4 v0, 0x0

    .line 628
    :goto_0
    if-eqz p1, :cond_0

    .line 629
    iput-object v0, p1, Lcom/google/gson/internal/y;->a:Lcom/google/gson/internal/y;

    .line 628
    iget-object v0, p1, Lcom/google/gson/internal/y;->b:Lcom/google/gson/internal/y;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    .line 632
    :cond_0
    iput-object v0, p0, Lcom/google/gson/internal/s;->a:Lcom/google/gson/internal/y;

    .line 633
    return-void
.end method
