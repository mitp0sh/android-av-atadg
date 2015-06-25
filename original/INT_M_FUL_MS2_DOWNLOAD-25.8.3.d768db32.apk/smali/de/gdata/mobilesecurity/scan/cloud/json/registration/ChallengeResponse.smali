.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;
.super Lde/gdata/mobilesecurity/scan/cloud/json/CloudResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/gdata/mobilesecurity/scan/cloud/json/CloudResponse",
        "<",
        "Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;",
        "Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse$Answer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudResponse;-><init>()V

    .line 21
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 48
    :try_start_0
    const-class v1, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getCert()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse$Answer;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse$Answer;->getCert()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isValidResponse(Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;)Z
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse$Answer;

    .line 39
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;->getProtoInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;->getEpInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    move-result-object v2

    .line 41
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;->getMsgId()I

    move-result v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;->getProtoInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;->getMsgId()I

    move-result v1

    if-ne v0, v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;->getEpInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
