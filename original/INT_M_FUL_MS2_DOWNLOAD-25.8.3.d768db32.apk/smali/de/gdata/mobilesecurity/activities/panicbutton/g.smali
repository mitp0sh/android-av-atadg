.class Lde/gdata/mobilesecurity/activities/panicbutton/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/g;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/g;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->finish()V

    .line 70
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/g;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    const v1, 0x7f040007

    const v2, 0x7f04000d

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->overridePendingTransition(II)V

    .line 71
    return-void
.end method
