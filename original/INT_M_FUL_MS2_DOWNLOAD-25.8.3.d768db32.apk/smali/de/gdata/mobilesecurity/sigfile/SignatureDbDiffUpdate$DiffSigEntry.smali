.class public Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;

.field public data:[B

.field public hash:[B


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;)V
    .locals 1

    .prologue
    .line 27
    iput-object p1, p0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->b:Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->hash:[B

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->a:I

    return-void
.end method
