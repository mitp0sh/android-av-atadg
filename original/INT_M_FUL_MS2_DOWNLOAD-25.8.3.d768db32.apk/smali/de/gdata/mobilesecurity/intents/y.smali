.class Lde/gdata/mobilesecurity/intents/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarActivity;

.field final synthetic b:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main;Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .prologue
    .line 2617
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/y;->b:Lde/gdata/mobilesecurity/intents/Main;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/y;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 2620
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2622
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->isPlasmaAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2623
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/y;->b:Lde/gdata/mobilesecurity/intents/Main;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/y;->a:Landroid/support/v7/app/ActionBarActivity;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;-><init>()V

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;Landroid/support/v7/app/ActionBarActivity;Landroid/support/v4/app/Fragment;)V

    .line 2638
    :cond_0
    :goto_0
    return-void

    .line 2624
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/y;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2626
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/y;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2627
    const-string v0, ""

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/y;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/y;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isAntiVirusFree(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2629
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/y;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->OCLgoUpdateInformations()V

    goto :goto_0

    .line 2631
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/y;->a:Landroid/support/v7/app/ActionBarActivity;

    const-class v1, Lde/gdata/mobilesecurity/intents/AccountManagementInApp;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 2633
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/y;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLicensedGoogleAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2634
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/y;->a:Landroid/support/v7/app/ActionBarActivity;

    const-class v1, Lde/gdata/mobilesecurity/intents/AccountManagementInApp;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 2636
    :cond_5
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/y;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->OCLgoUpdateInformations()V

    goto :goto_0
.end method
