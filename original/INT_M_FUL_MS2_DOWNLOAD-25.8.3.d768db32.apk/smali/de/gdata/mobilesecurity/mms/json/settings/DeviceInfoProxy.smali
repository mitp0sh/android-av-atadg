.class public Lde/gdata/mobilesecurity/mms/json/settings/DeviceInfoProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/json/settings/DeviceInfoProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;

    .line 13
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/settings/DeviceInfoProxy;->b:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public static read(Landroid/content/Context;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;-><init>()V

    .line 19
    new-instance v1, Lde/gdata/mobilesecurity/util/DeviceInfo;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getDhcpServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;->setDhcpServer(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getDNSServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;->setDnsServer(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;->setIpv4(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;->setMacAddress(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getNetMask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;->setNetMask(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getPlatformId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;->setPlatformId(Ljava/lang/Integer;)V

    .line 29
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/DeviceInfo;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;->setSystemVersion(Ljava/lang/String;)V

    .line 31
    return-object v0
.end method
