.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;
.super Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest",
        "<",
        "Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;",
        "Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest$Request;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected setDefaults()Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;
    .locals 2

    .prologue
    .line 29
    const-string v0, "GDMC-REG"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;->withProto(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;->withReqType(I)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;->withTimeStamp(Ljava/util/Date;)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;

    new-instance v1, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest$Request;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest$Request;-><init>()V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;->withRequest(Ljava/lang/Object;)Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;

    move-result-object v0

    return-object v0
.end method
