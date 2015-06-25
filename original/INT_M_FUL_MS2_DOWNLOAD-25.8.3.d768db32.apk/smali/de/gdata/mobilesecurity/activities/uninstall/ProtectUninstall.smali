.class public Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# static fields
.field public static final FINISH_UNINSTALL_PROTECTION:Ljava/lang/String; = "de.gdata.FINISH_UNINSTALL_PROTECTION"

.field public static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field a:Landroid/support/v4/app/DialogFragment;

.field private c:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall$BaseActivityReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->a()Landroid/content/IntentFilter;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    .line 28
    new-instance v0, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall$BaseActivityReceiver;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall$BaseActivityReceiver;-><init>(Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->c:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall$BaseActivityReceiver;

    .line 143
    return-void
.end method

.method private static a()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    const-string v1, "de.gdata.FINISH_UNINSTALL_PROTECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->startActivity(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->finish()V

    .line 135
    return-void
.end method


# virtual methods
.method protected createDialog(I)Landroid/support/v4/app/DialogFragment;
    .locals 7

    .prologue
    .line 67
    packed-switch p1, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    const v0, 0x7f0d04a0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    const-string v0, ""

    .line 72
    new-instance v2, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->getHiddenCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 73
    const v0, 0x7f0d0486

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    const v0, 0x7f0d04a1

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d0240

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d021e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lde/gdata/mobilesecurity/activities/uninstall/a;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/activities/uninstall/a;-><init>(Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;)V

    new-instance v6, Lde/gdata/mobilesecurity/activities/uninstall/b;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/uninstall/b;-><init>(Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->a:Landroid/support/v4/app/DialogFragment;

    .line 100
    new-instance v0, Lde/gdata/mobilesecurity/activities/uninstall/c;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/uninstall/c;-><init>(Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;)V

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setmOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 105
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->a:Landroid/support/v4/app/DialogFragment;

    const-string v2, "UNINSTALL_DIALOG"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->a:Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->b()V

    .line 141
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->setContentView(I)V

    .line 46
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->c:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall$BaseActivityReceiver;

    sget-object v1, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->createDialog(I)Landroid/support/v4/app/DialogFragment;

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->onDestroy()V

    .line 155
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->c:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall$BaseActivityReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->onPause()V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->onResume()V

    .line 60
    return-void
.end method
