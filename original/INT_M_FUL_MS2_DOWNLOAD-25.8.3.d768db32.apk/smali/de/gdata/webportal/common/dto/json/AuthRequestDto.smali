.class public Lde/gdata/webportal/common/dto/json/AuthRequestDto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _accessKey:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field private _deviceToken:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field private _machineName:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "accessKey"
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lde/gdata/webportal/common/dto/json/AuthRequestDto;->_accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "deviceToken"
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lde/gdata/webportal/common/dto/json/AuthRequestDto;->_deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMachineName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "machineName"
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/webportal/common/dto/json/AuthRequestDto;->_machineName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "accessKey"
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lde/gdata/webportal/common/dto/json/AuthRequestDto;->_accessKey:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "deviceToken"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lde/gdata/webportal/common/dto/json/AuthRequestDto;->_deviceToken:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setMachineName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "machineName"
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lde/gdata/webportal/common/dto/json/AuthRequestDto;->_machineName:Ljava/lang/String;

    .line 68
    return-void
.end method
