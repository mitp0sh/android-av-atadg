.class Lde/gdata/mobilesecurity/activities/permissions/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/permissions/b;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/b;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 156
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v2, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/Trial;->isTrialOutOfTrialPeriod()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/Trial;->isProtectFeaturesUntilRegistration()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/Trial;->isInvalidTrial()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/b;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 164
    check-cast v0, Lde/gdata/mobilesecurity/intents/Main;

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/intents/Main;->showNotAllowedOutOfTrialPeriodDialog(Landroid/support/v7/app/ActionBarActivity;)V

    .line 176
    :goto_0
    return-void

    .line 165
    :cond_2
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    const-class v0, Lde/gdata/mobilesecurity/activities/applock/Settings;

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 168
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    const-string v2, "PACKAGE_NAME"

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/permissions/b;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->b(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/permissions/b;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->b(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;->addAppToApplock(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    const-class v2, Lde/gdata/mobilesecurity/activities/applock/Selection;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/b;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
