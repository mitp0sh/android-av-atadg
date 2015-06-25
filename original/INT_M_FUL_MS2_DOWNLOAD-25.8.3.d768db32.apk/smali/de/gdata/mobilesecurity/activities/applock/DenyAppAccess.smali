.class public Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private c:Landroid/support/v4/app/DialogFragment;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->finish()V

    .line 191
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->a()V

    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected createDialog(I)Landroid/support/v4/app/DialogFragment;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 83
    packed-switch p1, :pswitch_data_0

    .line 154
    :goto_0
    return-object v5

    .line 85
    :pswitch_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isPhoneLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->startActivity(Landroid/content/Intent;)V

    .line 94
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->overridePendingTransition(II)V

    .line 95
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->finish()V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->startActivity(Landroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->finish()V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->a()V

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 111
    const v1, 0x7f03002c

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 113
    const v0, 0x7f0d0112

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d0240

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d010f

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lde/gdata/mobilesecurity/activities/applock/i;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/activities/applock/i;-><init>(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V

    iget v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->e:I

    sget v6, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_REQUEST:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_3

    new-instance v5, Lde/gdata/mobilesecurity/activities/applock/j;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/activities/applock/j;-><init>(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V

    :cond_3
    new-instance v6, Lde/gdata/mobilesecurity/activities/applock/k;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/applock/k;-><init>(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Landroid/support/v4/app/DialogFragment;

    move-result-object v5

    .line 135
    iput-object v5, p0, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->c:Landroid/support/v4/app/DialogFragment;

    .line 137
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setCanceledOnTouchOutside(Z)V

    .line 138
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/l;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/applock/l;-><init>(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 148
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "DIALOG_TAG"

    invoke-virtual {v5, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->a()V

    .line 197
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "protectedComponent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->d:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "permissions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->e:I

    .line 54
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    const-string v1, "FINISH_MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->createDialog(I)Landroid/support/v4/app/DialogFragment;

    .line 64
    return-void
.end method

.method public onHintClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/activities/help/Help;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const-string v1, "helpTitle"

    const-string v2, "Hilfe"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v1, "helpBody"

    const-string v2, "<html><head><title></title><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body style=\'background-color:#ffffffff;color:#404040;font-size:15\'><div>Erl&auml;uterung zu blockierten Apps ....<br /><hr />Dies und das ....<br /><hr />etc.<br /></div></body></html>"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->onPause()V

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->finish()V

    .line 76
    :cond_0
    return-void
.end method
