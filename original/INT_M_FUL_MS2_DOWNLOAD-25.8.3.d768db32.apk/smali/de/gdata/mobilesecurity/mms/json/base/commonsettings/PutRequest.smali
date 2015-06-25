.class public Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ClientInfo:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

.field private DeviceInfo:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;

.field private GcmRegistrationId:Ljava/lang/String;

.field private Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;",
            ">;"
        }
    .end annotation
.end field

.field private Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->Items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getClientInfo()Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->ClientInfo:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

    return-object v0
.end method

.method public getDeviceInfo()Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->DeviceInfo:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;

    return-object v0
.end method

.method public getGcmRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->GcmRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->Items:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public setClientInfo(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->ClientInfo:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

    .line 28
    return-void
.end method

.method public setDeviceInfo(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->DeviceInfo:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;

    .line 41
    return-void
.end method

.method public setGcmRegistrationId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->GcmRegistrationId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->Items:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->Name:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public withClientInfo(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->ClientInfo:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

    .line 36
    return-object p0
.end method

.method public withDeviceInfo(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->DeviceInfo:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;

    .line 49
    return-object p0
.end method

.method public withGcmRegistrationId(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->GcmRegistrationId:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public withItems(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->Items:Ljava/util/List;

    .line 62
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->Name:Ljava/lang/String;

    .line 23
    return-object p0
.end method
