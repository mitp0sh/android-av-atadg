.class public Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field static d:Landroid/app/AlertDialog;

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static j:Landroid/view/MenuItem;

.field private static k:Landroid/widget/EditText;

.field private static l:Landroid/widget/EditText;

.field private static m:Landroid/widget/EditText;

.field private static n:Landroid/widget/EditText;

.field private static q:Ljava/lang/String;

.field private static r:Z

.field private static s:Z


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/Menu;

.field c:Landroid/support/v7/app/ActionBar;

.field private i:Landroid/app/ProgressDialog;

.field private o:Landroid/widget/CheckBox;

.field private p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    const/16 v0, 0x2f44

    sput v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->e:I

    .line 64
    const/16 v0, 0x2f45

    sput v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->f:I

    .line 65
    const/16 v0, 0x2f46

    sput v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->g:I

    .line 66
    const/16 v0, 0x2ee3

    sput v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->h:I

    .line 69
    sput-object v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->j:Landroid/view/MenuItem;

    .line 71
    sput-object v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    .line 72
    sput-object v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    .line 73
    sput-object v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->m:Landroid/widget/EditText;

    .line 74
    sput-object v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->n:Landroid/widget/EditText;

    .line 78
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->q:Ljava/lang/String;

    .line 79
    sput-boolean v2, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->r:Z

    .line 80
    sput-boolean v2, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->s:Z

    .line 85
    sput-object v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 75
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->o:Landroid/widget/CheckBox;

    .line 77
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 82
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    .line 83
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->b:Landroid/view/Menu;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->t:Z

    .line 712
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->e:I

    return v0
.end method

