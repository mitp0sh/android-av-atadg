.class public Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _engineDate:Ljava/util/Date;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field private _engineType:Ljava/lang/Integer;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field private _engineVersion:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field private _programVersion:Ljava/lang/String;
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
.method public getEngineDate()Ljava/util/Date;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "engineDate"
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;->_engineDate:Ljava/util/Date;

    return-object v0
.end method

.method public getEngineType()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "engineType"
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;->_engineType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "engineVersion"
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;->_engineVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "programVersion"
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;->_programVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setEngineDate(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "engineDate"
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;->_engineDate:Ljava/util/Date;

    .line 54
    return-void
.end method

.method public setEngineType(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "engineType"
    .end annotation

    .prologue
    .line 85
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;->_engineType:Ljava/lang/Integer;

    .line 86
    return-void
.end method

.method public setEngineVersion(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "engineVersion"
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;->_engineVersion:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setProgramVersion(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "programVersion"
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;->_programVersion:Ljava/lang/String;

    .line 70
    return-void
.end method
