.class Lde/gdata/mobilesecurity/activities/panicbutton/l;
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
    .line 90
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/l;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/l;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->finish()V

    .line 94
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/l;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;

    const v1, 0x7f040007

    const v2, 0x7f04000d

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->overridePendingTransition(II)V

    .line 95
    return-void
.end method
