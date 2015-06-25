.class public Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public createDialog()V
    .locals 8

    .prologue
    const v6, 0x7f0d00f0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 41
    invoke-static {p0, v5}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getSmsReceivers(Landroid/content/Context;Z)Ljava/util/Vector;

    move-result-object v2

    .line 42
    const-string v0, ""

    .line 44
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->finish()V

    .line 94
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_3

    .line 55
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d00ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_2
    const-string v2, "#app#"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-nez v0, :cond_4

    .line 66
    invoke-virtual {p0, v6}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d00ed

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d021e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lde/gdata/mobilesecurity/activities/antitheft/y;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/activities/antitheft/y;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;)V

    new-instance v6, Lde/gdata/mobilesecurity/activities/antitheft/z;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/antitheft/z;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v7}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 80
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d00ef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {p0, v6}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0240

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lde/gdata/mobilesecurity/activities/antitheft/aa;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/activities/antitheft/aa;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;)V

    invoke-static {p0, v0, v2, v1, v3}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v7}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 91
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public deinstallSmsApps()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-static {p0, v3}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getSmsReceivers(Landroid/content/Context;Z)Ljava/util/Vector;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 113
    invoke-virtual {p0, v1, v3}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->startActivityForResult(Landroid/content/Intent;I)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->finish()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 125
    const-class v0, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->finish()V

    .line 127
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->finish()V

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 31
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->createDialog()V

    .line 34
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method
