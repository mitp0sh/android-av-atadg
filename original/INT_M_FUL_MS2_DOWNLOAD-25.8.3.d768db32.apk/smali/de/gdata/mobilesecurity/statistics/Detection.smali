.class public Lde/gdata/mobilesecurity/statistics/Detection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->a:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->b:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->c:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->d:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->e:Z

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->f:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->g:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->h:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->i:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->j:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->k:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getFileMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMalwareNameA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMalwareNameB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMalwareNameC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMarket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSigApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSigMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->d:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/statistics/Detection;->e:Z

    return v0
.end method

.method public setDeleted(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/statistics/Detection;->e:Z

    .line 87
    return-void
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Detection;->h:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setMalwareNameA(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Detection;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setMalwareNameB(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Detection;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setMalwareNameC(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Detection;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setMarket(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Detection;->k:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setProviderCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Detection;->i:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setProviderCountryCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Detection;->j:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setSigApp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Detection;->f:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setSigMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Detection;->g:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Detection;->d:Ljava/lang/String;

    .line 73
    return-void
.end method
