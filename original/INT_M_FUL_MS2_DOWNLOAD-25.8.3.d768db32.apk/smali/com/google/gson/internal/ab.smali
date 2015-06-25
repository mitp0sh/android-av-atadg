.class Lcom/google/gson/internal/ab;
.super Lcom/google/gson/internal/ae;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedTreeMap",
        "<TK;TV;>.com/google/gson/internal/ae<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/aa;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/aa;)V
    .locals 2

    .prologue
    .line 563
    iput-object p1, p0, Lcom/google/gson/internal/ab;->a:Lcom/google/gson/internal/aa;

    iget-object v0, p1, Lcom/google/gson/internal/aa;->a:Lcom/google/gson/internal/LinkedTreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/ae;-><init>(Lcom/google/gson/internal/LinkedTreeMap;Lcom/google/gson/internal/z;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/google/gson/internal/ab;->b()Lcom/google/gson/internal/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/google/gson/internal/ab;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
