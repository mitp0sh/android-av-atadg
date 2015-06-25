.class Lde/gdata/mobilesecurity/activities/kidsguard/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/by;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    check-cast p2, Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/by;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2, p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardOverallAllowedUsageTimeLimit(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/by;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, p2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/by;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    invoke-virtual {v2, p2}, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->setAllowedTimeSummary(Ljava/lang/String;)V

    .line 51
    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a0

    if-ge v2, v3, :cond_1

    .line 52
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/by;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardOverallUsageTimeLimited(Z)V

    .line 54
    sget-boolean v1, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/by;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->a:Landroid/app/Activity;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/by;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->a:Landroid/app/Activity;

    const v2, 0x7f0d031c

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/app/Activity;I)V

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/by;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardOverallUsageTimeLimited(Z)V

    move v0, v1

    .line 59
    goto :goto_0
.end method
