.class public Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static HIDE_INPUT:I = 0x0

.field public static HIDE_PROMPT:I = 0x0

.field public static final INITIALIZE:Ljava/lang/String; = "INITIALIZE"

.field public static NOFLAGS:I

.field private static c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private static d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

.field private static e:Landroid/widget/TextView;

.field private static h:Z

.field public static itemToOpenInMenu:I

.field public static showDots:Z


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/Button;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    sput-boolean v1, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->h:Z

    .line 44
    const/16 v0, 0xd

    sput v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->itemToOpenInMenu:I

    .line 47
    sput v1, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->NOFLAGS:I

    .line 48
    sput v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->HIDE_INPUT:I

    .line 49
    const/4 v0, 0x2

    sput v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->HIDE_PROMPT:I

    .line 76
    sput-boolean v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->showDots:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->u:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->v:Ljava/lang/String;

    .line 72
    iput v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->w:I

    .line 73
    iput v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->x:I

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 35
    sput-boolean p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->h:Z

    return p0
.end method

.method static synthetic b()Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->g()V

    return-void
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->f()V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->h:Z

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f070006

    .line 277
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v1, "1"

    sget-object v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 288
    :cond_0
    :goto_0
    return-object v0

    .line 281
    :cond_1
    const-string v1, "2"

    sget-object v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 283
    :cond_2
    const-string v1, "3"

    sget-object v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 285
    :cond_3
    const-string v1, "4"

    sget-object v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 295
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 296
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 297
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 300
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 301
    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 302
    const v0, 0x7f0b0110

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 303
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 307
    const v2, 0x7f0d014b

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 308
    invoke-static {v1}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setView(Landroid/view/View;)V

    .line 309
    const v2, 0x7f0d0240

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lde/gdata/mobilesecurity/activities/usagecontrol/g;

    invoke-direct {v3, p0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/g;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;Landroid/view/View;)V

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 328
    const v1, 0x7f0d021e

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lde/gdata/mobilesecurity/activities/usagecontrol/h;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/h;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 335
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "QUESTION_DIALOG"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    .line 340
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v1, 0x7f0d0147

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0148

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0146

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d021e

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lde/gdata/mobilesecurity/activities/usagecontrol/i;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/i;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    new-instance v6, Lde/gdata/mobilesecurity/activities/usagecontrol/k;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/k;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 392
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "PASSWORD_DIALOG"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public static setTexts()V
    .locals 4

    .prologue
    const v3, 0x7f0d0330

    .line 491
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    if-eqz v0, :cond_4

    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    if-eqz v0, :cond_4

    .line 492
    const-string v0, ""

    .line 494
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    .line 495
    const-string v2, "Deutsch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->locationServicesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v3, 0x7f0d0333

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    sget-object v3, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v3, 0x7f0d0332

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    sget-object v3, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmRadius()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v3, 0x7f0d032f

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v2, 0x7f0d032e

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getStringEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v2, 0x7f0d0331

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_1
    sget-object v1, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    sget-object v1, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->saveLockString(Ljava/lang/String;)V

    .line 524
    :cond_0
    :goto_2
    return-void

    .line 496
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const v3, 0x7f0d032d

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 515
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 521
    :cond_4
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 522
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->e:Landroid/widget/TextView;

    sget-object v1, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLockString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public static unlockThePhone(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    const v5, 0x7f0d04b4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 415
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    if-eqz v0, :cond_1

    .line 417
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    if-eqz v0, :cond_5

    .line 420
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLockedLocationsChanged(Z)Z

    .line 421
    if-nez p1, :cond_0

    .line 422
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLastUnlockedLC(Ljava/lang/String;)Z

    .line 423
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 424
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 431
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    .line 436
    :goto_1
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->finish()V

    .line 438
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    if-eqz v0, :cond_3

    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isPhoneLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPhoneLocked(Z)V

    .line 440
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->saveLockString(Ljava/lang/String;)V

    .line 441
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 446
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 451
    :cond_3
    return-void

    .line 427
    :cond_4
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 434
    :cond_5
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLockedLocationsChanged(Z)Z

    goto :goto_1
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->u:Ljava/lang/String;

    .line 481
    iget v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->w:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 482
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->setDots()V

    .line 487
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public initAll()V
    .locals 1

    .prologue
    .line 527
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 528
    sput-object p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    .line 529
    const v0, 0x7f0b025c

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->e:Landroid/widget/TextView;

    .line 530
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0b026f

    const/16 v1, 0x400

    const/4 v4, 0x1

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->requestWindowFeature(I)Z

    .line 83
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 85
    const v0, 0x7f03006e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->setContentView(I)V

    .line 87
    invoke-static {}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->killActivity()V

    .line 89
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    const-string v1, "INITIALIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->h:Z

    .line 94
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->finish()V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const-string v1, "selectItem"

    sget v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->itemToOpenInMenu:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 108
    :cond_0
    invoke-virtual {p0, v5}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/a;

    invoke-direct {v1, p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/a;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;Landroid/widget/TextView;)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->y:Landroid/view/View$OnClickListener;

    .line 129
    const v0, 0x7f0b0271

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->f:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f0b0272

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->g:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->g:Landroid/widget/TextView;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/l;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/l;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {p0, v5}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0b026e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b:Landroid/widget/TextView;

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->u:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const v0, 0x7f0b0235

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->i:Landroid/widget/Button;

    .line 183
    const v0, 0x7f0b0273

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->j:Landroid/widget/Button;

    .line 184
    const v0, 0x7f0b0274

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->k:Landroid/widget/Button;

    .line 185
    const v0, 0x7f0b0275

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->l:Landroid/widget/Button;

    .line 186
    const v0, 0x7f0b0276

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->m:Landroid/widget/Button;

    .line 187
    const v0, 0x7f0b0277

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->n:Landroid/widget/Button;

    .line 188
    const v0, 0x7f0b0278

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->o:Landroid/widget/Button;

    .line 189
    const v0, 0x7f0b0279

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->p:Landroid/widget/Button;

    .line 190
    const v0, 0x7f0b027a

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->q:Landroid/widget/Button;

    .line 191
    const v0, 0x7f0b027c

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->r:Landroid/widget/Button;

    .line 192
    const v0, 0x7f0b027b

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->s:Landroid/widget/Button;

    .line 193
    const v0, 0x7f0b027d

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->t:Landroid/widget/Button;

    .line 194
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->t:Landroid/widget/Button;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->s:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/p;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/p;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->s:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/q;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/q;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 216
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->i:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/r;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/r;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->j:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/s;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/s;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->k:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/t;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/t;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->l:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/u;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/u;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->m:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/v;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/v;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->n:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/b;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->o:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/c;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/c;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->p:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/d;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/d;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->q:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/e;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/e;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->r:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/f;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/f;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->initAll()V

    .line 268
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->setTexts()V

    .line 270
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 534
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 535
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 474
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->popActivity(Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 465
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 466
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->setTexts()V

    .line 467
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->initAll()V

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->pushActivity(Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public setDots()V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->showDots:Z

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 406
    return-void
.end method
