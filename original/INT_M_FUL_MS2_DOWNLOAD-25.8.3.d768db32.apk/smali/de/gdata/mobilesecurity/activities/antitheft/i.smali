.class Lde/gdata/mobilesecurity/activities/antitheft/i;
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
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

.field private b:Z


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V
    .locals 1

    .prologue
    .line 657
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->b:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 662
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 663
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 665
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v1

    .line 666
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d00aa

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 667
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    const v4, 0x7f0d00ea

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 669
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-static {v4}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->b(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->b:Z

    .line 674
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 672
    :cond_0
    invoke-static {v0, v1, v2, v3}, Lde/gdata/mobilesecurity/util/EmailClient;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->b:Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 679
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->e(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 681
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 683
    iget-boolean v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->b:Z

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    const v2, 0x7f0d00ec

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 696
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/i;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    const v2, 0x7f0d00eb

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 694
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 657
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/antitheft/i;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 657
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/antitheft/i;->a(Ljava/lang/Void;)V

    return-void
.end method
