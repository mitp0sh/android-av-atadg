.class Lde/gdata/mobilesecurity/fragments/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field final synthetic b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/PreferencesFragment;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/an;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/fragments/an;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 150
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 151
    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/an;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/an;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/app/Activity;)V

    .line 153
    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/an;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/an;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/an;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->scheduleUpdate(Landroid/content/Context;)V

    .line 158
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
