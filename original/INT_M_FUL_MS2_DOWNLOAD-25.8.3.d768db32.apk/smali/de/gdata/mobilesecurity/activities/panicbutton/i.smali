.class Lde/gdata/mobilesecurity/activities/panicbutton/i;
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
    .line 120
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 123
    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->a(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->b(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    const/4 v0, 0x0

    .line 131
    :goto_0
    if-eqz v0, :cond_2

    .line 132
    new-instance v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;-><init>(Landroid/content/Context;)V

    .line 133
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->c(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    move-result-object v3

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->a(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-static {v4}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->b(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setContact(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->c(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    const v3, 0x7f0d0205

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    :goto_2
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->c(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 138
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->c(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->addPanicAction(Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)V

    .line 139
    invoke-static {}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->endWizard()V

    goto :goto_2

    .line 142
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/i;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    const v3, 0x7f0d00ac

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method
