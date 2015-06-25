.class Lde/gdata/mobilesecurity/activities/kidsguard/z;
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
    .line 574
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/z;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 577
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/z;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBarActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 579
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/z;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    const-string v1, "Teenager"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;)Z

    .line 581
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/z;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 582
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/z;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardConfiguring(Z)V

    .line 584
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/z;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 586
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/z;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 588
    const-string v1, "selectItem"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    const-string v1, "openDrawer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 590
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/z;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->startActivity(Landroid/content/Intent;)V

    .line 591
    return-void
.end method
