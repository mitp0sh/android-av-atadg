.class Lde/gdata/mobilesecurity/activities/usagecontrol/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/g;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/g;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/g;->a:Landroid/view/View;

    const v1, 0x7f0b0111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 313
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionAnswer()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/g;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    .line 318
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b()Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->unlockThePhone(Landroid/content/Context;Z)V

    .line 325
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/g;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d016d

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 322
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
