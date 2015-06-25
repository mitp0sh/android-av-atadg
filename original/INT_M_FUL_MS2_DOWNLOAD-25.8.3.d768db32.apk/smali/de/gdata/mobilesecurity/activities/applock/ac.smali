.class final Lde/gdata/mobilesecurity/activities/applock/ac;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/util/Vector",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/ac;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/ac;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/ac;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method
