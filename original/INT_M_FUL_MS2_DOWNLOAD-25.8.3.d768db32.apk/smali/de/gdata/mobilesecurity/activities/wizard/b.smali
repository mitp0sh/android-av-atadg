.class Lde/gdata/mobilesecurity/activities/wizard/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const v6, 0x7f0d023d

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 75
    if-ne p1, v3, :cond_1

    .line 76
    const/4 v0, 0x0

    .line 78
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->a(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isEulaAccepted()Z

    move-result v2

    if-nez v2, :cond_6

    .line 80
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    const v2, 0x7f0d0565

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v2, v3

    .line 82
    :goto_0
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-static {v4}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->a(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardAuthSuccessful()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyUtil;->isGoogleMarketPackage(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-static {v4}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->a(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMicrostationOemVersion()Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v2, v6}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v3

    .line 92
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->onBackPressed()V

    .line 98
    :cond_1
    if-ne p1, v5, :cond_3

    .line 99
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;)Lde/gdata/mobilesecurity/activities/wizard/c;

    move-result-object v2

    invoke-virtual {v2, v5}, Lde/gdata/mobilesecurity/activities/wizard/c;->a(I)Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 106
    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 107
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 108
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 111
    :cond_3
    if-nez p1, :cond_4

    .line 112
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->a(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isEulaAccepted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->a(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardAuthSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->pressNext()V

    .line 117
    :cond_4
    return-void

    .line 89
    :cond_5
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/b;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v2, v3

    goto :goto_1

    :cond_6
    move v2, v0

    move-object v0, v1

    goto/16 :goto_0
.end method
