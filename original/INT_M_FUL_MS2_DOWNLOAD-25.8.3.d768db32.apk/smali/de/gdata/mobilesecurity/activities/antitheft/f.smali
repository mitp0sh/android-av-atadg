.class Lde/gdata/mobilesecurity/activities/antitheft/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/f;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 349
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/f;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->b(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/f;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/f;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->c(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/f;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->b(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setUninstallProtectionEnabled(Z)V

    .line 363
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/f;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->b(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setUninstallProtectionEnabled(Z)V

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/f;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/f;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    const v2, 0x7f0d0124

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 359
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 360
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/f;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->c(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
