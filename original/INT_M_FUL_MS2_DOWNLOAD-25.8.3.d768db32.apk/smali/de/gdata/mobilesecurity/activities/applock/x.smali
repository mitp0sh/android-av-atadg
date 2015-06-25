.class Lde/gdata/mobilesecurity/activities/applock/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/x;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 200
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/x;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b0111

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 202
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/x;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->d(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionAnswer()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/x;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->d(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 206
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/x;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0103

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 208
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/x;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->finish()V

    .line 216
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/x;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d016d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 213
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/x;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->e(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    goto :goto_0
.end method
