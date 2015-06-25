.class Lde/gdata/mobilesecurity/activities/applock/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/aj;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 346
    if-eqz p2, :cond_3

    .line 347
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/aj;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->isAppLockConfigured()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/aj;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/aj;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->b(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 352
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/aj;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->addUnlockedApp(Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/aj;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->c(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/aj;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/aj;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    const v2, 0x7f0d0124

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 360
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 361
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 363
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/aj;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->c(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 364
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/aj;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->b(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    goto :goto_0

    .line 367
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/aj;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->b(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    goto :goto_0
.end method
