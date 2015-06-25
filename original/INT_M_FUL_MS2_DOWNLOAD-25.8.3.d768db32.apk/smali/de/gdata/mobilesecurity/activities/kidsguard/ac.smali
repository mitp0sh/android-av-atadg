.class Lde/gdata/mobilesecurity/activities/kidsguard/ac;
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
    .line 665
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 669
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->c(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 672
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->showAccessibilityInfoDialog(Landroid/support/v4/app/FragmentActivity;I)V

    .line 717
    :goto_0
    return-void

    .line 675
    :cond_0
    check-cast p1, Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->locationServicesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->h(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 679
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->i(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    .line 681
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBarActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 683
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    .line 684
    const-string v1, "Teenager"

    invoke-virtual {v0, v1, v3}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;Z)Z

    .line 686
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "KGF.setOnClickListener"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    .line 687
    const-string v0, "KGF.setOnClickListener"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 689
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    const-string v1, "Teenager"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;)Z

    .line 691
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 692
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 693
    const-string v1, "selectItem"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->startActivity(Landroid/content/Intent;)V

    .line 696
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->resetAllLastLockedHistory()V

    .line 698
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 700
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntiphishingPermissions(I)V

    .line 701
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setApplockPermissions(I)V

    .line 703
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardConfiguring(Z)V

    .line 704
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardToddlerActive(Z)V

    .line 705
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardTeenagerActive(Z)V

    .line 706
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    goto/16 :goto_0

    .line 708
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    const v2, 0x7f0d0092

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 710
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->openLocationSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 713
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->c(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 714
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ac;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;I)Landroid/app/Dialog;

    goto/16 :goto_0
.end method
