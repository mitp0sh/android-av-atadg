.class public Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# static fields
.field public static volatile isActive:Z


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->isActive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    .line 41
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->showProtectDialog(I)V

    .line 42
    return-void

    .line 39
    :cond_0
    const-string v1, "phishingPageNOrigin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method protected showProtectDialog(I)V
    .locals 7

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->isActive:Z

    .line 47
    packed-switch p1, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 52
    :pswitch_0
    const v0, 0x7f0d054d

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d054c

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d054a

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d054b

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lde/gdata/mobilesecurity/activities/antiphishing/i;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/activities/antiphishing/i;-><init>(Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;)V

    new-instance v6, Lde/gdata/mobilesecurity/activities/antiphishing/j;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/antiphishing/j;-><init>(Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 110
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 111
    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
