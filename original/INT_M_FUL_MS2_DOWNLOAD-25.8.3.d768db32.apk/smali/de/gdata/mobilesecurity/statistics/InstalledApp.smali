.class public Lde/gdata/mobilesecurity/statistics/InstalledApp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/InstalledApp;->a:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/InstalledApp;->b:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/InstalledApp;->c:Ljava/lang/String;

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/statistics/InstalledApp;->d:I

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/InstalledApp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/InstalledApp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTsdk()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lde/gdata/mobilesecurity/statistics/InstalledApp;->d:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/InstalledApp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/InstalledApp;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/InstalledApp;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTsdk(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lde/gdata/mobilesecurity/statistics/InstalledApp;->d:I

    .line 64
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/InstalledApp;->c:Ljava/lang/String;

    .line 50
    return-void
.end method
