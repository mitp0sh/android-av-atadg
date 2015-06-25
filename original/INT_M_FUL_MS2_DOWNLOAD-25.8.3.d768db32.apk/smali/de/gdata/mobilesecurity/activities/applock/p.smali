.class Lde/gdata/mobilesecurity/activities/applock/p;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/o;

.field private b:Z


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/o;)V
    .locals 1

    .prologue
    .line 240
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/p;->a:Lde/gdata/mobilesecurity/activities/applock/o;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/p;->b:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 245
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/p;->a:Lde/gdata/mobilesecurity/activities/applock/o;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/applock/o;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 246
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v2

    .line 249
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/p;->a:Lde/gdata/mobilesecurity/activities/applock/o;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/applock/o;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/p;->a:Lde/gdata/mobilesecurity/activities/applock/o;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/applock/o;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    const v4, 0x7f0d011b

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 251
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/applock/p;->a:Lde/gdata/mobilesecurity/activities/applock/o;

    iget-object v4, v4, Lde/gdata/mobilesecurity/activities/applock/o;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    const v5, 0x7f0d0118

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#code#"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v0, v2, v3, v1}, Lde/gdata/mobilesecurity/util/EmailClient;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/p;->b:Z

    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 260
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/p;->a:Lde/gdata/mobilesecurity/activities/applock/o;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/applock/o;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->f(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 262
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/p;->a:Lde/gdata/mobilesecurity/activities/applock/o;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/applock/o;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    const v1, 0x7f0d011c

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/p;->a:Lde/gdata/mobilesecurity/activities/applock/o;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/applock/o;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    const v2, 0x7f0d0119

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 265
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/p;->a:Lde/gdata/mobilesecurity/activities/applock/o;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/applock/o;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 266
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/p;->a:Lde/gdata/mobilesecurity/activities/applock/o;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/applock/o;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 268
    iget-boolean v2, p0, Lde/gdata/mobilesecurity/activities/applock/p;->b:Z

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 273
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/p;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 240
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/p;->a(Ljava/lang/Void;)V

    return-void
.end method
