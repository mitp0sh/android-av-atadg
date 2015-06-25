.class Lde/gdata/mobilesecurity/statistics/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/statistics/b;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/statistics/b;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/c;->a:Lde/gdata/mobilesecurity/statistics/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 227
    const-string v0, "report.*\\.xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
