.class Lde/gdata/mobilesecurity/fragments/ak;
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
    .line 85
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/ak;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/fragments/ak;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 88
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ak;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBrowserEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ak;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/ak;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/browser/BrowserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 97
    :goto_0
    return v4

    .line 93
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ak;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/ak;->b:Lde/gdata/mobilesecurity/fragments/PreferencesFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/fragments/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/browser/BrowserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method
