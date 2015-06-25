.class Lde/gdata/mobilesecurity/activities/panicbutton/b;
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
    .line 66
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/b;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/b;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->finish()V

    .line 70
    return-void
.end method
