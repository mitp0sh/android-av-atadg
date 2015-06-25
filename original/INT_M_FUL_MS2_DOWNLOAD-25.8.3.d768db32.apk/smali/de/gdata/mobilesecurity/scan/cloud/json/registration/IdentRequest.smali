.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;
.super Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest",
        "<",
        "Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;",
        "Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest$Request;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;Landroid/content/Context;)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 48
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;->getEpInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest$Request;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest$Request;-><init>()V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;->setRequest(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;->getEpInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;->getGuid()Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;->getCert()Ljava/util/Map;

    move-result-object v1

    .line 53
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 55
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    const-string v2, "IMEI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    const-string v1, "IMEI"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 67
    :goto_1
    const-string v1, "IMEI"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    move-wide v2, v4

    .line 65
    goto :goto_1

    .line 69
    :cond_1
    const-string v2, "IMSI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    const-string v1, "IMSI"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 80
    :goto_2
    const-string v1, "IMSI"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :catch_1
    move-exception v1

    move-wide v2, v4

    .line 78
    goto :goto_2

    .line 82
    :cond_3
    const-string v2, "GUID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    const-string v1, "GUID"

    invoke-direct {p0, v1, v6}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_4
    const-string v2, "APPVERSION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    const-string v1, "APPVERSION"

    invoke-static {p2}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 86
    :cond_5
    const-string v2, "CERTPW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 87
    const-string v1, "CERTPW"

    invoke-direct {p0, v1, v6}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 89
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown field in ChallengeResponse:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :cond_7
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest$Request;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest$Request;->getCert()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method protected setDefaults()Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;
    .locals 2

    .prologue
    .line 96
    const-string v0, "GDMC-REG"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;->withProto(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;->withReqType(I)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;->withTimeStamp(Ljava/util/Date;)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;

    return-object v0
.end method
