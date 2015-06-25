.class public abstract Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TIMESTAMP"
    .end annotation
.end field

.field private b:Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EPINFO"
    .end annotation
.end field

.field private c:Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PROTOINFO"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PROTO"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "REQTYPE"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->b:Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    .line 65
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->c:Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->b:Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    .line 65
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->c:Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;

    .line 14
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->b:Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;->setGuid(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->c:Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;->setVersion(I)V

    .line 16
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->c:Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;

    const/16 v1, 0xdf

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;->setMsgId(I)V

    .line 17
    return-void
.end method

.method protected static getGson()Lcom/google/gson/Gson;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/util/Date;

    new-instance v2, Lde/gdata/mobilesecurity/scan/cloud/json/DateTimeAdapter;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/scan/cloud/json/DateTimeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEpInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->b:Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    return-object v0
.end method

.method public getProto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getProtoInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->c:Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;

    return-object v0
.end method

.method public getReqType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->e:I

    return v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->a:Ljava/util/Date;

    return-object v0
.end method

.method protected setProto(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->d:Ljava/lang/String;

    .line 85
    return-void
.end method

.method protected setReqType(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->e:I

    .line 81
    return-void
.end method

.method protected setTimeStamp(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->a:Ljava/util/Date;

    .line 89
    return-void
.end method

.method protected withEpInfoGuid(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->b:Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;->setGuid(Ljava/lang/String;)V

    .line 76
    return-object p0
.end method

.method protected withProto(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->d:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method protected withReqType(I)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 92
    iput p1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->e:I

    .line 93
    return-object p0
.end method

.method protected withTimeStamp(Ljava/util/Date;)Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 102
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;->a:Ljava/util/Date;

    .line 103
    return-object p0
.end method
