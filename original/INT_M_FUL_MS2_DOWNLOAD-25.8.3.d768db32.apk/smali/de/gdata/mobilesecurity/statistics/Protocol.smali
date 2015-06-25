.class public Lde/gdata/mobilesecurity/statistics/Protocol;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROTOCOL:Ljava/lang/String; = "1"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lde/gdata/mobilesecurity/statistics/Detection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->a:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->b:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->c:Ljava/lang/String;

    .line 24
    iput v3, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->d:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->e:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->f:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->g:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->h:Ljava/lang/String;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->i:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->j:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->k:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->l:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->m:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->n:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->o:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->p:Ljava/util/Vector;

    .line 43
    new-instance v4, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v4, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 46
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersionName()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/MyUtil;->isAntiVirusFree(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "F_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "MSAPGM_"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    :goto_0
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->getGlobalIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x4341c37937e08000L    # 1.0E16

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    :cond_0
    invoke-virtual {v4, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setGlobalIdentifier(Ljava/lang/String;)V

    .line 58
    const-string v4, "2"

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/statistics/Protocol;->setProtocolVersion(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/statistics/Protocol;->setProductVersion(Ljava/lang/String;)V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Lde/gdata/mobilesecurity/sigfile/SignatureDb;

    invoke-direct {v4, p1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->getSignatureVersion(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/statistics/Protocol;->setSignaturesVersion(Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/statistics/Protocol;->setDebugMode(I)V

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/statistics/Protocol;->setLocale(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/statistics/Protocol;->setGlobalIdentifier(Ljava/lang/String;)V

    .line 64
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/statistics/Protocol;->setOsName(Ljava/lang/String;)V

    .line 65
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/statistics/Protocol;->setOsVersion(Ljava/lang/String;)V

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/statistics/Protocol;->setOsSdk(I)V

    .line 67
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/statistics/Protocol;->setSimOperator(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/Protocol;->setSimOperatorCountryCode(Ljava/lang/String;)V

    .line 69
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/Protocol;->setDeviceProduct(Ljava/lang/String;)V

    .line 70
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/Protocol;->setDeviceModel(Ljava/lang/String;)V

    .line 71
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/Protocol;->setDeviceInfo(Ljava/lang/String;)V

    .line 72
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/statistics/Protocol;->setDeviceVendor(Ljava/lang/String;)V

    .line 73
    return-void

    .line 51
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "M_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "MSAPGM_"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 61
    goto/16 :goto_1
.end method


# virtual methods
.method public addDetection(Lde/gdata/mobilesecurity/statistics/Detection;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method public clearDetections()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 326
    return-void
.end method

.method public getDebugMode()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->d:I

    return v0
.end method

.method public getDetections()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lde/gdata/mobilesecurity/statistics/Detection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->p:Ljava/util/Vector;

    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getOsSdk()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->i:I

    return v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSignaturesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getXml()Ljava/lang/String;
    .locals 8

    .prologue
    .line 80
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><MM><head><gversion><protocol>#protocol#</protocol><product>#product#</product><sig>#signaturesVersion#</sig><debug>#debug#</debug></gversion><dev><locale>#locale#</locale><guid>#guid#</guid><os><codename>#codename#</codename><release>#release#</release><sdk>#sdk#</sdk></os><htelco><op>#simOp#</op><country>#simOpCountry#</country></htelco><hw><product>#deviceProduct#</product><model>#deviceModel#</model><device>#device#</device><vendor>#deviceVendor#</vendor></hw></dev></head><body><detections>#detections#</detections></body></MM>"

    .line 81
    const-string v3, "<detect><enginea>#enginea#</enginea><engineb>#engineb#</engineb><enginec>#enginec#</enginec><time>#time#</time><hash><sigapp>#sigapp#</sigapp><sigmd5>#sigmd5#</sigmd5><md5>#md5#</md5></hash><ctelco><op>#networkOp#</op><country>#networkOpCountry#</country></ctelco></detect>"

    .line 82
    const-string v0, "#detection#"

    .line 84
    iget-object v1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->p:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/statistics/Detection;

    .line 85
    const-string v5, "#enginea#"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/Detection;->getMalwareNameA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#enginec#"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/Detection;->getMalwareNameC()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#engineb#"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/Detection;->getMalwareNameB()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#time#"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/Detection;->getTimestamp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#sigapp#"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/Detection;->getSigApp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#sigmd5#"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/Detection;->getSigMd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#md5#"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/Detection;->getFileMd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#networkOp#"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/Detection;->getProviderCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#networkOpCountry#"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/Detection;->getProviderCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#market#"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/Detection;->getMarket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v5, "#detection#"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "#detection#"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 94
    goto/16 :goto_0

    .line 95
    :cond_0
    const-string v0, "#detection#"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "#protocol#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getProtocolVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#product#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#signaturesVersion#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getSignaturesVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#debug#"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#locale#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#guid#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getGlobalIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#codename#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getOsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#release#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#sdk#"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getOsSdk()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#simOp#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#simOpCountry#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getSimOperatorCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#deviceProduct#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getDeviceProduct()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#deviceModel#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#device#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getDeviceInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#deviceVendor#"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/statistics/Protocol;->getDeviceVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#detections#"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 108
    return-object v0
.end method

.method public setDebugMode(I)V
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->d:I

    .line 165
    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->l:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->k:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setDeviceProduct(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->j:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setDeviceVendor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->m:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setGlobalIdentifier(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->f:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->e:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->g:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setOsSdk(I)V
    .locals 0

    .prologue
    .line 234
    iput p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->i:I

    .line 235
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->h:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->b:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->a:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setSignaturesVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->c:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setSimOperator(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->n:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setSimOperatorCountryCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 318
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/Protocol;->o:Ljava/lang/String;

    .line 319
    return-void
.end method
