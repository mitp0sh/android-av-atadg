.class public Lde/gdata/webportal/devicemanager/dto/json/MdmSettingRequestDto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _type:I
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
.method public getType()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "type"
    .end annotation

    .prologue
    .line 23
    iget v0, p0, Lde/gdata/webportal/devicemanager/dto/json/MdmSettingRequestDto;->_type:I

    return v0
.end method

.method public setType(I)V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "type"
    .end annotation

    .prologue
    .line 31
    iput p1, p0, Lde/gdata/webportal/devicemanager/dto/json/MdmSettingRequestDto;->_type:I

    .line 32
    return-void
.end method
