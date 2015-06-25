.class public Lde/gdata/mobilesecurity/activities/applock/ProtectApp;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# static fields
.field public static final EXTRA_PROTECTED_COMPONENT:Ljava/lang/String; = "protectedComponent"

.field public static final EXTRA_PROTECTED_TASK:Ljava/lang/String; = "protectedTask"

.field public static final EXTRA_RETURN_TO_TASK:Ljava/lang/String; = "returnToTask"

.field private static g:I

.field public static volatile lastUnlock:J


# instance fields
.field private a:Ljava/lang/String;

.field private c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private d:Landroid/app/AlertDialog;

.field private e:Landroid/app/Dialog;

.field private f:Landroid/app/AlertDialog;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput v0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    .line 45
    const-string v0, "0000"

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->a:Ljava/lang/String;

    .line 71
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/n;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/applock/n;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->h:Landroid/view/View$OnClickListener;

    .line 390
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->g:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 40
    sput p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->g:I

    return p0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->e:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b()I
    .locals 2

    .prologue
    .line 40
    sget v0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->g:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->g:I

    return v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->f:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f070006

    .line 146
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "1"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    const-string v1, "2"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 152
    :cond_2
    const-string v1, "3"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 154
    :cond_3
    const-string v1, "4"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "de.gdata.FINISH_UNINSTALL_PROTECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->startActivity(Landroid/content/Intent;)V

    .line 373
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->finish()V

    .line 374
    return-void
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->d()V

    return-void
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->d:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->d()V

    .line 382
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 106
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->setContentView(I)V

    .line 109
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 110
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->a:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "protectedComponent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_1

    .line 115
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    const-string v1, "FINISH_MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    :cond_1
    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->showDialog(I)V

    .line 123
    sget v0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->g:I

    if-lez v0, :cond_2

    .line 124
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/aa;

    invoke-direct {v0, p0, v3}, Lde/gdata/mobilesecurity/activities/applock/aa;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;Z)V

    .line 125
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    :cond_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const v6, 0x7f0d021e

    const/4 v5, -0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    packed-switch p1, :pswitch_data_0

    .line 333
    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d012c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0100

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00fe

    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/u;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/applock/u;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00ff

    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/t;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/applock/t;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d021f

    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/s;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/applock/s;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 191
    const v2, 0x7f03002e

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 192
    const v0, 0x7f0b0110

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d014b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0240

    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/x;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/applock/x;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/w;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/w;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/v;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/v;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->f:Landroid/app/AlertDialog;

    .line 228
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 229
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->f:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 232
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0141

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0148

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0146

    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/o;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/applock/o;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/z;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/z;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/y;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/y;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 289
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 293
    :pswitch_3
    const-string v0, ""

    const v1, 0x7f0d0142

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->d:Landroid/app/AlertDialog;

    .line 296
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->d:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 299
    :pswitch_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 300
    const v2, 0x7f03005b

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 302
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->e:Landroid/app/Dialog;

    .line 304
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->e:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 306
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 308
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->e:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 311
    const v0, 0x7f0b0203

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 312
    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/q;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/applock/q;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->initNumpad(Landroid/view/View;)V

    .line 320
    const v0, 0x7f0b027d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->e:Landroid/app/Dialog;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/r;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/r;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 328
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->e:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 329
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->e:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 330
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->e:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onHintClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionQuestion()Ljava/lang/String;

    move-result-object v3

    .line 344
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v4

    .line 345
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionAnswer()Ljava/lang/String;

    move-result-object v5

    .line 348
    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 349
    :goto_0
    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0d0102

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 352
    :cond_0
    :goto_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 360
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 348
    goto :goto_0

    :cond_3
    move v1, v2

    .line 349
    goto :goto_1

    .line 353
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 354
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->showDialog(I)V

    goto :goto_2

    .line 355
    :cond_5
    if-eqz v1, :cond_6

    .line 356
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->showDialog(I)V

    goto :goto_2

    .line 357
    :cond_6
    if-eqz v0, :cond_1

    .line 358
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->showDialog(I)V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->onPause()V

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->finish()V

    .line 139
    :cond_0
    return-void
.end method
