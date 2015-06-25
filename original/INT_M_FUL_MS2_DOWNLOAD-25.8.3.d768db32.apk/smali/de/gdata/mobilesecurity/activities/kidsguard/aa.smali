.class Lde/gdata/mobilesecurity/activities/kidsguard/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 618
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->h(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 621
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v6}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->showAccessibilityInfoDialog(Landroid/support/v4/app/FragmentActivity;I)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    check-cast p1, Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->c(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 627
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 630
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v6, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 634
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    iget-boolean v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->a:Z

    if-eqz v0, :cond_2

    .line 635
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 636
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 637
    const-string v1, "INIT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 638
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->startActivity(Landroid/content/Intent;)V

    .line 640
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->i(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    .line 642
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBarActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 644
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    .line 645
    const-string v1, "Toddler"

    invoke-virtual {v0, v1, v4}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;Z)Z

    .line 647
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "KGF.setOnClickListener"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    .line 648
    const-string v0, "KGF.setOnClickListener"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 651
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardConfiguring(Z)V

    .line 652
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardToddlerActive(Z)V

    .line 653
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardTeenagerActive(Z)V

    .line 655
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->resetAllLastLockedHistory()V

    .line 657
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 660
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aa;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0, v6}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;I)Landroid/app/Dialog;

    goto/16 :goto_0
.end method
