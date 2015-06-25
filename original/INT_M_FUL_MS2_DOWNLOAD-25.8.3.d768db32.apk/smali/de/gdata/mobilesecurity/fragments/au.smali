.class Lde/gdata/mobilesecurity/fragments/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Landroid/preference/Preference;

.field final synthetic b:Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/au;->b:Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/fragments/au;->a:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 34
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/au;->b:Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/au;->a:Landroid/preference/Preference;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/intents/Preferences;->showWifiDialog(Landroid/app/Activity;Landroid/preference/Preference;)V

    .line 37
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/au;->b:Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/WebPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->startSpoofChecker(Landroid/content/Context;)V

    .line 42
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->stopSpoofChecker()V

    goto :goto_0
.end method
