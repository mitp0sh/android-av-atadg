.class Lde/gdata/mobilesecurity/activities/wizard/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/wizard/g;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/g;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->j(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/g;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->pressNext()V

    .line 780
    :cond_0
    return-void
.end method
