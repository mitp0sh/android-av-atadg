.class public Lde/gdata/mobilesecurity/mms/json/settings/ClientInfoProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/json/settings/ClientInfoProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

    .line 18
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/settings/ClientInfoProxy;->b:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public static read(Landroid/content/Context;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;
    .locals 4

    .prologue
    .line 22
    new-instance v1, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;-><init>()V

    .line 24
    new-instance v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->getSignatureFileDate(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->setEngineDate(Ljava/util/Date;)V

    .line 26
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo$EngineTypes;->G_DATA:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->setEngineType(Ljava/lang/Integer;)V

    .line 28
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSignatureVersion()Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v2, "_("

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 30
    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->setEngineVersion(Ljava/lang/String;)V

    .line 33
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->setProgramVersion(Ljava/lang/String;)V

    .line 35
    return-object v1
.end method
