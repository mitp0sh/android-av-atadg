.class public Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/sigfile/SigVersion;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/sigfile/SigVersion;Ljava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 18
    iput-object p1, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->a:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->b:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->c:I

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->d:J

    .line 19
    iput-object p2, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->b:Ljava/lang/String;

    .line 20
    iput p3, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->c:I

    .line 21
    iput-wide p4, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->d:J

    .line 22
    return-void
.end method


# virtual methods
.method public getHash()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->d:J

    return-wide v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->c:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->b:Ljava/lang/String;

    return-object v0
.end method
