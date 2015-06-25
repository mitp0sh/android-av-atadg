.class Lde/gdata/mobilesecurity/privacy/ao;
.super Landroid/util/Pair;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;",
        "Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/am;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/am;Landroid/util/Pair;Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 931
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ao;->a:Lde/gdata/mobilesecurity/privacy/am;

    .line 932
    invoke-direct {p0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 933
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 937
    instance-of v0, p1, Lde/gdata/mobilesecurity/privacy/ao;

    if-eqz v0, :cond_0

    .line 938
    check-cast p1, Lde/gdata/mobilesecurity/privacy/ao;

    iget-object v0, p1, Lde/gdata/mobilesecurity/privacy/ao;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ao;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 940
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
