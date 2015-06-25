.class Lde/gdata/mobilesecurity/activities/usagecontrol/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/l;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionEmail()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionAnswer()Ljava/lang/String;

    move-result-object v5

    .line 141
    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 142
    :goto_0
    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/l;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v5, 0x7f0d0102

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 145
    :cond_0
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 147
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b()Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/l;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v2, 0x7f0d012c

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/l;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v3, 0x7f0d0100

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/l;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v4, 0x7f0d00fe

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/l;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v5, 0x7f0d00ff

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/l;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v6, 0x7f0d021f

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lde/gdata/mobilesecurity/activities/usagecontrol/m;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/m;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/l;)V

    new-instance v7, Lde/gdata/mobilesecurity/activities/usagecontrol/n;

    invoke-direct {v7, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/n;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/l;)V

    new-instance v8, Lde/gdata/mobilesecurity/activities/usagecontrol/o;

    invoke-direct {v8, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/o;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/l;)V

    invoke-static/range {v0 .. v8}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    .line 167
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/l;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "PASSWORD_CHOOSE_DIALOG"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 173
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 141
    goto :goto_0

    :cond_3
    move v1, v2

    .line 142
    goto :goto_1

    .line 168
    :cond_4
    if-eqz v0, :cond_5

    .line 169
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/l;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    goto :goto_2

    .line 170
    :cond_5
    if-eqz v1, :cond_1

    .line 171
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/l;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    goto :goto_2
.end method
