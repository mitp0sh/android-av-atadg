.class public Lde/gdata/mobilesecurity/fragments/PreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final PREF_CANCEL:Ljava/lang/String; = "Cancel"

.field public static final PREF_LICENSE:Ljava/lang/String; = "License"

.field public static final PREF_ROOT_KEY:Ljava/lang/String; = "ConfigKey"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 52
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->addPreferencesFromResource(I)V

    .line 54
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->addPreferencesFromResource(I)V

    .line 61
    :cond_0
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getUiOptionBus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->addPreferencesFromResource(I)V

    .line 65
    :cond_1
    const-string v0, "Version"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d029d

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "25.8.3.d768db32"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "download"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    :cond_3
    const-string v0, "BROWSER_ENABLED"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 78
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 79
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 80
    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    const-string v1, "ConfigKey"

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    .line 104
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    :cond_5
    const-string v0, "TRAY_ICON_TYPE"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_7

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v0, v3, :cond_6

    .line 110
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    :cond_6
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    :cond_7
    const-string v0, "License"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 116
    new-instance v1, Lde/gdata/mobilesecurity/fragments/al;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/fragments/al;-><init>(Lde/gdata/mobilesecurity/fragments/PreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 125
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 126
    const-string v0, "Cancel"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 127
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemTest()Z

    move-result v1

    .line 128
    new-instance v3, Lde/gdata/mobilesecurity/fragments/am;

    invoke-direct {v3, p0, v1}, Lde/gdata/mobilesecurity/fragments/am;-><init>(Lde/gdata/mobilesecurity/fragments/PreferencesFragment;Z)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 139
    :cond_8
    const-string v0, "MMS_ENABLED"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_9

    .line 141
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPhoneType()I

    move-result v1

    sget-object v3, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$PhoneTypes;->CORPORATE:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_e

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 147
    :goto_1
    new-instance v1, Lde/gdata/mobilesecurity/fragments/an;

    invoke-direct {v1, p0, v2}, Lde/gdata/mobilesecurity/fragments/an;-><init>(Lde/gdata/mobilesecurity/fragments/PreferencesFragment;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 163
    :cond_9
    const-string v0, "MMS_SERVER"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_a

    .line 165
    new-instance v1, Lde/gdata/mobilesecurity/fragments/ao;

    invoke-direct {v1, p0, v2}, Lde/gdata/mobilesecurity/fragments/ao;-><init>(Lde/gdata/mobilesecurity/fragments/PreferencesFragment;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    :cond_a
    const-string v0, "MMS_PASSWORD"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_b

    .line 183
    new-instance v1, Lde/gdata/mobilesecurity/fragments/ap;

    invoke-direct {v1, p0, v2}, Lde/gdata/mobilesecurity/fragments/ap;-><init>(Lde/gdata/mobilesecurity/fragments/PreferencesFragment;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    :cond_b
    const-string v0, "MMS_NAME"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_c

    .line 201
    new-instance v1, Lde/gdata/mobilesecurity/fragments/aq;

    invoke-direct {v1, p0, v2}, Lde/gdata/mobilesecurity/fragments/aq;-><init>(Lde/gdata/mobilesecurity/fragments/PreferencesFragment;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    :cond_c
    return-void

    .line 85
    :cond_d
    new-instance v0, Lde/gdata/mobilesecurity/fragments/ak;

    invoke-direct {v0, p0, v2}, Lde/gdata/mobilesecurity/fragments/ak;-><init>(Lde/gdata/mobilesecurity/fragments/PreferencesFragment;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 145
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->a()V

    .line 40
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 45
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->updateAlarmReceiver(Landroid/content/Context;)V

    .line 46
    return-void
.end method
