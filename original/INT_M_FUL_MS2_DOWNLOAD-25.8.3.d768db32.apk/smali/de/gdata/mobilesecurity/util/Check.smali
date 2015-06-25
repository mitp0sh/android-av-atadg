.class public Lde/gdata/mobilesecurity/util/Check;
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
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/Check;->a:Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public static whether(Ljava/lang/Object;)Lde/gdata/mobilesecurity/util/Check;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lde/gdata/mobilesecurity/util/Check",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lde/gdata/mobilesecurity/util/Check;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/Check;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public varargs isIn([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 15
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 16
    iget-object v4, p0, Lde/gdata/mobilesecurity/util/Check;->a:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 21
    :cond_0
    return v0

    .line 15
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
