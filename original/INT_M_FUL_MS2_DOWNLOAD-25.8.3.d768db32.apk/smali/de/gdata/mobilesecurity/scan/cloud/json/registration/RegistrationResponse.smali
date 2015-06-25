.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;
.super Lde/gdata/mobilesecurity/scan/cloud/json/CloudResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/gdata/mobilesecurity/scan/cloud/json/CloudResponse",
        "<",
        "Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;",
        "Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$Anwser;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHALLENGE_TIMELOCK:I = 0x1

.field public static final NO_CHALLENGE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudResponse;-><init>()V

    .line 56
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 84
    :try_start_0
    const-class v1, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getChallengeParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$Anwser;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$Anwser;->getChallengeParam()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChallengeType()I
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$Anwser;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$Anwser;->getChallengeType()I

    move-result v0

    return v0
.end method

.method public getTimeLockParams()Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;
    .locals 2

    .prologue
    .line 76
    new-instance v1, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$Anwser;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$Anwser;->getChallengeParam()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public isValidResponse(Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;)Z
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getEpInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getProtoInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;

    move-result-object v1

    .line 94
    const-string v2, "GDMC-REG-RES"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getProto()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;->getEpInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;->getMsgId()I

    move-result v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;->getProtoInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;->getMsgId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public solveChallenge()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getChallengeType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 28
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/TimeLockSolver;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getTimeLockParams()Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/TimeLockSolver;-><init>(Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/TimeLockSolver;->solve()Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
