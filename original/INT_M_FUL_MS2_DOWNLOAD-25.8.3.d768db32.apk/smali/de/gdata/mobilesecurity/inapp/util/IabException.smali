.class public Lde/gdata/mobilesecurity/inapp/util/IabException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/inapp/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    invoke-direct {v0, p1, p2}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(Lde/gdata/mobilesecurity/inapp/util/IabResult;)V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    invoke-direct {v0, p1, p2}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(Lde/gdata/mobilesecurity/inapp/util/IabResult;Ljava/lang/Exception;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/inapp/util/IabResult;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(Lde/gdata/mobilesecurity/inapp/util/IabResult;Ljava/lang/Exception;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/inapp/util/IabResult;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/inapp/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/util/IabException;->a:Lde/gdata/mobilesecurity/inapp/util/IabResult;

    .line 36
    return-void
.end method


# virtual methods
.method public getResult()Lde/gdata/mobilesecurity/inapp/util/IabResult;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabException;->a:Lde/gdata/mobilesecurity/inapp/util/IabResult;

    return-object v0
.end method
