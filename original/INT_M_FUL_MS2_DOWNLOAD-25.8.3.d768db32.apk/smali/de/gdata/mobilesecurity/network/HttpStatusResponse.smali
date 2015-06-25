.class public Lde/gdata/mobilesecurity/network/HttpStatusResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IO_FAILURE:I = -0x1


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->c:Ljava/util/Map;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->b:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->c:Ljava/util/Map;

    const-string v1, "ETag"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->c:Ljava/util/Map;

    const-string v1, "ETag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    :goto_0
    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->c:Ljava/util/Map;

    const-string v1, "Etag"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->c:Ljava/util/Map;

    const-string v1, "Etag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->a:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isOk()Z
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->a:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->a:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->c:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->a:I

    .line 23
    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->b:Ljava/lang/String;

    .line 31
    return-void
.end method
