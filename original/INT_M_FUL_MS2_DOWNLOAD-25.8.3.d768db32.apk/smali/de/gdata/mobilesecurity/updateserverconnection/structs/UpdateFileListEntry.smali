.class public Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->a:Ljava/lang/String;

    .line 11
    iput p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->b:I

    .line 12
    iput-object p3, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->c:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getCrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->b:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isApkFile()Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFullSignatureFile()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 32
    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->a:Ljava/lang/String;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->a:Ljava/lang/String;

    const-string v3, ".enc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 34
    :cond_1
    :goto_0
    return v0

    .line 33
    :cond_2
    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    :cond_3
    move v0, v1

    .line 34
    goto :goto_0
.end method
