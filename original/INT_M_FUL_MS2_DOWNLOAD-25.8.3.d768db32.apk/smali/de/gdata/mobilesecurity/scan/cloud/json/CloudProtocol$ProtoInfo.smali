.class public Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MSGID"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "VERSION"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;->a:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;->b:I

    return v0
.end method

.method public setMsgId(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;->a:I

    .line 48
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$ProtoInfo;->b:I

    .line 56
    return-void
.end method
