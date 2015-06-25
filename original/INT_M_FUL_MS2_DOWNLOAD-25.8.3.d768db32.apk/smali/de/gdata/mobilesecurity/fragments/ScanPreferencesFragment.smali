.class public Lde/gdata/mobilesecurity/fragments/ScanPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v2, 0x7f050010

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/fragments/ScanPreferencesFragment;->addPreferencesFromResource(I)V

    .line 20
    new-instance v4, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v4, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getScanPermissions()I

    move-result v5

    .line 23
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_8

    move v3, v0

    .line 24
    :goto_0
    and-int/lit8 v2, v5, 0x2

    if-eqz v2, :cond_9

    move v2, v0

    .line 25
    :goto_1
    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_a

    .line 29
    :goto_2
    const-string v5, "SCAN_ON_INSTALL"

    invoke-virtual {p0, v5}, Lde/gdata/mobilesecurity/fragments/ScanPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 31
    :cond_0
    const-string v2, "ENABLE_TIMED_SCAN"

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/fragments/ScanPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 32
    :cond_1
    const-string v2, "PERIODIC_SCAN_FREQ"

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/fragments/ScanPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 33
    :cond_2
    const-string v2, "PERIODIC_SCAN_TYPE"

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/fragments/ScanPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 35
    :cond_3
    const-string v2, "BATTERY_SKIP"

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/fragments/ScanPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 36
    :cond_4
    const-string v2, "SCAN_POWER_CONNECTED"

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/fragments/ScanPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 38
    :cond_5
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isSapOemVersion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    const-string v0, "ENABLE_TIMED_SCAN"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/ScanPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 40
    :cond_6
    const-string v0, "PERIODIC_SCAN_FREQ"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/ScanPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 43
    :cond_7
    return-void

    :cond_8
    move v3, v1

    .line 23
    goto :goto_0

    :cond_9
    move v2, v1

    .line 24
    goto :goto_1

    :cond_a
    move v0, v1

    .line 25
    goto :goto_2
.end method
