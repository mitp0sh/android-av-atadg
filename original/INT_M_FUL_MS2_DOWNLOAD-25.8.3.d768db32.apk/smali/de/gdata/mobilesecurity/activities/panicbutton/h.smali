.class Lde/gdata/mobilesecurity/activities/panicbutton/h;
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
    .line 114
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/h;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/h;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->onListClicked()V

    .line 118
    return-void
.end method
