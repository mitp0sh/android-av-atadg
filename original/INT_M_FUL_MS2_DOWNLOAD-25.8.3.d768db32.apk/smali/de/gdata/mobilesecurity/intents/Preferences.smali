.class public Lde/gdata/mobilesecurity/intents/Preferences;
.super Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;
.source "SourceFile"


# static fields
.field public static final PREF_CANCEL:Ljava/lang/String; = "Cancel"

.field public static final PREF_LICENSE:Ljava/lang/String; = "License"

.field public static final PREF_ROOT_KEY:Ljava/lang/String; = "ConfigKey"

.field public static final PREF_SCAN_ACCOUNT_KEY:Ljava/lang/String; = "ScanAccountKey"

.field public static final PREF_SCAN_PREFS_KEY:Ljava/lang/String; = "ScanPrefsKey"

.field public static final PREF_VERSION:Ljava/lang/String; = "Version"


# instance fields
.field a:Landroid/app/Activity;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Preferences;->b:Z

    .line 492
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->addPreferencesFromResource(I)V

    .line 115
    new-instance v4, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->addPreferencesFromResource(I)V

    .line 122
    :cond_0
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getUiOptionBus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->addPreferencesFromResource(I)V

    .line 126
    :cond_1
    const-string v0, "Version"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 127
    if-eqz v5, :cond_3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0d029d

    invoke-virtual {p0, v6}, Lde/gdata/mobilesecurity/intents/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "25.8.3.d768db32"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "download"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v6

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersion()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_2
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    :cond_3
    const-string v0, "ScanAccountKey"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 139
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isInstalledFromMarket()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isSapOemVersion()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getUiOptionBus()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 140
    :cond_4
    if-eqz v0, :cond_5

    .line 141
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 155
    :cond_5
    :goto_0
    const-string v0, "ScanPrefsKey"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_6

    .line 157
    new-instance v1, Lde/gdata/mobilesecurity/intents/bf;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/bf;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 166
    :cond_6
    const-string v0, "TRAY_ICON_TYPE"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_8

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-le v0, v5, :cond_7

    .line 169
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    :cond_7
    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    :cond_8
    const-string v0, "ENABLE_PERIODIC_UPDATE"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_9

    .line 176
    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    :cond_9
    const-string v0, "PERIODIC_UPDATE_FREQ"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_a

    .line 181
    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 184
    :cond_a
    const-string v0, "BROWSER_ENABLED"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 185
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 186
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 187
    if-eqz v0, :cond_b

    .line 188
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    const-string v1, "ConfigKey"

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    :cond_b
    :goto_1
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getScanPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_19

    move v0, v2

    .line 211
    :goto_2
    const-string v1, "ENABLE_PERIODIC_UPDATE"

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 212
    :cond_c
    const-string v1, "PERIODIC_UPDATE_FREQ"

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 213
    :cond_d
    const-string v1, "PERIODIC_UPDATE_WIFI_ONLY"

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 215
    :cond_e
    const-string v0, "License"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 216
    new-instance v1, Lde/gdata/mobilesecurity/intents/bk;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/bk;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 225
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 226
    const-string v0, "Cancel"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 227
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemTest()Z

    move-result v1

    .line 228
    new-instance v5, Lde/gdata/mobilesecurity/intents/bl;

    invoke-direct {v5, p0, v1}, Lde/gdata/mobilesecurity/intents/bl;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;Z)V

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 239
    :cond_f
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isSapOemVersion()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 240
    const-string v0, "ENABLE_PERIODIC_UPDATE"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_10

    .line 242
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 244
    :cond_10
    const-string v0, "PERIODIC_UPDATE_FREQ"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_11

    .line 246
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 250
    :cond_11
    const-string v0, "MMS_ENABLED"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_12

    .line 252
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPhoneType()I

    move-result v1

    sget-object v5, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$PhoneTypes;->CORPORATE:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v1, v5, :cond_1a

    .line 253
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 258
    :goto_3
    new-instance v1, Lde/gdata/mobilesecurity/intents/bm;

    invoke-direct {v1, p0, v4}, Lde/gdata/mobilesecurity/intents/bm;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 275
    :cond_12
    const-string v0, "MMS_SERVER"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_13

    .line 277
    new-instance v1, Lde/gdata/mobilesecurity/intents/bn;

    invoke-direct {v1, p0, v4}, Lde/gdata/mobilesecurity/intents/bn;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 296
    :cond_13
    const-string v0, "MMS_PASSWORD"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_14

    .line 298
    new-instance v1, Lde/gdata/mobilesecurity/intents/bo;

    invoke-direct {v1, p0, v4}, Lde/gdata/mobilesecurity/intents/bo;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 314
    :cond_14
    const-string v0, "MMS_NAME"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_15

    .line 316
    new-instance v1, Lde/gdata/mobilesecurity/intents/bp;

    invoke-direct {v1, p0, v4}, Lde/gdata/mobilesecurity/intents/bp;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 332
    :cond_15
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1b

    .line 333
    :cond_16
    const-string v0, "SPOOF_DETECTION_ACTIVATED"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 334
    const-string v0, "webshield"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 335
    const-string v0, "DIALOG_TRUSTED_NETWORKS"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 336
    const-string v0, "webshield"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    const-string v0, "DIALOG_ADVANCED_OPTIONS"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 338
    const-string v0, "webshield"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 339
    const-string v0, "CLEAR_ARP_EXCEPTION"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 340
    const-string v0, "webshield"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    const-string v0, "SPOOF_REPORT_SENDER"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 342
    const-string v0, "webshield"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    const-string v0, "SPOOF_SEND_REPORT"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 344
    const-string v0, "webshield"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 410
    :goto_4
    return-void

    .line 144
    :cond_17
    if-eqz v0, :cond_5

    .line 145
    new-instance v1, Lde/gdata/mobilesecurity/intents/au;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/au;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 192
    :cond_18
    new-instance v0, Lde/gdata/mobilesecurity/intents/bj;

    invoke-direct {v0, p0, v4}, Lde/gdata/mobilesecurity/intents/bj;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_1

    :cond_19
    move v0, v3

    .line 210
    goto/16 :goto_2

    .line 256
    :cond_1a
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 347
    :cond_1b
    const-string v0, "SPOOF_DETECTION_ACTIVATED"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 348
    new-instance v1, Lde/gdata/mobilesecurity/intents/av;

    invoke-direct {v1, p0, v0}, Lde/gdata/mobilesecurity/intents/av;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 363
    const-string v0, "SPOOF_SEND_REPORT"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 364
    new-instance v1, Lde/gdata/mobilesecurity/intents/aw;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/aw;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 373
    const-string v0, "DIALOG_TRUSTED_NETWORKS"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 374
    new-instance v1, Lde/gdata/mobilesecurity/intents/ax;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/ax;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 383
    const-string v0, "DIALOG_ADVANCED_OPTIONS"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 384
    new-instance v1, Lde/gdata/mobilesecurity/intents/ay;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/ay;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 393
    const-string v0, "CLEAR_ARP_EXCEPTION"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 394
    new-instance v1, Lde/gdata/mobilesecurity/intents/az;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/az;-><init>(Lde/gdata/mobilesecurity/intents/Preferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 405
    const-string v0, "SPOOF_REPORT_SENDER"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 406
    const-string v0, "webshield"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 407
    const-string v0, "SPOOF_SEND_REPORT"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 408
    const-string v0, "webshield"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4
.end method

.method public static showAdvancedOptions(Landroid/app/Activity;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 684
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 685
    const v1, 0x7f0d04f7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 686
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 688
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0d0176

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const v3, 0x7f0d0177

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const v3, 0x7f0d0175

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 691
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 693
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 694
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 696
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090010

    const v6, 0x1020014

    invoke-direct {v4, p0, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 699
    new-instance v2, Lde/gdata/mobilesecurity/intents/bh;

    invoke-direct {v2, v1}, Lde/gdata/mobilesecurity/intents/bh;-><init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 721
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 722
    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 724
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBssidAnalysis()Z

    move-result v2

    invoke-virtual {v3, v8, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 725
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isContinuousMode()Z

    move-result v2

    invoke-virtual {v3, v9, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 726
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->doAutoDisconnect()Z

    move-result v2

    invoke-virtual {v3, v7, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 728
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 730
    const v2, 0x7f0d0240

    new-instance v3, Lde/gdata/mobilesecurity/intents/bi;

    invoke-direct {v3, p0, v1}, Lde/gdata/mobilesecurity/intents/bi;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 741
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 742
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 743
    return-void
.end method

.method public static showLicenseDialog(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const v5, 0x7f0e0008

    const/16 v4, 0x8

    .line 440
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    const v1, 0x7f0d0477

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 444
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 445
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 447
    const v1, 0x7f0d0240

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lde/gdata/mobilesecurity/intents/ba;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/intents/ba;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 454
    new-instance v1, Lde/gdata/mobilesecurity/intents/bb;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/intents/bb;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 461
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f060000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->convertStreamToSB(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 463
    new-instance v2, Landroid/widget/TextView;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 465
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 468
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 469
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 470
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 472
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 474
    return-void
.end method

.method public static showWifiDialog(Landroid/app/Activity;Landroid/preference/Preference;)V
    .locals 14

    .prologue
    .line 550
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 551
    new-instance v5, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 552
    const v0, 0x7f0d04fa

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 554
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 556
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 557
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 558
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 560
    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTrustedNetworks()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 561
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v9, v2, v1

    .line 562
    const-string v10, "\\$"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 563
    array-length v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 564
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 565
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v11, Lde/gdata/mobilesecurity/intents/bq;

    const/4 v12, 0x0

    aget-object v12, v9, v12

    const/4 v13, 0x1

    aget-object v9, v9, v13

    const/4 v13, 0x0

    invoke-direct {v11, v12, v9, v13}, Lde/gdata/mobilesecurity/intents/bq;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 567
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\\"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getQueriedNetworks()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\\"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\\"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 570
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getQueriedNetworks()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setQueriedNetworks(Ljava/lang/String;)V

    .line 561
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 573
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 574
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 575
    const-string v3, "00:00:00:00:00:00"

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "FF:FF:FF:FF:FF:FF"

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v10, "^\"(.*)\"$"

    const-string v11, "$1"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "$"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 580
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 581
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v3, Lde/gdata/mobilesecurity/intents/bq;

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-direct {v3, v9, v1, v10}, Lde/gdata/mobilesecurity/intents/bq;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 587
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 588
    const-string v1, "00:00:00:00:00:00"

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "FF:FF:FF:FF:FF:FF"

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 590
    if-nez v0, :cond_5

    const-string v1, ""

    move-object v2, v1

    .line 591
    :goto_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 593
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v3, v1

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 594
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_5
    move-object v3, v1

    goto :goto_4

    .line 590
    :cond_5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "^\"(.*)\"$"

    const-string v3, "$1"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_3

    .line 596
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 597
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v1, Lde/gdata/mobilesecurity/intents/bq;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lde/gdata/mobilesecurity/intents/bq;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 603
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 604
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 606
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 607
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 609
    new-instance v1, Lde/gdata/mobilesecurity/intents/Preferences$WifiListAdapter;

    const v2, 0x1090004

    invoke-direct {v1, p0, v2, v6}, Lde/gdata/mobilesecurity/intents/Preferences$WifiListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 611
    new-instance v1, Lde/gdata/mobilesecurity/intents/bc;

    invoke-direct {v1, v7, v6}, Lde/gdata/mobilesecurity/intents/bc;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 624
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 629
    :goto_6
    const v0, 0x7f0d0240

    new-instance v1, Lde/gdata/mobilesecurity/intents/bd;

    invoke-direct {v1, v5, v7, p0}, Lde/gdata/mobilesecurity/intents/bd;-><init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/util/ArrayList;Landroid/app/Activity;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 644
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 645
    const v0, 0x7f0d021e

    new-instance v1, Lde/gdata/mobilesecurity/intents/be;

    invoke-direct {v1, p1, v5}, Lde/gdata/mobilesecurity/intents/be;-><init>(Landroid/preference/Preference;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 658
    :cond_8
    new-instance v0, Lde/gdata/mobilesecurity/intents/bg;

    invoke-direct {v0, v5, v7, p0}, Lde/gdata/mobilesecurity/intents/bg;-><init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/util/ArrayList;Landroid/app/Activity;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 675
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 677
    return-void

    .line 627
    :cond_9
    const v0, 0x7f0d04fb

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :cond_a
    move-object v1, v3

    goto/16 :goto_5
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 102
    const-class v0, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lde/gdata/mobilesecurity/fragments/ScanPreferencesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lde/gdata/mobilesecurity/fragments/UpdatePreferencesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 747
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 748
    const-string v0, "MMS_ENABLED"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Preferences;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/services/GdAccessibilityService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Preferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Preferences;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->isAccessibilityEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 760
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 761
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 762
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWaitForAccessibilityService(Z)V

    .line 765
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 766
    const-class v1, Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 767
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 768
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Preferences;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Preferences;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Preferences;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Preferences;->b:Z

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_1
    const v0, 0x7f05000d

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/intents/Preferences;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    iput-object p0, p0, Lde/gdata/mobilesecurity/intents/Preferences;->a:Landroid/app/Activity;

    .line 93
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Preferences;->b:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 95
    :cond_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/Preferences;->a()V

    .line 98
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 416
    const v1, 0x102002c

    if-ne v1, v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Preferences;->finish()V

    .line 418
    const/4 v0, 0x1

    .line 420
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
