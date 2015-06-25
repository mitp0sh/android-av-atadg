.class public Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GUID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;->a:Ljava/lang/String;

    .line 32
    return-void
.end method
