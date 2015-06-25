.class Lde/gdata/mobilesecurity/activities/wizard/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->a(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 102
    :pswitch_0
    const-string v0, ""

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->b(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->b(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setEmailForLocation(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->b(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionEmail(Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isGoogleMarketPackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardAuthSuccessful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isEulaAccepted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMicrostationOemVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->pressNext()V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->OCL_register()V

    goto/16 :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isEulaAccepted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0565

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->pressNext()V

    goto/16 :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->d(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    goto/16 :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/d;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->pressExit()V

    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
