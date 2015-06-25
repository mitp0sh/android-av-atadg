.class final Lde/gdata/mobilesecurity/activities/callfilter/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;)I
    .locals 4

    .prologue
    .line 427
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 428
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    .line 429
    :cond_0
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 430
    const/4 v0, -0x1

    goto :goto_0

    .line 432
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 424
    check-cast p1, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;

    check-cast p2, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/callfilter/f;->a(Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;)I

    move-result v0

    return v0
.end method
