.class public Lde/gdata/mobilesecurity/util/Pair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/Pair;->a:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Lde/gdata/mobilesecurity/util/Pair;->b:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 22
    instance-of v1, p1, Lde/gdata/mobilesecurity/util/Pair;

    if-eqz v1, :cond_2

    .line 23
    check-cast p1, Lde/gdata/mobilesecurity/util/Pair;

    .line 24
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Pair;->a:Ljava/lang/Object;

    iget-object v2, p1, Lde/gdata/mobilesecurity/util/Pair;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Pair;->a:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lde/gdata/mobilesecurity/util/Pair;->a:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Pair;->a:Ljava/lang/Object;

    iget-object v2, p1, Lde/gdata/mobilesecurity/util/Pair;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Pair;->b:Ljava/lang/Object;

    iget-object v2, p1, Lde/gdata/mobilesecurity/util/Pair;->b:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Pair;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lde/gdata/mobilesecurity/util/Pair;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Pair;->b:Ljava/lang/Object;

    iget-object v2, p1, Lde/gdata/mobilesecurity/util/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 29
    :cond_2
    return v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/Pair;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/Pair;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 14
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/Pair;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/util/Pair;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 15
    :goto_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/Pair;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 17
    :cond_0
    add-int v2, v0, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 14
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Pair;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
