.class Lde/gdata/mobilesecurity/activities/panicbutton/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/d;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/d;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->a(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/d;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/d;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/d;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/panicbutton/d;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;

    const v5, 0x7f0d03ef

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->getPositionForActionProfile(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/d;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->b(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;)V

    .line 94
    return-void
.end method
