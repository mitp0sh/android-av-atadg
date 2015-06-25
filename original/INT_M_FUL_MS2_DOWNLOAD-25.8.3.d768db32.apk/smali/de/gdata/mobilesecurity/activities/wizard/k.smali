.class Lde/gdata/mobilesecurity/activities/wizard/k;
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
    .line 263
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/wizard/k;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/k;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/k;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->e(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Lde/gdata/mobilesecurity/util/EulaListener;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->showEulaDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/util/EulaListener;)Landroid/support/v4/app/DialogFragment;

    .line 267
    return-void
.end method
