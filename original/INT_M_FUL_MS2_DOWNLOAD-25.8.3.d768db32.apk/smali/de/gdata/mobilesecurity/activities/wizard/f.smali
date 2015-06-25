.class Lde/gdata/mobilesecurity/activities/wizard/f;
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
    .line 538
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/wizard/f;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/f;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWizardShown(Z)V

    .line 542
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/f;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 543
    return-void
.end method