.method private static a(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 528
    new-instance v3, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v3, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 529
    const-string v0, ""

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    sget-object v4, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 531
    :goto_0
    sget-object v4, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 532
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_0

    .line 533
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 534
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSMSCommandPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 536
    if-eqz v0, :cond_1

    .line 537
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    if-eqz v0, :cond_5

    .line 538
    invoke-static {p1}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 539
    invoke-static {p0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/support/v4/app/Fragment;)V

    .line 571
    :cond_1
    :goto_1
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 572
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 575
    :cond_2
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setEmailForLocation(Ljava/lang/String;)V

    .line 576
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setRemotePasswordResetSender(Ljava/lang/String;)V

    .line 578
    sput-boolean v2, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->s:Z

    .line 580
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->f()V

    .line 581
    return-void

    :cond_3
    move v0, v2

    .line 529
    goto :goto_0

    .line 541
    :cond_4
    const-string v0, ""

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLocate(Z)V

    .line 545
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteRing(Z)V

    .line 546
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteMute(Z)V

    .line 547
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLock(Z)V

    .line 548
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 549
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    .line 551
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getSmsReceivers(Landroid/content/Context;Z)Ljava/util/Vector;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->checkedForSMSReceivers()Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    const-class v0, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCheckedForSMSReceivers(Z)V

    goto :goto_1

    .line 561
    :cond_5
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLocate(Z)V

    .line 562
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteRing(Z)V

    .line 563
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteMute(Z)V

    .line 565
    invoke-virtual {v3, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLock(Z)V

    .line 566
    invoke-virtual {v3, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 567
    invoke-virtual {v3, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 330
    const v0, 0x7f0b00e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    .line 331
    const v0, 0x7f0b00e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    .line 332
    const v0, 0x7f0b00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->m:Landroid/widget/EditText;

    .line 333
    const v0, 0x7f0b00e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->n:Landroid/widget/EditText;

    .line 334
    const v0, 0x7f0b00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->o:Landroid/widget/CheckBox;

    .line 335
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->c()V

    return-void
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->h:I

    return v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->o:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    const v1, 0x7f0b00de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d00c4

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    const v1, 0x7f0b00e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d00d7

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    const v1, 0x7f0b00e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d00d9

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d00a9

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static closeDialog()V
    .locals 1

    .prologue
    .line 600
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 601
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    .line 602
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v0

    .line 318
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getFirstRegisteredAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setEmailForLocation(Ljava/lang/String;)V

    .line 322
    :cond_0
    sget-object v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 323
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRemotePasswordResetSender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->f()V

    return-void
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment$SettingsTextWatcher;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment$SettingsTextWatcher;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 342
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment$SettingsTextWatcher;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment$SettingsTextWatcher;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 343
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->m:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment$SettingsTextWatcher;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment$SettingsTextWatcher;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 344
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->n:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment$SettingsTextWatcher;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment$SettingsTextWatcher;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 345
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->o:Landroid/widget/CheckBox;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isUninstallProtectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 346
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->o:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/f;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/f;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 365
    return-void
.end method

.method private f()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 394
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->q:Ljava/lang/String;

    .line 397
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".*\\D+.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    sget-object v3, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\D"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 399
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    sget-object v3, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 402
    :cond_0
    const-string v0, ""

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 403
    :goto_0
    sget-object v3, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->isPasswordSafe(Ljava/lang/String;)Z

    move-result v8

    .line 404
    sget-object v3, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v1

    .line 406
    :goto_1
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v1

    .line 407
    :goto_2
    sget-object v5, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    move v5, v1

    .line 408
    :goto_3
    sget-object v6, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    move v6, v1

    .line 410
    :goto_4
    sget-object v7, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->m:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 411
    :cond_1
    sget-object v7, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->m:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v9}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRemotePasswordResetSender()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    move v7, v1

    .line 413
    :goto_5
    if-nez v3, :cond_2

    if-nez v6, :cond_2

    if-eqz v7, :cond_10

    :cond_2
    move v6, v1

    :goto_6
    sput-boolean v6, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->s:Z

    .line 415
    if-eqz v0, :cond_11

    .line 416
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    const v6, 0x7f0d00bd

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 420
    :goto_7
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 421
    sget-object v6, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-static {v6, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 423
    if-eqz v3, :cond_12

    if-eqz v8, :cond_12

    .line 424
    sget-object v6, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 428
    :goto_8
    sget-object v6, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    invoke-static {v6, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 430
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->b:Landroid/view/Menu;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_9
    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->j:Landroid/view/MenuItem;

    .line 431
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->j:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 432
    if-eqz v4, :cond_15

    .line 433
    sget-object v4, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->j:Landroid/view/MenuItem;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_14

    move v0, v1

    :goto_a
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 438
    :cond_3
    :goto_b
    sget-object v4, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    move v0, v1

    :goto_c
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 439
    sget-object v4, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    move v0, v1

    :goto_d
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 440
    sget-object v4, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_18

    move v0, v1

    :goto_e
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 441
    sget-object v4, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_19

    move v0, v1

    :goto_f
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 442
    sget-object v4, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->n:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_10
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 443
    sget-object v4, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->n:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_11
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 445
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->s:Z

    if-eqz v0, :cond_1d

    .line 446
    if-eqz v5, :cond_4

    .line 447
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 448
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d00ac

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->q:Ljava/lang/String;

    .line 450
    :cond_4
    if-eqz v3, :cond_7

    .line 451
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 452
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d00b2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->q:Ljava/lang/String;

    .line 453
    :cond_5
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 454
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d00af

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->q:Ljava/lang/String;

    .line 455
    :cond_6
    if-nez v8, :cond_7

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d00ae

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->q:Ljava/lang/String;

    .line 458
    :cond_7
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->c:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_8

    .line 459
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->t:Z

    .line 460
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->c:Landroid/support/v7/app/ActionBar;

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->showCustomActionBarLayout(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;)V

    .line 463
    :cond_8
    const-string v0, ""

    sget-object v3, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_12
    sput-boolean v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->r:Z

    .line 468
    :cond_9
    :goto_13
    return-void

    :cond_a
    move v0, v2

    .line 402
    goto/16 :goto_0

    :cond_b
    move v3, v2

    .line 404
    goto/16 :goto_1

    :cond_c
    move v4, v2

    .line 406
    goto/16 :goto_2

    :cond_d
    move v5, v2

    .line 407
    goto/16 :goto_3

    :cond_e
    move v6, v2

    .line 408
    goto/16 :goto_4

    :cond_f
    move v7, v2

    .line 411
    goto/16 :goto_5

    :cond_10
    move v6, v2

    .line 413
    goto/16 :goto_6

    .line 418
    :cond_11
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    const v6, 0x7f0d00bf

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_7

    .line 426
    :cond_12
    sget-object v6, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_8

    .line 430
    :cond_13
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->b:Landroid/view/Menu;

    sget v6, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->g:I

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto/16 :goto_9

    :cond_14
    move v0, v2

    .line 433
    goto/16 :goto_a

    .line 435
    :cond_15
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->j:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    :cond_16
    move v0, v2

    .line 438
    goto/16 :goto_c

    :cond_17
    move v0, v2

    .line 439
    goto/16 :goto_d

    :cond_18
    move v0, v2

    .line 440
    goto/16 :goto_e

    :cond_19
    move v0, v2

    .line 441
    goto/16 :goto_f

    :cond_1a
    move v0, v2

    .line 442
    goto/16 :goto_10

    :cond_1b
    move v0, v2

    .line 443
    goto/16 :goto_11

    :cond_1c
    move v1, v2

    .line 463
    goto :goto_12

    .line 464
    :cond_1d
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->c:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_9

    .line 465
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->t:Z

    .line 466
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->c:Landroid/support/v7/app/ActionBar;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->hideCustomActionBarLayout(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;)V

    goto :goto_13
.end method

.method public static hideCustomActionBarLayout(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;)V
    .locals 1

    .prologue
    .line 592
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 594
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 596
    check-cast p0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->supportInvalidateOptionsMenu()V

    .line 597
    return-void
.end method

.method public static isPasswordSafe(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 635
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 636
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 637
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 638
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_0
    if-lez v0, :cond_1

    .line 640
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 641
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 648
    :cond_3
    :goto_1
    return v1

    .line 645
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_3

    .line 646
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_3

    move v1, v2

    .line 648
    goto :goto_1
.end method

.method public static isValidEmailAddress(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 706
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".{1,256}@.+\\.[a-zA-Z]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showCustomActionBarLayout(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;)V
    .locals 2

    .prologue
    .line 584
    const/16 v0, 0x10

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 586
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 588
    check-cast p0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->supportInvalidateOptionsMenu()V

    .line 589
    return-void
.end method

.method public static startAntiTheftHelp(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lde/gdata/mobilesecurity/activities/help/Help;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    const-string v2, "helpTitle"

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00bb

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v2, "helpBody"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<html><head><title></title><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body style=\'background-color:#ffffff;color:#404040;font-size:15\'><div>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d00b4

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br /><hr />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d00b5

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br /><hr />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d00bc

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br /><hr />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d00b9

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br /><hr />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d00b7

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br /><hr />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d00b6

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br /><hr />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d00ba

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br /><hr />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d00b8

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</div></body></html>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method


# virtual methods
.method public finishActionMode(Landroid/app/Activity;I)V
    .locals 4

    .prologue
    .line 485
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->s:Z

    if-eqz v0, :cond_3

    .line 486
    sget v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->h:I

    if-ne p2, v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->resetValues()V

    .line 488
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->f()V

    .line 522
    :goto_0
    return-void

    .line 490
    :cond_0
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->r:Z

    if-eqz v0, :cond_2

    .line 491
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 493
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0115

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00a5

    new-instance v2, Lde/gdata/mobilesecurity/activities/antitheft/h;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/antitheft/h;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00a4

    new-instance v2, Lde/gdata/mobilesecurity/activities/antitheft/g;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/antitheft/g;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    .line 515
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 516
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 519
    :cond_2
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 521
    :cond_3
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->f()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isFirstAntitheftStart()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 102
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 103
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d00f2

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d00f1

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0240

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lde/gdata/mobilesecurity/activities/antitheft/a;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/activities/antitheft/a;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    invoke-static {v0, v1, v2, v3, v4}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "WARNING_DIALOG"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntitheftStarted(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 609
    const-string v0, "onActivityResult"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v0

    .line 612
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLocate(Z)V

    .line 613
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteRing(Z)V

    .line 614
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteMute(Z)V

    .line 615
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLock(Z)V

    .line 616
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 617
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    .line 619
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getSmsReceivers(Landroid/content/Context;Z)Ljava/util/Vector;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->checkedForSMSReceivers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 623
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCheckedForSMSReceivers(Z)V

    .line 626
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 471
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 474
    :goto_0
    return v0

    .line 473
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->e:I

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->finishActionMode(Landroid/app/Activity;I)V

    .line 474
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->setHasOptionsMenu(Z)V

    .line 93
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->c:Landroid/support/v7/app/ActionBar;

    .line 95
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 120
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->b:Landroid/view/Menu;

    .line 123
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 124
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->t:Z

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 128
    sget v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->g:I

    const v1, 0x7f0d00ab

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020071

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 132
    :cond_0
    sget v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->f:I

    const v1, 0x7f0d00b3

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020075

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 133
    invoke-static {v0, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 137
    const v0, 0x7f0b0393

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 140
    const v1, 0x7f0b0156

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 142
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 143
    if-eqz v1, :cond_3

    .line 144
    const v2, 0x7f0d00dd

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v2, Lde/gdata/mobilesecurity/activities/antitheft/b;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/antitheft/b;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 155
    if-eqz v0, :cond_1

    .line 156
    const v1, 0x7f0d021e

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/c;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/c;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/high16 v6, 0x10000000

    const/16 v0, 0x8

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 213
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    .line 274
    :goto_0
    return-object v0

    .line 215
    :cond_0
    const v2, 0x7f030029

    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    .line 216
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 217
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    const v3, 0x7f0b00df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 218
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isActionCenterEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    new-instance v3, Lde/gdata/webportal/android/Preferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lde/gdata/webportal/android/Preferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lde/gdata/webportal/android/Preferences;->isWebPortalEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 221
    const v0, 0x7f0b00e0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lde/gdata/mobilesecurity/activities/antitheft/d;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/antitheft/d;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :goto_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 232
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 234
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a(Landroid/view/View;)V

    .line 236
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 237
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 238
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 239
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 240
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 241
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 243
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->i:Landroid/app/ProgressDialog;

    .line 244
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->i:Landroid/app/ProgressDialog;

    const v2, 0x7f0d00da

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 246
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d()V

    .line 247
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->e()V

    .line 249
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x4

    if-lt v0, v2, :cond_3

    .line 250
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->c()V

    .line 272
    :goto_2
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->f()V

    .line 274
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 229
    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 254
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->a:Landroid/view/View;

    const v2, 0x7f0b00de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d0213

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 259
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/high16 v6, -0x10000

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 260
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v4, v5, v6, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 261
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/e;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/e;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->g:I

    if-ne v1, v2, :cond_0

    .line 201
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->testEmail()V

    .line 208
    :goto_0
    return v0

    .line 203
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->f:I

    if-ne v1, v2, :cond_1

    .line 204
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->startAntiTheftHelp(Landroid/app/Activity;)V

    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 281
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 282
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 288
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->b:Landroid/view/Menu;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->j:Landroid/view/MenuItem;

    .line 289
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->j:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->j:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 295
    :cond_0
    :goto_1
    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_1
    :goto_2
    return-void

    .line 288
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->b:Landroid/view/Menu;

    sget v2, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->g:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_3
    sget-object v2, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->j:Landroid/view/MenuItem;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    .line 296
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public resetValues()V
    .locals 2

    .prologue
    .line 478
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->k:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 479
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->l:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRemotePasswordResetSender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 481
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 482
    return-void
.end method

.method public testEmail()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 657
    new-instance v0, Lde/gdata/mobilesecurity/activities/antitheft/i;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/antitheft/i;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 698
    return-void
.end method
