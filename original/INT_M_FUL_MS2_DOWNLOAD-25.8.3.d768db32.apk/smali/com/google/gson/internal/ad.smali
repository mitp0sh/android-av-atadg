.class Lcom/google/gson/internal/ad;
.super Lcom/google/gson/internal/ae;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedTreeMap",
        "<TK;TV;>.com/google/gson/internal/ae<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/ac;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/ac;)V
    .locals 2

    .prologue
    .line 598
    iput-object p1, p0, Lcom/google/gson/internal/ad;->a:Lcom/google/gson/internal/ac;

    iget-object v0, p1, Lcom/google/gson/internal/ac;->a:Lcom/google/gson/internal/LinkedTreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/ae;-><init>(Lcom/google/gson/internal/LinkedTreeMap;Lcom/google/gson/internal/z;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/google/gson/internal/ad;->b()Lcom/google/gson/internal/af;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/internal/af;->f:Ljava/lang/Object;

    return-object v0
.end method
