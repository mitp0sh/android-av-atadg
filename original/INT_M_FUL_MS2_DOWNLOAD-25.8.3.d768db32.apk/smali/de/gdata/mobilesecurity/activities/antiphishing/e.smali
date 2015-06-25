.class Lde/gdata/mobilesecurity/activities/antiphishing/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/e;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/e;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/e;->a:Landroid/view/View;

    const v1, 0x7f0b0133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 184
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/e;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/e;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->c(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/e;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->a(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/e;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->b(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->addBssidException(Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/e;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->finish()V

    .line 194
    return-void

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/e;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->a(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/e;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->b(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->addArpException(Ljava/lang/String;)V

    goto :goto_0
.end method
