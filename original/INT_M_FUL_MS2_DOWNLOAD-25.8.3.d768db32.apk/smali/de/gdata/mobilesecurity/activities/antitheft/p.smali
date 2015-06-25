.class Lde/gdata/mobilesecurity/activities/antitheft/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/p;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 424
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/p;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLock(Z)V

    .line 427
    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 428
    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    .line 430
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/p;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    const v1, 0x7f0d0216

    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->b()I

    move-result v2

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/support/v4/app/Fragment;II)V

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/p;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/p;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/intents/ActionManagerRegisterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
