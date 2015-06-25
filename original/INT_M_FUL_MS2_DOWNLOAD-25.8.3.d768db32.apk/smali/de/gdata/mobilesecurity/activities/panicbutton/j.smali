.class Lde/gdata/mobilesecurity/activities/panicbutton/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/j;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/j;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->b(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/j;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->a(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
