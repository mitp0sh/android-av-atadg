.class public Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;
.implements Lde/gdata/mobilesecurity/util/EulaListener;


# static fields
.field public static final PAGE_ANTITHEFT:I = 0x1

.field public static final PAGE_AUDIT:I = 0x2

.field public static final PAGE_MALWARE:I = 0x0

.field public static final PAGE_POSITION:Ljava/lang/String; = "PAGE_POSITION"

.field private static k:Landroid/widget/TextView;

.field private static l:Landroid/widget/TextView;

.field private static m:Landroid/widget/TextView;

.field private static n:Landroid/widget/TextView;

.field private static o:Landroid/widget/ImageView;

.field private static p:Landroid/widget/ImageView;

.field private static q:Landroid/widget/ImageView;

.field private static r:Landroid/widget/Button;

.field private static s:Landroid/widget/Button;


# instance fields
.field private a:I

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/CheckBox;

.field private t:Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

.field private u:Lde/gdata/mobilesecurity/util/EulaListener;

.field private v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private w:Landroid/view/ViewGroup;

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->k:Landroid/widget/TextView;

    .line 80
    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->l:Landroid/widget/TextView;

    .line 81
    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->m:Landroid/widget/TextView;

    .line 82
    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->n:Landroid/widget/TextView;

    .line 83
    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->o:Landroid/widget/ImageView;

    .line 84
    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->p:Landroid/widget/ImageView;

    .line 86
    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->q:Landroid/widget/ImageView;

    .line 88
    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    .line 89
    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->s:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 68
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->b:Landroid/widget/EditText;

    .line 69
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c:Landroid/widget/EditText;

    .line 70
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->d:Landroid/widget/EditText;

    .line 71
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->e:Landroid/widget/CheckBox;

    .line 72
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->f:Landroid/widget/CheckBox;

    .line 74
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    .line 75
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->h:Landroid/widget/EditText;

    .line 76
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->i:Landroid/widget/EditText;

    .line 77
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->j:Landroid/widget/CheckBox;

    .line 91
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->t:Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    .line 93
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->u:Lde/gdata/mobilesecurity/util/EulaListener;

    .line 94
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 96
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    .line 97
    new-instance v0, Lde/gdata/mobilesecurity/activities/wizard/d;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/wizard/d;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->x:Landroid/view/View$OnClickListener;

    .line 133
    new-instance v0, Lde/gdata/mobilesecurity/activities/wizard/h;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/wizard/h;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->y:Landroid/view/View$OnClickListener;

    .line 178
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->a:I

    return v0
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f0d027b

    .line 145
    const-string v0, ""

    .line 146
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->d:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const v0, 0x7f0d027d

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->b:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    const v0, 0x7f0d027c

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_2
    return-object v0

    .line 148
    :cond_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->d:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEmailValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 639
    const v0, 0x7f0b0364

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->b:Landroid/widget/EditText;

    .line 640
    const v0, 0x7f0b0365

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c:Landroid/widget/EditText;

    .line 641
    const v0, 0x7f0b0366

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->d:Landroid/widget/EditText;

    .line 642
    const v0, 0x7f0b036d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->e:Landroid/widget/CheckBox;

    .line 643
    const v0, 0x7f0b036b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->f:Landroid/widget/CheckBox;

    .line 644
    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 560
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c()Ljava/lang/String;

    move-result-object v0

    .line 562
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 564
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSMSCommandPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 569
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    if-eqz v0, :cond_5

    .line 570
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 571
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/app/Activity;)V

    .line 603
    :cond_2
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setRemotePasswordResetSender(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".+@.+\\..+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 608
    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    goto :goto_0

    .line 572
    :cond_3
    const-string v0, ""

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 575
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLocate(Z)V

    .line 576
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteRing(Z)V

    .line 577
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteMute(Z)V

    .line 578
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLock(Z)V

    .line 579
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 580
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    .line 582
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getSmsReceivers(Landroid/content/Context;Z)Ljava/util/Vector;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->checkedForSMSReceivers()Z

    move-result v0

    if-nez v0, :cond_2

    .line 586
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCheckedForSMSReceivers(Z)V

    goto/16 :goto_1

    .line 591
    :cond_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->pressNext()V

    goto/16 :goto_1

    .line 594
    :cond_5
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLocate(Z)V

    .line 595
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteRing(Z)V

    .line 596
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteMute(Z)V

    .line 598
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLock(Z)V

    .line 599
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 600
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    goto/16 :goto_1
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 650
    const v0, 0x7f0b0373

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    .line 651
    const v0, 0x7f0b0374

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->h:Landroid/widget/EditText;

    .line 652
    const v0, 0x7f0b0376

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->i:Landroid/widget/EditText;

    .line 653
    const v0, 0x7f0b0379

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->j:Landroid/widget/CheckBox;

    .line 654
    return-void
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 613
    const-string v0, ""

    .line 615
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*\\D+.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\D"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 620
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->isPasswordSafe(Ljava/lang/String;)Z

    move-result v2

    .line 621
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 623
    :goto_0
    if-eqz v1, :cond_5

    .line 624
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 625
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 627
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 628
    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    :cond_3
    :goto_1
    return-object v0

    .line 621
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 630
    :cond_5
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 660
    const v0, 0x7f0b0380

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->k:Landroid/widget/TextView;

    .line 661
    const v0, 0x7f0b0381

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->l:Landroid/widget/TextView;

    .line 662
    const v0, 0x7f0b0382

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->o:Landroid/widget/ImageView;

    .line 663
    const v0, 0x7f0b0384

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->m:Landroid/widget/TextView;

    .line 664
    const v0, 0x7f0b0385

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->n:Landroid/widget/TextView;

    .line 665
    const v0, 0x7f0b0386

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->p:Landroid/widget/ImageView;

    .line 666
    return-void
.end method

.method public static create(I)Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;
    .locals 3

    .prologue
    .line 169
    new-instance v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;-><init>()V

    .line 170
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 171
    const-string v2, "PAGE_POSITION"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 173
    return-object v0
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 702
    const v0, 0x7f0b0363

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 703
    const v0, 0x7f0b0364

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 704
    const v0, 0x7f0b0365

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 705
    const v0, 0x7f0b0366

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 706
    const v0, 0x7f0b0360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 707
    const v0, 0x7f0b0361

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 708
    return-void
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->b()V

    return-void
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Lde/gdata/mobilesecurity/util/EulaListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->u:Lde/gdata/mobilesecurity/util/EulaListener;

    return-object v0
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->j:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic h(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic i(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->x:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic j(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->f:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public OCL_register()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 714
    const-string v1, "."

    .line 715
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 716
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 717
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 718
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 720
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->a()Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 757
    :goto_0
    return-void

    .line 725
    :cond_0
    const-string v6, ""

    .line 728
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    :cond_1
    const/4 v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->onServerStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 734
    :cond_2
    const-string v0, ""

    .line 735
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v7

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/Trial;->isUnregisteredTrial()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 736
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->getRegNoEnc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->decodeAndDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->getGeneration()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 739
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "G="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";C="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lde/gdata/mobilesecurity/util/Trial;->getDeviceId(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    :cond_3
    iget-object v7, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v7, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setRegisteredEmail(Ljava/lang/String;)V

    .line 749
    iget-object v7, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 750
    new-instance v7, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v12

    aput-object v4, v8, v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v14

    const/4 v1, 0x5

    aput-object v0, v8, v1

    const/4 v0, 0x6

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/16 v0, 0x8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v6, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->normalizePhoneNumber(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-virtual {v7, v8}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 741
    :cond_4
    iget-object v7, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v7

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/Trial;->isInvalidTrial()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 742
    const v0, 0x1869f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->onServerStatus(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 754
    :cond_5
    new-instance v7, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v12

    aput-object v4, v8, v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v14

    const/4 v1, 0x5

    aput-object v0, v8, v1

    const/4 v0, 0x6

    const-string v1, ""

    aput-object v1, v8, v0

    const/4 v0, 0x7

    const-string v1, ""

    aput-object v1, v8, v0

    const/16 v0, 0x8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v6, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->normalizePhoneNumber(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-virtual {v7, v8}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->a:I

    return v0
.end method

.method public onAccepted()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->f:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 791
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 671
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 673
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 674
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWizardAuthSuccessful(Landroid/content/Context;Z)V

    .line 675
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    sget-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    const v1, 0x7f0d0566

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->pressNext()V

    goto :goto_0

    .line 681
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v1, 0x7f0b036a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 683
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v1, 0x7f0b0368

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 685
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->d(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PAGE_POSITION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->a:I

    .line 186
    iput-object p0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->u:Lde/gdata/mobilesecurity/util/EulaListener;

    .line 188
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->setHasOptionsMenu(Z)V

    .line 191
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23

    .prologue
    .line 196
    const v2, 0x7f0300a2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b02e3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 198
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    invoke-static {v3, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->a(Landroid/view/View;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d056e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d0572

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 206
    new-instance v6, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/high16 v8, -0x10000

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 209
    new-instance v7, Landroid/text/style/StyleSpan;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 211
    new-instance v7, Landroid/text/style/UnderlineSpan;

    invoke-direct {v7}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v4, 0x7f0b0368

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 213
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    new-instance v3, Lde/gdata/mobilesecurity/activities/wizard/i;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lde/gdata/mobilesecurity/activities/wizard/i;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0d0071

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    :goto_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/high16 v8, -0x10000

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 236
    new-instance v7, Landroid/text/style/StyleSpan;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 238
    new-instance v7, Landroid/text/style/UnderlineSpan;

    invoke-direct {v7}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v4, 0x7f0b00af

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 240
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    new-instance v3, Lde/gdata/mobilesecurity/activities/wizard/j;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lde/gdata/mobilesecurity/activities/wizard/j;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0564

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 255
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 256
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const/high16 v7, -0x10000

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 257
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 258
    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v6, 0x7f0b036c

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 261
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    new-instance v4, Lde/gdata/mobilesecurity/activities/wizard/k;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lde/gdata/mobilesecurity/activities/wizard/k;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->f:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isEulaAccepted()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->f:Landroid/widget/CheckBox;

    new-instance v4, Lde/gdata/mobilesecurity/activities/wizard/l;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lde/gdata/mobilesecurity/activities/wizard/l;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->b(Landroid/view/View;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->h:Landroid/widget/EditText;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->h:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->h:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->j:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isUninstallProtectionEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->h:Landroid/widget/EditText;

    new-instance v4, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment$SettingsTextWatcher;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment$SettingsTextWatcher;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    new-instance v4, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment$SettingsTextWatcher;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment$SettingsTextWatcher;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->j:Landroid/widget/CheckBox;

    new-instance v4, Lde/gdata/mobilesecurity/activities/wizard/m;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lde/gdata/mobilesecurity/activities/wizard/m;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->g:Landroid/widget/EditText;

    invoke-static {v3, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->h:Landroid/widget/EditText;

    invoke-static {v3, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c(Landroid/view/View;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v4, 0x7f0b035d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sput-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->q:Landroid/widget/ImageView;

    .line 317
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->q:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v4, 0x7f0b0387

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sput-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v4, 0x7f0b0388

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sput-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->s:Landroid/widget/Button;

    .line 323
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 324
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 325
    sget-object v4, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    sget-object v4, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->s:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v4, 0x7f0b035b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 329
    move-object/from16 v0, p0

    iget v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->a:I

    packed-switch v3, :pswitch_data_0

    .line 538
    :cond_0
    :goto_1
    sget-object v2, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->q:Landroid/widget/ImageView;

    new-instance v3, Lde/gdata/mobilesecurity/activities/wizard/f;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lde/gdata/mobilesecurity/activities/wizard/f;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    sget-object v2, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    return-object v2

    .line 229
    :cond_1
    const-string v4, ""

    .line 230
    const v3, 0x7f0d03de

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 331
    :pswitch_0
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 332
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d055f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v4, 0x7f0b035b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v4, 0x7f0b0362

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v4, 0x7f0b035e

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v5, 0x7f0b0369

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v5, 0x7f0b005a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 342
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v5, 0x7f0b0387

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v8, 0x7f0b0367

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v11, 0x7f0b035f

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const v12, 0x7f0d0567

    invoke-static {v11, v12}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v11, 0x7f0b035f

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, Landroid/widget/TextView;

    .line 349
    const v4, 0x7f0d0527

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 353
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    const v2, 0x7f0b0360

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 355
    const v2, 0x7f0b0361

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 357
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 360
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 361
    new-instance v2, Lde/gdata/mobilesecurity/activities/wizard/n;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lde/gdata/mobilesecurity/activities/wizard/n;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;Landroid/widget/CheckBox;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    new-instance v11, Lde/gdata/mobilesecurity/activities/wizard/o;

    move-object/from16 v12, p0

    move-object v13, v9

    move-object v14, v8

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lde/gdata/mobilesecurity/activities/wizard/o;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/Button;Landroid/widget/LinearLayout;)V

    invoke-virtual {v9, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->isGoogleMarketPackage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardAuthSuccessful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 423
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 424
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 425
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 426
    invoke-virtual {v4}, Landroid/widget/CheckBox;->performClick()Z

    .line 427
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b035f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v11, 0x7f0d0567

    invoke-static {v3, v11}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b02e3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d00f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b035d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->d(Landroid/view/View;)V

    .line 434
    sget-object v2, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f0d0561

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMicrostationOemVersion()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b0363

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 438
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->b:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->c:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->d:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 442
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    sget-object v2, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f0d0561

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 445
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b0363

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 448
    const v3, 0x7f0d03df

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->e:Landroid/widget/CheckBox;

    const v3, 0x7f0d03dd

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 451
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 452
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 453
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 454
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 456
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 457
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 459
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b005a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 461
    if-eqz v5, :cond_0

    .line 462
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d055f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 463
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 464
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 469
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b035e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b037f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b037b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b035b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b0371

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 475
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    new-instance v3, Lde/gdata/mobilesecurity/activities/wizard/e;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lde/gdata/mobilesecurity/activities/wizard/e;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    sget-object v2, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d055b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b036e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 485
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b0370

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 488
    const v3, 0x7f0d00c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 492
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b035e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b036e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b037f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b037b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b035b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 498
    sget-object v2, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d055d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b037e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d0557

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardAuthSuccessful()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLoginVerifiedButExpired()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->isGoogleMarketPackage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 507
    :cond_6
    const v2, 0x7f020160

    .line 508
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->l:Landroid/widget/TextView;

    const v4, 0x7f0d0559

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 513
    :goto_2
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->k:Landroid/widget/TextView;

    const v4, 0x7f0d056b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 514
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->k:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 517
    sget-boolean v2, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 519
    const v2, 0x7f020160

    .line 520
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->n:Landroid/widget/TextView;

    const v4, 0x7f0d0559

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 525
    :goto_3
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->m:Landroid/widget/TextView;

    const v4, 0x7f0d0568

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 526
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->m:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->p:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->w:Landroid/view/ViewGroup;

    const v3, 0x7f0b037b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 530
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 510
    :cond_7
    const v2, 0x7f0201af

    .line 511
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->l:Landroid/widget/TextView;

    const v4, 0x7f0d0558

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 522
    :cond_8
    const v2, 0x7f0201af

    .line 523
    sget-object v3, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->n:Landroid/widget/TextView;

    const v4, 0x7f0d0558

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 552
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 553
    return-void
.end method

.method public onRejected()V
    .locals 0

    .prologue
    .line 796
    return-void
.end method

.method public onServerStatus(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 761
    sparse-switch p1, :sswitch_data_0

    .line 784
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->t:Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 765
    :sswitch_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWizardAuthSuccessful(Landroid/content/Context;Z)V

    .line 766
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    sget-object v0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->r:Landroid/widget/Button;

    const v1, 0x7f0d0566

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->pressNext()V

    goto :goto_0

    .line 773
    :sswitch_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->t:Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    .line 774
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWizardAuthSuccessful(Landroid/content/Context;Z)V

    .line 775
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLoginVerifiedButExpired(Z)V

    .line 776
    const v0, 0x7f0d0240

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/wizard/g;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/wizard/g;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;)V

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 761
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0x1869b -> :sswitch_0
        0x1869f -> :sswitch_1
    .end sparse-switch
.end method

.method public setPage(I)V
    .locals 0

    .prologue
    .line 698
    iput p1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardFragment;->a:I

    .line 699
    return-void
.end method
