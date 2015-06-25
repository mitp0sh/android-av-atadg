.class Lde/gdata/mobilesecurity/activities/panicbutton/ae;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ae;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ae;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->c(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ae;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->c(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->DURATION:I

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ae;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->d(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    sget v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->DURATION:I

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ae;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->d(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ae;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->finish()V

    .line 114
    :cond_0
    return-void
.end method
