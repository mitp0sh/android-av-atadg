.class Lde/gdata/mobilesecurity/activities/wizard/i;
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
    .line 215
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/wizard/i;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    const-string v1, "STARTED_FROM_WIZARD"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/i;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/intents/AccountManagementPre;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/i;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/i;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->a(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 222
    return-void
.end method
