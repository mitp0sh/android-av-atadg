.class public abstract Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;
.super Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Protocol:",
        "Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;",
        "RequestType:",
        "Ljava/lang/Object;",
        ">",
        "Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol",
        "<TProtocol;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "REQUESTS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getRequest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestType;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract setDefaults()Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;
.end method

.method public setRequest(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;)V"
        }
    .end annotation

    .prologue
    .line 19
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;->a:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
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

    .line 34
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;->setDefaults()Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected withRequest(Ljava/lang/Object;)Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;)TProtocol;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;->setRequest(Ljava/lang/Object;)V

    .line 24
    return-object p0
.end method
