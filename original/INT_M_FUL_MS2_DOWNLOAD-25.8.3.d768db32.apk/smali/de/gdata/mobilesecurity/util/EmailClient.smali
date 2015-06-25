.class public Lde/gdata/mobilesecurity/util/EmailClient;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/Update;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2, p0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 23
    invoke-virtual {v0, p1, p2, p3}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 25
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lde/gdata/mobilesecurity/util/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lde/gdata/mobilesecurity/util/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/a;->start()V

    .line 44
    return-void
.end method
