.class public Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAccessKey:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "accessKey"
    .end annotation
.end field

.field mError:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "error"
    .end annotation
.end field

.field mErrorMessage:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "errorMessage"
    .end annotation
.end field

.field mStatusCode:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field mToken:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->mAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->mStatusCode:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->mError:Z

    return v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->mAccessKey:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setError(Z)V
    .locals 0

    .prologue
    .line 121
    iput-boolean p1, p0, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->mError:Z

    .line 122
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->mStatusCode:I

    .line 90
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->mToken:Ljava/lang/String;

    .line 98
    return-void
.end method
