.class public Lde/gdata/mobilesecurity/activities/applock/Settings;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/app/ActionBar;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/Settings;->b:Z

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 36
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/Settings;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Settings;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Settings;->a:Landroid/support/v7/app/ActionBar;

    .line 41
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Settings;->a:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 124
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/applock/Settings;->setResult(ILandroid/content/Intent;)V

    .line 129
    :goto_0
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->finish()V

    .line 130
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/applock/Settings;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 136
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/Settings;->b:Z

    if-eqz v0, :cond_0

    .line 137
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/Settings;->b:Z

    .line 141
    const v0, 0x7f0d0214

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/app/Activity;I)V

    .line 145
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Settings;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b011a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->onBackPressed()Z

    move-result v0

    .line 75
    if-nez v0, :cond_0

    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onBackPressed()V

    .line 76
    :cond_0
    return-void
.end method

.method public onCheckBoxClicked(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Settings;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b011a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 86
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    instance-of v1, v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->isAppLockConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->showAccessibilityInfoDialog(Landroid/support/v4/app/FragmentActivity;I)V

    .line 92
    :cond_0
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/Settings;->b:Z

    if-eqz v0, :cond_1

    .line 94
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    if-eqz v0, :cond_1

    .line 95
    invoke-static {p0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/Settings;->b:Z

    .line 98
    const v0, 0x7f0d0214

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/app/Activity;I)V

    .line 103
    :cond_1
    return-void
.end method

.method public onCheckBoxLabelClicked(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 113
    const v0, 0x7f0b0122

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 114
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/Settings;->onCheckBoxClicked(Landroid/view/View;)V

    .line 118
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    if-nez p1, :cond_0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/Settings;->a()V

    .line 33
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Settings;->finish()V

    .line 64
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
