.class Lde/gdata/mobilesecurity/activities/panicbutton/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/m;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 141
    if-nez p1, :cond_0

    move v0, v1

    .line 142
    :goto_0
    rem-int/lit16 v0, v0, 0xa0

    rsub-int v0, v0, 0xa0

    .line 143
    const/16 v2, 0xa0

    if-ne v0, v2, :cond_1

    .line 146
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/m;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->c(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void

    .line 141
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
