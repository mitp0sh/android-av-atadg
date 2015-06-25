.class Lde/gdata/mobilesecurity/activities/wizard/e;
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
    .line 476
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/wizard/e;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/e;->a:Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->pressExit()V

    .line 480
    return-void
.end method
