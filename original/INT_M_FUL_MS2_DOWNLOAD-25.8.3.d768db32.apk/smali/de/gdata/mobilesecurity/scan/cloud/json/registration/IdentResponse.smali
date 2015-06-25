.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;
.super Lde/gdata/mobilesecurity/scan/cloud/json/CloudResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/gdata/mobilesecurity/scan/cloud/json/CloudResponse",
        "<",
        "Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;",
        "Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse$Answer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudResponse;-><init>()V

    .line 10
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;
    .locals 2

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getCert()Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse$Answer$Cert;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse$Answer;

    iget-object v0, v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse$Answer;->a:Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse$Answer$Cert;

    return-object v0
.end method
