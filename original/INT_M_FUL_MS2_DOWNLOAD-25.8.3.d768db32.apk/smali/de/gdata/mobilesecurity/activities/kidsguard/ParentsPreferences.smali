.class public Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;
.super Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;
.source "SourceFile"


# instance fields
.field a:Landroid/app/Activity;

.field b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field c:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 104
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardOverallUsageTimeLimited(Z)V

    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    const v1, 0x7f0d02f6

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 25
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iput-object p0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->a:Landroid/app/Activity;

    .line 30
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 32
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->addPreferencesFromResource(I)V

    .line 34
    const-string v0, "KIDSGUARD_RESET_OVERALL_USAGE_TIME"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 35
    const-string v0, "KIDSGUARD_RESET_TIME_LIMIT"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 36
    const-string v0, "KIDSGUARD_OVERALL_ALLOWED_USAGE_TIME"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    .line 38
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardOverallAllowedUsageTimeLimit(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardOverallAllowedUsageTimeLimit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->setAllowedTimeSummary(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    new-instance v3, Lde/gdata/mobilesecurity/activities/kidsguard/by;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/by;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;)V

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    :cond_0
    if-eqz v2, :cond_1

    .line 67
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/bz;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/bz;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;)V

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    :cond_1
    if-eqz v1, :cond_2

    .line 86
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/ca;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ca;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 132
    const v1, 0x102002c

    if-ne v1, v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->finish()V

    .line 135
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAllowedTimeSummary(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    const/4 v0, 0x0

    .line 114
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 116
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_1

    .line 117
    if-le v0, v2, :cond_2

    .line 118
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0d02f7

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    if-ne v0, v2, :cond_3

    .line 121
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0d02f8

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    const v1, 0x7f0d02f6

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
