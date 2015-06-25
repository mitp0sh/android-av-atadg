.class public Lde/gdata/mobilesecurity/mms/json/AuthPostRequest;
.super Lde/gdata/mobilesecurity/mms/json/base/auth/PostRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/json/base/auth/PostRequest;-><init>()V

    .line 10
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/Trial;->getMMSId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/AuthPostRequest;->setMachineName(Ljava/lang/String;)V

    .line 11
    return-void
.end method
