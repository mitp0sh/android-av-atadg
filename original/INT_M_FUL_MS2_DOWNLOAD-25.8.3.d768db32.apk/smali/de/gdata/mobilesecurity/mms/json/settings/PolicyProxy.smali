.class public Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

.field b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;

.field c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    .line 19
    iput-object p3, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;

    .line 20
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->c:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;-><init>(Landroid/content/Context;)V

    .line 28
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->loadPolicyFromDB(I)V

    .line 29
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->setPolicyID(I)V

    .line 30
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->setProfileName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->setETag(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->savePolicy()V

    .line 34
    new-instance v0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;-><init>(Landroid/content/Context;)V

    .line 35
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->setPolicyID(I)V

    .line 36
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getConditions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getConditions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;->getAllowCamera()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->setCameraAllowed(Z)V

    .line 38
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getConditions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;->getAllowClipboard()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->setClipboardAllowed(Z)V

    .line 39
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getConditions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;->getAllowFactoryReset()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->setFactoryResetAllowed(Z)V

    .line 40
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getConditions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;->getAllowMicrophone()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->setMicrophoneAllowed(Z)V

    .line 41
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getConditions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;->getAllowMockLocations()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->setMockLocationsAllowed(Z)V

    .line 42
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getConditions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;->getAllowRootedDevice()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->setRootAllowed(Z)V

    .line 43
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getConditions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;->getAllowUsbMediaPlayer()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->setUsbMediaPlayerAllowed(Z)V

    .line 45
    :cond_0
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->savePolicyItems()V

    .line 47
    new-instance v0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;-><init>(Landroid/content/Context;)V

    .line 48
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->setPolicyId(I)V

    .line 49
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getReactions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 50
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getReactions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->getPhoneType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->setPhoneType(I)V

    .line 51
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->setProfileId(J)V

    .line 52
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getReactions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->getRequireEncryption()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->setRequireEncryption(Z)V

    .line 53
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getReactions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->getWlanEncryption()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getReactions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->getWlanEncryption()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->setWlanEncryption(I)V

    .line 55
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getReactions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->getWlanPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getReactions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->getWlanPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->setWlanPassword(Ljava/lang/String;)V

    .line 57
    :cond_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getReactions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->getWlanSsid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getReactions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->getWlanSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->setWlanSsid(Ljava/lang/String;)V

    .line 59
    :cond_3
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/json/settings/PolicyProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->getReactions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->getPhoneType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPhoneType(I)V

    .line 62
    :cond_4
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->saveDevicePolicyReactionItem()V

    .line 63
    return-void
.end method
