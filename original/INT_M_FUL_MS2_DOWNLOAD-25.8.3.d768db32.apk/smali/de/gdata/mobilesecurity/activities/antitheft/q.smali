.class Lde/gdata/mobilesecurity/activities/antitheft/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/q;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLocateOnSimChange(Z)V

    .line 202
    if-eqz p2, :cond_0

    .line 203
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/q;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/q;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/services/SimChangeService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 207
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/q;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;Z)Z

    .line 208
    return-void

    .line 205
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->storeIMSI(Ljava/lang/String;)V

    goto :goto_0
.end method
