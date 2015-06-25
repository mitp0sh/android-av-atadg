.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;
.super Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest",
        "<",
        "Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;",
        "Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest$Request;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest$Request;

    invoke-direct {v0, p2}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest$Request;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;->setRequest(Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected bridge synthetic setDefaults()Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;->setDefaults()Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;

    move-result-object v0

    return-object v0
.end method

.method protected setDefaults()Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;
    .locals 2

    .prologue
    .line 43
    const-string v0, "GDMC-REG"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;->withProto(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;->withReqType(I)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;->withTimeStamp(Ljava/util/Date;)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;

    return-object v0
.end method
