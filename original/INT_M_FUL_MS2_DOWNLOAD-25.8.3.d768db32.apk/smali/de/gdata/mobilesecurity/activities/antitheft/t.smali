.class Lde/gdata/mobilesecurity/activities/antitheft/t;
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
    .line 245
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/t;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 249
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/t;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->e(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteWipe()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/t;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->d(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    .line 251
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/t;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;Z)Z

    .line 252
    return-void
.end method
