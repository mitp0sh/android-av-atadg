.class Lde/gdata/mobilesecurity/statistics/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/a;->a:Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 106
    if-eqz p2, :cond_0

    .line 107
    const-string v0, "report.*\\.xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
