.class public Lde/gdata/mobilesecurity/mms/json/RegisterPostRequest;
.super Lde/gdata/mobilesecurity/mms/json/base/register/PostRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/json/base/register/PostRequest;-><init>()V

    .line 12
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/util/Trial;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/RegisterPostRequest;->setOldMachineName(Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/Trial;->getMMSId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/RegisterPostRequest;->setMachineName(Ljava/lang/String;)V

    .line 14
    return-void
.end method
