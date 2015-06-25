.class public Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;
.super Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    .line 130
    const v1, -0x5f8c4059

    invoke-virtual {v0, p1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public persist(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 7

    .prologue
    .line 37
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->getUpdateCredential()Lde/gdata/mobilesecurity/mms/json/base/commonsettings/UpdateCredential;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/UpdateCredential;->getUser()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/UpdateCredential;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 39
    :cond_0
    const-string v0, "Invalid data received"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/UpdateCredential;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/UpdateCredential;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAndEncryptUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->getName()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->getClientInfo()Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

    .line 51
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getGcmSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->getGcmSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    const-string v0, ""

    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setGcmRegistrationId(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->getGcmSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setGcmSenderId(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lde/gdata/mobilesecurity/util/GcmUtilities;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/GcmUtilities;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/util/GcmUtilities;->register(Landroid/content/Context;)V

    .line 59
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->getProfile()Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->getItems()Ljava/util/List;

    move-result-object v1

    .line 62
    const-string v2, "CSPR.persist"

    invoke-static {p1, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;

    .line 66
    new-instance v5, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;

    invoke-direct {v5}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;-><init>()V

    .line 67
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->getEnabled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->withEnabled(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;

    .line 68
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->withId(Ljava/lang/Long;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;

    .line 69
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->withName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;

    .line 70
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->withType(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;

    .line 72
    invoke-virtual {v5}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 74
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_4
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/settings/ProfileProxy;

    invoke-direct {v0, p1, v3}, Lde/gdata/mobilesecurity/mms/json/settings/ProfileProxy;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 78
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/settings/ProfileProxy;->write()V

    .line 80
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;

    .line 81
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;->getProfileId()Ljava/lang/Long;

    move-result-object v3

    .line 83
    new-instance v4, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;->getScan()Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Scan;)V

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lde/gdata/mobilesecurity/mms/json/settings/ScanProxy;->write(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 86
    new-instance v4, Lde/gdata/mobilesecurity/mms/json/settings/WebProxy;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;->getWeb()Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lde/gdata/mobilesecurity/mms/json/settings/WebProxy;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;)V

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lde/gdata/mobilesecurity/mms/json/settings/WebProxy;->write(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 89
    new-instance v4, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;->getUpdate()Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;)V

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lde/gdata/mobilesecurity/mms/json/settings/UpdateProxy;->write(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 92
    new-instance v4, Lde/gdata/mobilesecurity/mms/json/settings/CommonProxy;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;->getCommon()Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lde/gdata/mobilesecurity/mms/json/settings/CommonProxy;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lde/gdata/mobilesecurity/mms/json/settings/CommonProxy;->write(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 96
    :cond_5
    const-string v0, "CSPR.persist"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSCommonSettingsETag(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->setMD5Hash(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    goto/16 :goto_0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPostResponse;->a:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setMD5Hash(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutRequest;

    invoke-direct {v0, p1, p2}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutRequest;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 117
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSCommonSettingsHash(Ljava/lang/String;)V

    .line 121
    return-void
.end method
