.class Lde/gdata/mobilesecurity/fragments/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field final synthetic b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/PreferencesFragment;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/ao;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/fragments/ao;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ao;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ao;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ao;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ao;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->scheduleUpdate(Landroid/content/Context;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ao;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSServer(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x1

    return v0
.end method
