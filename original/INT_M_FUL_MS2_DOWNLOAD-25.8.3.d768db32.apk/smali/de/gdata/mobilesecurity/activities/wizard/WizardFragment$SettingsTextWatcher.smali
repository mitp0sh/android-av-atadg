.class public Lde/gdata/mobilesecurity/activities/wizard/WizardFragment$SettingsTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment$SettingsTextWatcher;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 820
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 807
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 811
    if-eq p4, p3, :cond_0

    .line 812
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment$SettingsTextWatcher;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 813
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment$SettingsTextWatcher;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment$SettingsTextWatcher;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setUninstallProtectionEnabled(Z)V

    .line 815
    :cond_0
    return-void
.end method
