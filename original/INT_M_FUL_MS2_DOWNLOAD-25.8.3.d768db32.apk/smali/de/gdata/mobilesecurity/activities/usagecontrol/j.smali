.class Lde/gdata/mobilesecurity/activities/usagecontrol/j;
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
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/i;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/i;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/j;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 350
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b()Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 351
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionEmail()Ljava/lang/String;

    move-result-object v2

    .line 354
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/j;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/i;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/usagecontrol/i;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b()Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    move-result-object v3

    const v4, 0x7f0d011b

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 357
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/j;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/i;

    iget-object v4, v4, Lde/gdata/mobilesecurity/activities/usagecontrol/i;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v5, 0x7f0d02d2

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#code#"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {v0, v2, v3, v1}, Lde/gdata/mobilesecurity/util/EmailClient;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a(Z)Z

    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 367
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b()Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/j;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/i;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/usagecontrol/i;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v2, 0x7f0d011c

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b()Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    move-result-object v2

    const v3, 0x7f0d0119

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 373
    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 375
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 377
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/j;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/i;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/usagecontrol/i;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 380
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 346
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/j;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 346
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/j;->a(Ljava/lang/Void;)V

    return-void
.end method
