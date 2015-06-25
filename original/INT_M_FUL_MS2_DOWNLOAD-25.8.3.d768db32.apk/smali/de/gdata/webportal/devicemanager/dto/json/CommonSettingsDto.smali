.class public final Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _clientInfo:Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field private _gcmSenderId:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field private _name:Ljava/lang/String;
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
.method public getClientInfo()Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "clientInfo"
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;->_clientInfo:Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;

    return-object v0
.end method

.method public getGcmSenderId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "gcmSenderId"
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;->_gcmSenderId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setClientInfo(Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "clientInfo"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;->_clientInfo:Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;

    .line 36
    return-void
.end method

.method public setGcmSenderId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "gcmSenderId"
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;->_gcmSenderId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;->_name:Ljava/lang/String;

    .line 68
    return-void
.end method
