.class public Lde/gdata/mobilesecurity/activities/filter/FilterGroup$FilterComparator;
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
        "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 655
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 657
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    const/4 v0, 0x0

    .line 668
    :cond_0
    :goto_0
    return v0

    .line 660
    :cond_1
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    const/4 v0, -0x1

    goto :goto_0

    .line 663
    :cond_2
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 651
    check-cast p1, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    check-cast p2, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup$FilterComparator;->compare(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)I

    move-result v0

    return v0
.end method
