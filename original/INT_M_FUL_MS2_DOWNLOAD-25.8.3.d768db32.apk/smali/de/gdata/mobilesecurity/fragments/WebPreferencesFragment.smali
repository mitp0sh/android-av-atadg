.class public Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;
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
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createGui()V
    .locals 4

    .prologue
    .line 28
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->addPreferencesFromResource(I)V

    .line 30
    const-string v0, "SPOOF_DETECTION_ACTIVATED"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 31
    new-instance v1, Lde/gdata/mobilesecurity/fragments/au;

    invoke-direct {v1, p0, v0}, Lde/gdata/mobilesecurity/fragments/au;-><init>(Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 47
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 48
    :cond_0
    const-string v0, "WebPrefsKey"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 49
    const-string v1, "webshield"

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 50
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v0, "DIALOG_TRUSTED_NETWORKS"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 54
    new-instance v1, Lde/gdata/mobilesecurity/fragments/av;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/fragments/av;-><init>(Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 63
    const-string v0, "SPOOF_SEND_REPORT"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 64
    new-instance v1, Lde/gdata/mobilesecurity/fragments/aw;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/fragments/aw;-><init>(Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 73
    const-string v0, "DIALOG_ADVANCED_OPTIONS"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 74
    new-instance v1, Lde/gdata/mobilesecurity/fragments/ax;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/fragments/ax;-><init>(Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    const-string v0, "CLEAR_ARP_EXCEPTION"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 84
    new-instance v1, Lde/gdata/mobilesecurity/fragments/ay;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/fragments/ay;-><init>(Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 95
    const-string v0, "SPOOF_REPORT_SENDER"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 96
    const-string v0, "webshield"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 97
    const-string v0, "SPOOF_SEND_REPORT"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 98
    const-string v0, "webshield"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->createGui()V

    .line 25
    return-void
.end method
