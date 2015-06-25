.class public Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;
.super Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 120
    const-string v0, ","

    .line 121
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 123
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 124
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 126
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 127
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_1
    return-object v0

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public persist(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 38
    new-instance v4, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v4, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSLogDetails()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/16 v5, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS persist() has been called but callfilter is: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getCallFilter()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v5, v0, v1, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getProfile()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/settings/ProfileProxy;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getProfile()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lde/gdata/mobilesecurity/mms/json/settings/ProfileProxy;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/settings/ProfileProxy;->write()V

    .line 47
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->PROFILE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfileETag(Ljava/lang/String;)V

    .line 50
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getAntiTheft()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;

    .line 51
    new-instance v2, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;

    invoke-direct {v2, p1, v0}, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;)V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;->write()V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 41
    goto :goto_0

    .line 52
    :cond_3
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->ANTI_THEFT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntitheftETag(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getCallFilter()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 55
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getCallFilter()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    .line 56
    new-instance v2, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;

    invoke-direct {v2, p1, v0}, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;)V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->write()V

    goto :goto_2

    .line 57
    :cond_4
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->CALL_FILTER:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCallfilterETag(Ljava/lang/String;)V

    .line 60
    :cond_5
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getApp()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

    .line 61
    new-instance v2, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;

    invoke-direct {v2, p1, v0}, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;)V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->write()V

    goto :goto_3

    .line 62
    :cond_6
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->APP:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setApplockETag(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getContact()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;->write()V

    .line 65
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->CONTACT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPrivacyETag(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getPolicy()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getProfile()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 69
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getProfile()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;

    .line 70
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->getEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 75
    :goto_4
    new-instance v1, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getPolicy()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;)V

    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->POLICY:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->write(Ljava/lang/String;)V

    .line 79
    :goto_5
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPhoneType()I

    move-result v1

    sget-object v4, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$PhoneTypes;->CORPORATE:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_b

    .line 83
    if-eqz v0, :cond_8

    .line 84
    new-instance v1, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;)Z

    .line 90
    :cond_8
    :goto_6
    new-instance v0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;-><init>(Landroid/content/Context;)V

    .line 91
    const-string v1, "Private"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "Toddler"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "Teenager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 93
    :cond_9
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->checkPolicy(I)V

    .line 101
    :cond_a
    :goto_7
    invoke-static {p1, v3, v3}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->loadLists(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    return-void

    .line 87
    :cond_b
    const-string v0, "Private"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Toddler"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Teenager"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 88
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;)Z

    goto :goto_6

    .line 95
    :cond_c
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getPolicy()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 96
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->getPolicy()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->loadPolicyFromDB(I)V

    .line 97
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->checkPolicy(I)V

    goto :goto_7

    :cond_d
    move-object v0, v3

    goto/16 :goto_4

    :cond_e
    move-object v0, v3

    goto/16 :goto_5
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/MdmSettingsPostResponse;->a:Ljava/lang/String;

    .line 110
    return-void
.end method
