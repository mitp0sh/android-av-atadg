.class public Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _date:Ljava/util/Date;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field private _messageData:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field private _messageId:Ljava/lang/Integer;
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
    .line 43
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;->_date:Ljava/util/Date;

    return-object v0
.end method

.method public getMessageData()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "messageData"
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;->_messageData:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "messageId"
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;->_messageId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "date"
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;->_date:Ljava/util/Date;

    .line 52
    return-void
.end method

.method public setMessageData(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "messageData"
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;->_messageData:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setMessageId(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "messageId"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;->_messageId:Ljava/lang/Integer;

    .line 36
    return-void
.end method
