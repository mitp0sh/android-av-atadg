.class Lcom/google/gson/internal/w;
.super Lcom/google/gson/internal/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedHashTreeMap",
        "<TK;TV;>.com/google/gson/internal/x<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/v;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/v;)V
    .locals 2

    .prologue
    .line 832
    iput-object p1, p0, Lcom/google/gson/internal/w;->a:Lcom/google/gson/internal/v;

    iget-object v0, p1, Lcom/google/gson/internal/v;->a:Lcom/google/gson/internal/LinkedHashTreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/x;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap;Lcom/google/gson/internal/q;)V

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
    .line 834
    invoke-virtual {p0}, Lcom/google/gson/internal/w;->b()Lcom/google/gson/internal/y;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/internal/y;->f:Ljava/lang/Object;

    return-object v0
.end method
