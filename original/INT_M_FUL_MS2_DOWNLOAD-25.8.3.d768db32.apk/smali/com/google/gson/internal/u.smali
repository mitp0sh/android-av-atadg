.class Lcom/google/gson/internal/u;
.super Lcom/google/gson/internal/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedHashTreeMap",
        "<TK;TV;>.com/google/gson/internal/x<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/t;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/t;)V
    .locals 2

    .prologue
    .line 797
    iput-object p1, p0, Lcom/google/gson/internal/u;->a:Lcom/google/gson/internal/t;

    iget-object v0, p1, Lcom/google/gson/internal/t;->a:Lcom/google/gson/internal/LinkedHashTreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/x;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap;Lcom/google/gson/internal/q;)V

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
    .line 799
    invoke-virtual {p0}, Lcom/google/gson/internal/u;->b()Lcom/google/gson/internal/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/google/gson/internal/u;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
