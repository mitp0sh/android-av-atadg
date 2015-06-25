.class Lde/gdata/mobilesecurity/activities/wizard/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/wizard/o;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/wizard/o;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/wizard/p;->a:Lde/gdata/mobilesecurity/activities/wizard/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 401
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/p;->a:Lde/gdata/mobilesecurity/activities/wizard/o;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/wizard/o;->h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isEulaAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/p;->a:Lde/gdata/mobilesecurity/activities/wizard/o;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/wizard/o;->h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0565

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 410
    :goto_0
    return-void

    .line 405
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 406
    const-string v1, "STARTED_FROM_WIZARD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/p;->a:Lde/gdata/mobilesecurity/activities/wizard/o;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/wizard/o;->h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/intents/AccountManagementPre;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 408
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/p;->a:Lde/gdata/mobilesecurity/activities/wizard/o;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/wizard/o;->h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/p;->a:Lde/gdata/mobilesecurity/activities/wizard/o;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/wizard/o;->h:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->a(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
