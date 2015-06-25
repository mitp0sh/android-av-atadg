.class public Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutRequest;
.super Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 9

    .prologue
    .line 28
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lde/gdata/mobilesecurity/mms/json/settings/ProfileProxy;->read(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->read(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v4

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;->read(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    move-result-object v5

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lde/gdata/mobilesecurity/mms/json/settings/CommonProxy;->read(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;

    move-result-object v6

    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lde/gdata/mobilesecurity/mms/json/settings/WebProxy;->read(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    move-result-object v7

    .line 47
    new-instance v8, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;

    invoke-direct {v8}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;-><init>()V

    invoke-virtual {v8, v4}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;->withScan(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;

    move-result-object v4

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;->withUpdate(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;

    move-result-object v4

    invoke-virtual {v4, v6}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;->withCommon(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;

    move-result-object v4

    invoke-virtual {v4, v7}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;->withWeb(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;

    move-result-object v4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;->withProfileId(Ljava/lang/Long;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;

    move-result-object v0

    .line 52
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutRequest;->withName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;

    move-result-object v0

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->withItems(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;

    move-result-object v0

    invoke-static {p1}, Lde/gdata/mobilesecurity/mms/json/settings/ClientInfoProxy;->read(Landroid/content/Context;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;->withClientInfo(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;

    .line 60
    invoke-static {p1}, Lde/gdata/mobilesecurity/mms/json/settings/DeviceInfoProxy;->read(Landroid/content/Context;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutRequest;->withDeviceInfo(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/DeviceInfo;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;

    .line 61
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getGcmRegistrationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutRequest;->withGcmRegistrationId(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutRequest;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 65
    return-void
.end method
