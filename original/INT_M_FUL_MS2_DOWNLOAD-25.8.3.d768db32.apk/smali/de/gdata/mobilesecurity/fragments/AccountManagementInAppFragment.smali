.class public Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field a:Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;

.field b:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

.field private d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lde/gdata/mobilesecurity/util/BasePreferences;

.field private j:Landroid/support/v4/app/FragmentActivity;

.field private k:Landroid/app/ProgressDialog;

.field private l:Landroid/support/v4/app/DialogFragment;

.field private m:Landroid/widget/RadioGroup;

.field public mFirstName:Ljava/lang/String;

.field public mLastName:Ljava/lang/String;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/RadioButton;

.field private p:Landroid/widget/RadioButton;

.field private q:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 59
    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    .line 60
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->e:Z

    .line 61
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->f:Z

    .line 62
    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->g:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->h:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->k:Landroid/app/ProgressDialog;

    .line 79
    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->l:Landroid/support/v4/app/DialogFragment;

    .line 85
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;-><init>(Ljava/lang/String;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->q:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

    .line 215
    new-instance v0, Lde/gdata/mobilesecurity/fragments/u;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/fragments/u;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->a:Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;

    .line 254
    new-instance v0, Lde/gdata/mobilesecurity/fragments/v;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/fragments/v;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->b:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method private a(IIILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v4/app/DialogFragment;
    .locals 8

    .prologue
    .line 423
    const v0, 0x7f0d0297

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    const-string v1, "%lang%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 427
    const-string v2, "%lang%"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 428
    const-string v2, "%region%"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 434
    new-instance v6, Lde/gdata/mobilesecurity/fragments/w;

    invoke-direct {v6, p0, v0}, Lde/gdata/mobilesecurity/fragments/w;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;Landroid/net/Uri;)V

    .line 442
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->j:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->j:Landroid/support/v4/app/FragmentActivity;

    const v4, 0x7f0d0240

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->j:Landroid/support/v4/app/FragmentActivity;

    const v5, 0x7f0d0298

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p4

    move v7, p3

    invoke-static/range {v0 .. v7}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 445
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 446
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 447
    const-string v2, "DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 449
    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)Lde/gdata/mobilesecurity/inapp/util/IabHelper;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->o:Landroid/widget/RadioButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d0041

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->p:Landroid/widget/RadioButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d0042

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->e:Z

    return p1
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->e:Z

    return v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->f:Z

    return p1
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->f:Z

    return v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->a()V

    return-void
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)Lde/gdata/mobilesecurity/util/BasePreferences;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->i:Lde/gdata/mobilesecurity/util/BasePreferences;

    return-object v0
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->n:Landroid/widget/Button;

    return-object v0
.end method

.method public static newInstance(Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;)Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;-><init>()V

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string v2, "red"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v0
.end method


