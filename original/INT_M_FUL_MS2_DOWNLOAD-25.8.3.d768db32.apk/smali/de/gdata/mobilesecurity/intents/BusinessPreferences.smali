.class public Lde/gdata/mobilesecurity/intents/BusinessPreferences;
.super Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;
.source "SourceFile"


# instance fields
.field a:Landroid/app/Activity;

.field b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 129
    const-string v0, "MMS_ENABLED"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->getPackageName()Ljava/lang/String;

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

    .line 137
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->isAccessibilityEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWaitForAccessibilityService(Z)V

    .line 146
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    const-class v1, Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iput-object p0, p0, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->a:Landroid/app/Activity;

    .line 35
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 37
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->addPreferencesFromResource(I)V

    .line 39
    const-string v0, "MMS_ENABLED"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPhoneType()I

    move-result v1

    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$PhoneTypes;->CORPORATE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 47
    :goto_0
    new-instance v1, Lde/gdata/mobilesecurity/intents/a;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/a;-><init>(Lde/gdata/mobilesecurity/intents/BusinessPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 63
    :cond_0
    const-string v0, "MMS_SERVER"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    new-instance v1, Lde/gdata/mobilesecurity/intents/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/b;-><init>(Lde/gdata/mobilesecurity/intents/BusinessPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    :cond_1
    const-string v0, "MMS_PASSWORD"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    new-instance v1, Lde/gdata/mobilesecurity/intents/c;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/c;-><init>(Lde/gdata/mobilesecurity/intents/BusinessPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    :cond_2
    const-string v0, "MMS_NAME"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    new-instance v1, Lde/gdata/mobilesecurity/intents/d;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/d;-><init>(Lde/gdata/mobilesecurity/intents/BusinessPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    :cond_3
    return-void

    .line 45
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 117
    const v1, 0x102002c

    if-ne v1, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->finish()V

    .line 120
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
