.class Lde/gdata/mobilesecurity/activities/antitheft/r;
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
    .line 211
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/r;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 214
    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/r;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/r;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLockOnSimChange(Z)V

    .line 216
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/r;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/r;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/r;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/services/SimChangeService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 224
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/r;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;Z)Z

    .line 233
    :goto_1
    return-void

    .line 219
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->storeIMSI(Ljava/lang/String;)V

    .line 220
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/r;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 221
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->removeCustomNotification(I)V

    .line 222
    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/r;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->b(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 227
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/r;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/r;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    const v2, 0x7f0d055b

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 230
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 231
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
