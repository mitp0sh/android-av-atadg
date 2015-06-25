.class public Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _date:Ljava/util/Date;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field private _fileName:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field private _virusName:Ljava/lang/String;
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
.method public getDate()Ljava/util/Date;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "date"
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;->_date:Ljava/util/Date;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "fileName"
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;->_fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getVirusName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "virusName"
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;->_virusName:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "date"
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;->_date:Ljava/util/Date;

    .line 68
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "fileName"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;->_fileName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setVirusName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "virusName"
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;->_virusName:Ljava/lang/String;

    .line 52
    return-void
.end method
