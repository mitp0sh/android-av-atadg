.class public Lde/gdata/webportal/devicemanager/dto/report/json/FileScanReportParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;",
            ">;"
        }
    .end annotation

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
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "items"
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanReportParam;->_items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "items"
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanReportParam;->_items:Ljava/util/List;

    .line 32
    return-void
.end method
