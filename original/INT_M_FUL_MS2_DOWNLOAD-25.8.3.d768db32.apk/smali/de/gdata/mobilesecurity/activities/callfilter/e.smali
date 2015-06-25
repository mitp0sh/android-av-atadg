.class final Lde/gdata/mobilesecurity/activities/callfilter/e;
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


# instance fields
.field private final a:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/e;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;)I
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/e;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 412
    check-cast p1, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;

    check-cast p2, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/callfilter/e;->a(Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;)I

    move-result v0

    return v0
.end method
