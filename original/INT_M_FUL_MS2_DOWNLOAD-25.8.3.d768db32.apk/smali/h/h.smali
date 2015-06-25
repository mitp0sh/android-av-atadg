.class Lh/h;
.super Ljava/lang/Object;

# interfaces
.implements Lh/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lh/b;


# direct methods
.method constructor <init>(Lh/b;)V
    .locals 0

    iput-object p1, p0, Lh/h;->a:Lh/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lh/h;->a:Lh/b;

    invoke-static {v0, p1}, Lh/b;->a(Lh/b;Lh/a;)Lh/a;

    iget-object v0, p0, Lh/h;->a:Lh/b;

    invoke-static {v0}, Lh/b;->a(Lh/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/c;

    iget-object v2, p0, Lh/h;->a:Lh/b;

    invoke-static {v2}, Lh/b;->b(Lh/b;)Lh/a;

    move-result-object v2

    invoke-interface {v0, v2}, Lh/c;->a(Lh/a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh/h;->a:Lh/b;

    invoke-static {v0}, Lh/b;->a(Lh/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lh/h;->a:Lh/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh/b;->a(Lh/b;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
