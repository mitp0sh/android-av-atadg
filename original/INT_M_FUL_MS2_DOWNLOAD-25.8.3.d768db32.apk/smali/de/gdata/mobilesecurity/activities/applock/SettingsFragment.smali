.class public Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field static d:Landroid/support/v4/app/DialogFragment;

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static j:Landroid/view/MenuItem;

.field private static k:Landroid/view/MenuItem;

.field private static o:Landroid/widget/EditText;

.field private static q:Landroid/widget/EditText;

.field private static r:Landroid/widget/TextView;

.field private static s:Landroid/widget/Spinner;

.field private static t:Landroid/widget/EditText;

.field private static u:Landroid/widget/EditText;

.field private static w:Ljava/lang/String;

.field private static x:Z

.field private static y:Z

.field private static z:Landroid/support/v4/app/FragmentManager;


# instance fields
.field private A:Z

.field private B:Z

.field a:Landroid/view/View;

.field b:Landroid/view/Menu;

.field c:Landroid/support/v7/app/ActionBar;

.field private i:Landroid/app/ProgressDialog;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/TextView;

.field private p:Landroid/widget/EditText;

.field private v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    const/16 v0, 0x44c

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->e:I

    .line 70
    const/16 v0, 0x44d

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->f:I

    .line 71
    const/16 v0, 0x44e

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->g:I

    .line 72
    const/16 v0, 0x44f

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->h:I

    .line 75
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->j:Landroid/view/MenuItem;

    .line 76
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->k:Landroid/view/MenuItem;

    .line 81
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    .line 83
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->q:Landroid/widget/EditText;

    .line 84
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->r:Landroid/widget/TextView;

    .line 85
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->s:Landroid/widget/Spinner;

    .line 86
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    .line 87
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->u:Landroid/widget/EditText;

    .line 90
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->w:Ljava/lang/String;

    .line 91
    sput-boolean v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->x:Z

    .line 92
    sput-boolean v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->y:Z

    .line 99
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->d:Landroid/support/v4/app/DialogFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 78
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->l:Landroid/widget/CheckBox;

    .line 79
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->m:Landroid/widget/CheckBox;

    .line 80
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->n:Landroid/widget/TextView;

    .line 82
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    .line 89
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 96
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    .line 97
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->b:Landroid/view/Menu;

    .line 101
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->A:Z

    .line 102
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->B:Z

    .line 656
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->e:I

    return v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 587
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 589
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSMSCommandPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 595
    :cond_0
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionEmail(Ljava/lang/String;)V

    .line 596
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionCustomQuestion(Ljava/lang/String;)V

    .line 597
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->u:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionAnswer(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 600
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->s:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionQuestion(Ljava/lang/String;)V

    .line 602
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->j:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 603
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 604
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->j:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 609
    :cond_1
    :goto_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 611
    return-void

    .line 606
    :cond_2
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->j:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->c()V

    return-void
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->h:I

    return v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->l:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b0120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d013d

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0140

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d011a

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b0110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0145

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method public static closeDialog()V
    .locals 1

    .prologue
    .line 614
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->d:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 615
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->d:Landroid/support/v4/app/DialogFragment;

    .line 616
    return-void
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->m:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->l:Landroid/widget/CheckBox;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 287
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->m:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v0

    .line 290
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getFirstRegisteredAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionEmail(Ljava/lang/String;)V

    .line 294
    :cond_0
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 296
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->u:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionAnswer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 297
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 300
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 301
    aget-object v2, v1, v0

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionQuestion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->s:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 300
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_2
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->l:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/aj;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/aj;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 371
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/ak;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/applock/ak;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    .line 384
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->m:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/aq;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/aq;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 388
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/aq;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/aq;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 390
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->q:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/aq;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/aq;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 391
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0117

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/aq;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/aq;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 394
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->u:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/aq;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/aq;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 395
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->s:Landroid/widget/Spinner;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/ap;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/ap;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 396
    return-void
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->g()V

    return-void
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b0122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->l:Landroid/widget/CheckBox;

    .line 416
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->m:Landroid/widget/CheckBox;

    .line 417
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->n:Landroid/widget/TextView;

    .line 419
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b0129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    .line 420
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    .line 422
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->q:Landroid/widget/EditText;

    .line 423
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->r:Landroid/widget/TextView;

    .line 425
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->s:Landroid/widget/Spinner;

    .line 426
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    .line 427
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->u:Landroid/widget/EditText;

    .line 428
    return-void
.end method

.method private g()V
    .locals 13

    .prologue
    .line 434
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->w:Ljava/lang/String;

    .line 437
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\D+.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\D"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 439
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 442
    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 443
    :goto_0
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->isPasswordSafe(Ljava/lang/String;)Z

    move-result v10

    .line 444
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    .line 446
    :goto_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    .line 447
    :goto_2
    sget-object v3, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    .line 448
    :goto_3
    sget-object v4, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x1

    .line 450
    :goto_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 451
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0102

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->s:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 453
    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionQuestion()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->s:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v5, 0x1

    .line 455
    :goto_5
    sget-object v6, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v6, 0x1

    .line 456
    :goto_6
    sget-object v7, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    const/4 v7, 0x1

    .line 459
    :goto_7
    sget-object v8, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->u:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    const/4 v8, 0x1

    .line 460
    :goto_8
    sget-object v9, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->u:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v12, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v12}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionAnswer()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    const/4 v9, 0x1

    .line 462
    :goto_9
    if-nez v1, :cond_1

    if-nez v4, :cond_1

    if-nez v9, :cond_1

    if-nez v5, :cond_1

    if-eqz v11, :cond_15

    if-eqz v7, :cond_15

    :cond_1
    const/4 v4, 0x1

    :goto_a
    sput-boolean v4, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->y:Z

    .line 465
    if-eqz v0, :cond_16

    .line 466
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    const v4, 0x7f0d0135

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 470
    :goto_b
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 471
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 473
    if-eqz v11, :cond_17

    .line 474
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 478
    :goto_c
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 480
    if-eqz v1, :cond_18

    if-eqz v10, :cond_18

    .line 481
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 485
    :goto_d
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 487
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->b:Landroid/view/Menu;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_e
    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->j:Landroid/view/MenuItem;

    .line 488
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->j:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    if-nez v2, :cond_1a

    .line 489
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->j:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 493
    :cond_2
    :goto_f
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->l:Landroid/widget/CheckBox;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 494
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 495
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 496
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->q:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 497
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->q:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 499
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->s:Landroid/widget/Spinner;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 500
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->s:Landroid/widget/Spinner;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setFocusable(Z)V

    .line 501
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->s:Landroid/widget/Spinner;

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 503
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->u:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 504
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->u:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 505
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 506
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 508
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->y:Z

    if-eqz v0, :cond_28

    .line 509
    if-nez v3, :cond_4

    if-eqz v8, :cond_3

    if-eqz v11, :cond_4

    if-eqz v11, :cond_3

    if-nez v6, :cond_4

    .line 511
    :cond_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0122

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->w:Ljava/lang/String;

    .line 513
    :cond_4
    if-eqz v3, :cond_5

    .line 514
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 515
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d011f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->w:Ljava/lang/String;

    .line 517
    :cond_5
    if-eqz v1, :cond_8

    .line 518
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 519
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->w:Ljava/lang/String;

    .line 520
    :cond_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 521
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->w:Ljava/lang/String;

    .line 522
    :cond_7
    if-nez v10, :cond_8

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->w:Ljava/lang/String;

    .line 525
    :cond_8
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->c:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_9

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->A:Z

    .line 527
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->c:Landroid/support/v7/app/ActionBar;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->showCustomActionBarLayout(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;)V

    .line 530
    :cond_9
    const-string v0, ""

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_1b
    sput-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->x:Z

    .line 535
    :cond_a
    :goto_1c
    return-void

    .line 442
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 444
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 446
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 447
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 448
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 453
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 455
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 456
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 459
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 460
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 462
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 468
    :cond_16
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    const v4, 0x7f0d0139

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_b

    .line 476
    :cond_17
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_c

    .line 483
    :cond_18
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_d

    .line 487
    :cond_19
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->b:Landroid/view/Menu;

    sget v5, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->f:I

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto/16 :goto_e

    .line 491
    :cond_1a
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->j:Landroid/view/MenuItem;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1d
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_f

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1d

    .line 493
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_10

    .line 494
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_11

    .line 495
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_12

    .line 496
    :cond_1f
    const/4 v0, 0x0

    goto/16 :goto_13

    .line 497
    :cond_20
    const/4 v0, 0x0

    goto/16 :goto_14

    .line 499
    :cond_21
    const/4 v0, 0x0

    goto/16 :goto_15

    .line 500
    :cond_22
    const/4 v0, 0x0

    goto/16 :goto_16

    .line 503
    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 504
    :cond_24
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 505
    :cond_25
    const/4 v0, 0x0

    goto/16 :goto_19

    .line 506
    :cond_26
    const/4 v0, 0x0

    goto/16 :goto_1a

    .line 530
    :cond_27
    const/4 v0, 0x0

    goto :goto_1b

    .line 531
    :cond_28
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->c:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_a

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->A:Z

    .line 533
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->c:Landroid/support/v7/app/ActionBar;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->hideCustomActionBarLayout(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;)V

    goto/16 :goto_1c
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 309
    :try_start_0
    const-string v0, "accessibility_enabled"

    invoke-static {v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 314
    :goto_0
    if-nez v0, :cond_2

    .line 336
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 309
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    .line 319
    :cond_2
    const-string v0, "enabled_accessibility_services"

    invoke-static {v3, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    .line 322
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x3a

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 323
    invoke-virtual {v3, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/de.gdata.mobilesecurity.services.GdAccessibilityService"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/.services.GdAccessibilityService"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 329
    :cond_3
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    .line 331
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_4
    move v2, v1

    .line 332
    goto :goto_1
.end method

.method public static showAccessibilityInfoDialog(Landroid/support/v4/app/FragmentActivity;I)V
    .locals 3

    .prologue
    .line 399
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/al;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/al;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-direct {v0, v1, p1}, Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;-><init>(Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog$AccessibilityInfoListener;I)V

    .line 407
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 408
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "AccessibilityInfoDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 409
    return-void
.end method


# virtual methods
.method public finishActionMode(Landroid/app/Activity;I)V
    .locals 7

    .prologue
    .line 551
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->y:Z

    if-eqz v0, :cond_3

    .line 552
    sget v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->h:I

    if-ne p2, v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->resetValues()V

    .line 554
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->g()V

    .line 584
    :goto_0
    return-void

    .line 556
    :cond_0
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->x:Z

    if-eqz v0, :cond_2

    .line 557
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->d:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_1

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->d:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 559
    :cond_1
    new-instance v6, Lde/gdata/mobilesecurity/activities/applock/am;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/applock/am;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    .line 567
    new-instance v5, Lde/gdata/mobilesecurity/activities/applock/an;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/activities/applock/an;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    .line 574
    const v0, 0x7f0d00fc

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0d0115

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d0101

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d0114

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->d:Landroid/support/v4/app/DialogFragment;

    .line 578
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->d:Landroid/support/v4/app/DialogFragment;

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->z:Landroid/support/v4/app/FragmentManager;

    const-string v2, "ALERT_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_2
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 583
    :cond_3
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->g()V

    goto :goto_0
.end method

.method public isAppLockConfigured()Z
    .locals 3

    .prologue
    .line 624
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionAnswer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->e:I

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->finishActionMode(Landroid/app/Activity;I)V

    .line 243
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->setHasOptionsMenu(Z)V

    .line 108
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->z:Landroid/support/v4/app/FragmentManager;

    .line 110
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->c:Landroid/support/v7/app/ActionBar;

    .line 111
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    const-string v1, "gsc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->B:Z

    .line 116
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 123
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->A:Z

    if-nez v0, :cond_3

    .line 124
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 127
    sget v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->f:I

    const v1, 0x7f0d011d

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020071

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 129
    invoke-static {v0, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 132
    :cond_0
    sget v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->g:I

    const v1, 0x7f0d012d

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
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 167
    :cond_2
    return-void

    .line 135
    :cond_3
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 136
    const v0, 0x7f0b0393

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_2

    .line 138
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 140
    const v1, 0x7f0b0156

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 142
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 143
    if-eqz v1, :cond_4

    .line 144
    const v2, 0x7f0d0149

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/ag;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/applock/ag;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 155
    if-eqz v0, :cond_1

    .line 156
    const v1, 0x7f0d021e

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/ah;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/ah;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/high16 v4, 0x10000000

    const/16 v3, 0x8

    const/4 v2, 0x3

    const/4 v8, 0x0

    .line 184
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    .line 236
    :goto_0
    return-object v0

    .line 186
    :cond_0
    const v0, 0x7f030034

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    .line 187
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 189
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 192
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->f()V

    .line 194
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->B:Z

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 200
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 201
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 202
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 203
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 204
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 206
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->i:Landroid/app/ProgressDialog;

    .line 207
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->i:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0142

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 209
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->d()V

    .line 210
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->e()V

    .line 212
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 213
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->c()V

    .line 234
    :goto_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->g()V

    .line 236
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->a:Landroid/view/View;

    const v1, 0x7f0b0120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 217
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d0213

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v5, -0x10000

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 223
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 224
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/ai;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/ai;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->f:I

    if-ne v1, v2, :cond_0

    .line 172
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->testEmail()V

    .line 179
    :goto_0
    return v0

    .line 174
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->g:I

    if-ne v1, v2, :cond_1

    .line 175
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->startApplockHelp(Landroid/app/Activity;)V

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 249
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v0, v2, :cond_0

    .line 256
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 259
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->l:Landroid/widget/CheckBox;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 260
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->m:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 263
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->b:Landroid/view/Menu;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->j:Landroid/view/MenuItem;

    .line 264
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->j:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->j:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 268
    :cond_1
    :goto_1
    return-void

    .line 263
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->b:Landroid/view/Menu;

    sget v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->f:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_3
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->j:Landroid/view/MenuItem;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public resetValues()V
    .locals 4

    .prologue
    .line 538
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->o:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->p:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 540
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->q:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 542
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 543
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 544
    aget-object v2, v1, v0

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionQuestion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->s:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 543
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 547
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->u:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionAnswer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 548
    return-void
.end method

.method public testEmail()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 673
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/ao;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/applock/ao;-><init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/ao;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 716
    return-void
.end method
