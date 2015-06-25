.class Lde/gdata/mobilesecurity/activities/antitheft/m;
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
    .line 350
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/m;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 353
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/m;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getStoredIMSI()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/m;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/m;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d00f4

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/m;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d00e5

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antitheft/m;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d0240

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/antitheft/m;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0d021e

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lde/gdata/mobilesecurity/activities/antitheft/n;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/activities/antitheft/n;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/m;)V

    new-instance v6, Lde/gdata/mobilesecurity/activities/antitheft/o;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/antitheft/o;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/m;)V

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 373
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 374
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/m;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 380
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/m;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->k(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d00e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 378
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/m;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/SimChangeService;->triggerSimUpdateAction(Landroid/content/Context;)V

    goto :goto_0
.end method
