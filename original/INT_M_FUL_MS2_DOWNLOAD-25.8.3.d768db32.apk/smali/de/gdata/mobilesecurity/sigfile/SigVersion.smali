.class public Lde/gdata/mobilesecurity/sigfile/SigVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/util/Date;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Date;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion;->a:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion;->c:Ljava/util/ArrayList;

    .line 42
    iput p1, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion;->a:I

    .line 43
    iput-object p2, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion;->b:Ljava/util/Date;

    .line 44
    return-void
.end method


# virtual methods
.method public addFile(Ljava/lang/String;IJ)V
    .locals 7

    .prologue
    .line 47
    iget-object v6, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion;->c:Ljava/util/ArrayList;

    new-instance v0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;-><init>(Lde/gdata/mobilesecurity/sigfile/SigVersion;Ljava/lang/String;IJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public getCompleteFileList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;

    .line 61
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    return-object v1
.end method

.method public getSigDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion;->b:Ljava/util/Date;

    return-object v0
.end method

.method public getSigVersion()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion;->a:I

    return v0
.end method
