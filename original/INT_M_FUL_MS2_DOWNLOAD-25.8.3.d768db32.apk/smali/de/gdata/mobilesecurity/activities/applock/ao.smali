.class Lde/gdata/mobilesecurity/activities/applock/ao;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

.field private b:Z


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V
    .locals 1

    .prologue
    .line 673
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->b:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 678
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 679
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 681
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v1

    .line 682
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d011b

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 683
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    const v4, 0x7f0d0167

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 685
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-static {v4}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->b(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->b:Z

    .line 690
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 688
    :cond_0
    invoke-static {v0, v1, v2, v3}, Lde/gdata/mobilesecurity/util/EmailClient;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->b:Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 695
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->f(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 697
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 699
    iget-boolean v1, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->b:Z

    if-eqz v1, :cond_0

    .line 700
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    const v2, 0x7f0d0169

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 703
    invoke-virtual {v0, v5, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 704
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 714
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/ao;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    const v2, 0x7f0d0168

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 710
    invoke-virtual {v0, v5, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 711
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 712
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 673
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/ao;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 673
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/ao;->a(Ljava/lang/Void;)V

    return-void
.end method
