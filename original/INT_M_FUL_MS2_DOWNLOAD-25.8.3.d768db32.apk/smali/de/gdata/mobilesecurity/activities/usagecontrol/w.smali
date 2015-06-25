.class final Lde/gdata/mobilesecurity/activities/usagecontrol/w;
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
        "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/w;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)I
    .locals 5

    .prologue
    .line 356
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getStartTime()J

    move-result-wide v0

    .line 357
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getStartTime()J

    move-result-wide v2

    .line 358
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 359
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    .line 360
    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 361
    const/4 v0, -0x1

    goto :goto_0

    .line 363
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 351
    check-cast p1, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    check-cast p2, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/usagecontrol/w;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)I

    move-result v0

    return v0
.end method
