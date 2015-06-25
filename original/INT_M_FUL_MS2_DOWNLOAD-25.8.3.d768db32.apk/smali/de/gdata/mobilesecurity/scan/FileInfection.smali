.class public Lde/gdata/mobilesecurity/scan/FileInfection;
.super Lde/gdata/mobilesecurity/scan/MalwareInfection;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/scan/FileInfection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/scan/MalwareInfection;-><init>(Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/FileInfection;->a:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/FileInfection;->b:Ljava/util/ArrayList;

    .line 19
    iput-object p5, p0, Lde/gdata/mobilesecurity/scan/FileInfection;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public addChildren(Lde/gdata/mobilesecurity/scan/FileInfection;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/FileInfection;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/FileInfection;->b:Ljava/util/ArrayList;

    .line 32
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/FileInfection;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 46
    instance-of v0, p1, Lde/gdata/mobilesecurity/scan/FileInfection;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lde/gdata/mobilesecurity/scan/FileInfection;

    .line 48
    iget-object v0, p1, Lde/gdata/mobilesecurity/scan/FileInfection;->a:Ljava/lang/String;

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/FileInfection;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/scan/FileInfection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/FileInfection;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/FileInfection;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getInfectedObjectDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/FileInfection;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/FileInfection;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/FileInfection;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
