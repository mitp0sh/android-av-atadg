.class public Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->finish()V

    .line 116
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->a()V

    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected createDialog(I)Landroid/support/v4/app/DialogFragment;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 55
    packed-switch p1, :pswitch_data_0

    .line 85
    :goto_0
    return-object v5

    .line 58
    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    const v1, 0x7f03003f

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 61
    const v0, 0x7f0d01a9

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d0240

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d01a8

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lde/gdata/mobilesecurity/activities/callfilter/a;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/activities/callfilter/a;-><init>(Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;)V

    iget v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->d:I

    sget v6, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->ALLOW_REQUEST:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_0

    new-instance v5, Lde/gdata/mobilesecurity/activities/callfilter/b;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/activities/callfilter/b;-><init>(Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;)V

    :cond_0
    new-instance v6, Lde/gdata/mobilesecurity/activities/callfilter/c;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/callfilter/c;-><init>(Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Landroid/support/v4/app/DialogFragment;

    move-result-object v5

    .line 79
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 80
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "DIALOG_TAG"

    invoke-virtual {v5, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->a()V

    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "blockedNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->c:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "permissions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->d:I

    .line 43
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->createDialog(I)Landroid/support/v4/app/DialogFragment;

    .line 46
    return-void
.end method

.method public onHintClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/activities/help/Help;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const-string v1, "helpTitle"

    const-string v2, "Hilfe"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "helpBody"

    const-string v2, "<html><head><title></title><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body style=\'background-color:#ffffffff;color:#404040;font-size:15\'><div>Erl&auml;uterung zum blockierten Anruf ....<br /><hr />Dies und das ....<br /><hr />etc.<br /></div></body></html>"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method