# virtual methods
.method a(Lde/gdata/mobilesecurity/inapp/util/Purchase;)Z
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/inapp/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    .line 194
    sget-object v1, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    const-string v0, "onActivityResult handled by IABUtil."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/16 v4, 0x2711

    .line 524
    const/4 v1, 0x0

    .line 525
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0b006a

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    const/4 v0, 0x1

    .line 528
    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->subscriptionsSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    :goto_1
    return-void

    .line 538
    :cond_0
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 539
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x270f

    invoke-virtual {v2, v1, v3}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->c:Ljava/lang/String;

    .line 541
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->flagEndAsync()V

    .line 543
    if-eqz v0, :cond_1

    .line 544
    const-string v0, "Launching purchase flow for ms2 one month subscription."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "ms2onemonth_sub"

    const-string v3, "subs"

    iget-object v5, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->b:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    sget-object v6, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    goto :goto_1

    .line 548
    :cond_1
    const-string v0, "Launching purchase flow for ms2 one year subscription."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "ms2oneyear_sub"

    const-string v3, "subs"

    iget-object v5, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->b:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    sget-object v6, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 146
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->j:Landroid/support/v4/app/FragmentActivity;

    .line 149
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 152
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuXmF7misjsitmOmuGCMb04ilmUNzqa/0/5tQBBs1knARiH5o0xnxlGynMYctE0ej2zvqXj4mTyD4ylhtLwNFWqw3W5XPR3/t97wlsunRce3VGdbksX0CeJ2tAk2wyvNENjpIGRlbf3MjXPM5d8iFM5DrxGo7wGDjgeQTsW9YFZS2FTZRNTGyC7PXSzhHz/8UQgZ5PXJD0TSyHKu9GC5y3MkfTpUFWwARF5Wz90/FNsDLsdrnMPogTtORs9kucKoAc4qGSjdBjbcpoM/fe8QFgMOJUbTNVvZp2BhlB2daB9aPIalYw+mrWu0L/vhg6J9sovNOlYcwx/3Iqz7UVgWvUwIDAQAB"

    .line 154
    const-string v1, "Creating IAB helper."

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 155
    new-instance v1, Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->enableDebugLogging(Z)V

    .line 162
    const-string v0, "Starting setup."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    new-instance v1, Lde/gdata/mobilesecurity/fragments/t;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/fragments/t;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->startSetup(Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 183
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->i:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 184
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 285
    const v0, 0x7f03001a

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 287
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 288
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 289
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 291
    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "red"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "red"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    .line 296
    :cond_0
    if-eqz v0, :cond_3

    .line 297
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->setPurchaseInfo(Landroid/view/View;)V

    .line 298
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getFirstname()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->mFirstName:Ljava/lang/String;

    .line 299
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getSurname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->mLastName:Ljava/lang/String;

    .line 316
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->i:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getPurchaseData()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 318
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 319
    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 320
    aget-object v2, v0, v6

    aget-object v3, v0, v7

    const/4 v4, 0x2

    aget-object v4, v0, v4

    const/4 v5, 0x3

    aget-object v0, v0, v5

    invoke-virtual {p0, v2, v3, v4, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->sendPurchaseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->restrictButtonWidth(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0b0065

    const v3, 0x7f0a005c

    invoke-static {v0, v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/app/Activity;II)V

    .line 332
    :cond_2
    const v0, 0x7f0b006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->n:Landroid/widget/Button;

    .line 333
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->n:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 336
    const v0, 0x7f0b0069

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->m:Landroid/widget/RadioGroup;

    .line 337
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->m:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 339
    const v0, 0x7f0b006a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->o:Landroid/widget/RadioButton;

    .line 340
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->o:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 342
    const v0, 0x7f0b006b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->p:Landroid/widget/RadioButton;

    .line 343
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->p:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 345
    const v0, 0x7f0b0067

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 347
    return-object v1

    .line 302
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->i:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->i:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v6}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->showProgressDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->k:Landroid/app/ProgressDialog;

    .line 307
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    const-string v4, "username"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v0, "password"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v0, "caller"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v0, "option"

    const-string v2, "red"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 323
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->i:Lde/gdata/mobilesecurity/util/BasePreferences;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPurchaseData(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 387
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->l:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->l:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 388
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->k:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 390
    :cond_1
    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->l:Landroid/support/v4/app/DialogFragment;

    .line 391
    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->k:Landroid/app/ProgressDialog;

    .line 394
    const-string v0, "Destroying helper."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->dispose()V

    .line 396
    :cond_2
    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    .line 397
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 376
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 378
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->k:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 380
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->q:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 381
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 365
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 367
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->k:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 371
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->q:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    return-void
.end method

.method public onServerStatus(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x108008a

    const/4 v0, 0x0

    .line 460
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->k:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 462
    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->k:Landroid/app/ProgressDialog;

    .line 465
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 513
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->l:Landroid/support/v4/app/DialogFragment;

    .line 516
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->l:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->l:Landroid/support/v4/app/DialogFragment;

    const-string v2, "DIALOG_TAG"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 520
    :cond_1
    :goto_1
    return-void

    .line 467
    :sswitch_0
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 469
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setGoogleBillingSupported(Z)V

    .line 470
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setAndEncryptUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 474
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 475
    const-string v1, "AUTO_START_UPDATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 481
    :sswitch_1
    const v1, 0x7f0d017f

    const v2, 0x7f0d017e

    invoke-direct {p0, v1, v2, v3, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->a(IIILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->l:Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 486
    :sswitch_2
    const v0, 0x7f0d0182

    const v1, 0x7f0d0183

    new-instance v2, Lde/gdata/mobilesecurity/fragments/x;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/x;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)V

    invoke-direct {p0, v0, v1, v3, v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->a(IIILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->l:Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 502
    :sswitch_3
    if-eqz p2, :cond_2

    const-string v0, "red"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    .line 504
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getStatuscode()I

    move-result v1

    if-ltz v1, :cond_1

    .line 505
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->setPurchaseInfo(Landroid/view/View;)V

    .line 506
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getFirstname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->mFirstName:Ljava/lang/String;

    .line 507
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getSurname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->mLastName:Ljava/lang/String;

    goto/16 :goto_1

    .line 465
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x1653 -> :sswitch_3
    .end sparse-switch
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 352
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 353
    return-void
.end method

.method public sendPurchaseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 135
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;-><init>(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object p1, v3, v0

    const/4 v0, 0x3

    aput-object p2, v3, v0

    const/4 v0, 0x4

    const-string v4, ""

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, ""

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, ""

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, ""

    aput-object v4, v3, v0

    const/16 v0, 0x8

    aput-object p3, v3, v0

    const/16 v0, 0x9

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const v1, 0x7f0d0183

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0xb

    aput-object p4, v3, v0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-void
.end method

.method public setPurchaseInfo(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 356
    if-eqz p1, :cond_0

    .line 357
    const v0, 0x7f0b0066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0040

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    const v0, 0x7f0b0068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 361
    :cond_0
    return-void
.end method

.method public startTaskBuy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 105
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->n:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLicensedGoogleAccount()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRegisteredEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRegisteredEmail()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GIAP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->mFirstName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->mLastName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPurchaseData(Ljava/lang/String;)V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send purchase data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->mFirstName:Ljava/lang/String;

    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->mLastName:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v0, v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->sendPurchaseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method
