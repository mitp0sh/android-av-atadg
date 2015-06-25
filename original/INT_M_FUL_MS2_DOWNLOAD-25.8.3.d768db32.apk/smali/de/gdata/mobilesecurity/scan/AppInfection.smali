.class public Lde/gdata/mobilesecurity/scan/AppInfection;
.super Lde/gdata/mobilesecurity/scan/MalwareInfection;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/scan/MalwareInfection;-><init>(Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/AppInfection;->a:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/AppInfection;->b:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lde/gdata/mobilesecurity/scan/AppInfection;->a:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lde/gdata/mobilesecurity/scan/AppInfection;->b:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    instance-of v1, p1, Lde/gdata/mobilesecurity/scan/AppInfection;

    if-eqz v1, :cond_0

    .line 36
    check-cast p1, Lde/gdata/mobilesecurity/scan/AppInfection;

    .line 37
    iget-object v1, p1, Lde/gdata/mobilesecurity/scan/AppInfection;->a:Ljava/lang/String;

    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/AppInfection;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lde/gdata/mobilesecurity/scan/AppInfection;->b:Ljava/lang/String;

    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/AppInfection;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 40
    :cond_0
    return v0
.end method

.method public getInfectedObjectDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/AppInfection;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/AppInfection;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/AppInfection;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/AppInfection;->a:Ljava/lang/String;

    return-object v0
.end method
