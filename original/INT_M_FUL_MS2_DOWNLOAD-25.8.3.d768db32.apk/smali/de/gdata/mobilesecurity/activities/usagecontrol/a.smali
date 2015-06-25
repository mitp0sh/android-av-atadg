.class Lde/gdata/mobilesecurity/activities/usagecontrol/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/a;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/a;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/a;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/a;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->unlockThePhone(Landroid/content/Context;Z)V

    .line 116
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/a;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/a;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/a;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v2, 0x7f0d016e

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lde/gdata/mobilesecurity/util/MyUtil$SingleToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 121
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/a;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/a;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/a;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/a;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
