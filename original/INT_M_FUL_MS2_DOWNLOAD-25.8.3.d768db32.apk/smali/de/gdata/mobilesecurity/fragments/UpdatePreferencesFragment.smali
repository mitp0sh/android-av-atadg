.class public Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# static fields
.field public static final PREF_SCAN_ACCOUNT_KEY:Ljava/lang/String; = "ScanAccountKey"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 23
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->addPreferencesFromResource(I)V

    .line 25
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v3, "ScanAccountKey"

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 29
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isInstalledFromMarket()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isSapOemVersion()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getUiOptionBus()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    :cond_0
    if-eqz v3, :cond_1

    .line 31
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 45
    :cond_1
    :goto_0
    const-string v0, "ENABLE_PERIODIC_UPDATE"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    :cond_2
    const-string v0, "PERIODIC_UPDATE_FREQ"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    :cond_3
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getScanPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 56
    :goto_1
    const-string v3, "ENABLE_PERIODIC_UPDATE"

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 57
    :cond_4
    const-string v3, "PERIODIC_UPDATE_FREQ"

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 58
    :cond_5
    const-string v3, "PERIODIC_UPDATE_WIFI_ONLY"

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 60
    :cond_6
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isSapOemVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    const-string v0, "ENABLE_PERIODIC_UPDATE"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 62
    :cond_7
    const-string v0, "PERIODIC_UPDATE_FREQ"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 65
    :cond_8
    return-void

    .line 34
    :cond_9
    if-eqz v3, :cond_1

    .line 35
    new-instance v0, Lde/gdata/mobilesecurity/fragments/at;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/fragments/at;-><init>(Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;)V

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 55
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-direct {p0}, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;->a()V

    .line 20
    return-void
.end method
