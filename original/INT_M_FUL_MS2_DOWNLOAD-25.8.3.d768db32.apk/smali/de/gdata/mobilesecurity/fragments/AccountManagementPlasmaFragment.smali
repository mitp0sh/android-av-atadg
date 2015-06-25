.class public Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lde/gdata/mobilesecurity/inapp/plasma/PlasmaListener;
.implements Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;


# static fields
.field private static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:I

.field private static volatile g:I

.field private static volatile o:Ljava/lang/String;


# instance fields
.field a:Landroid/support/v4/app/DialogFragment;

.field b:Landroid/support/v4/app/DialogFragment;

.field c:Landroid/app/ProgressDialog;

.field private h:Lde/gdata/mobilesecurity/util/BasePreferences;

.field private i:Landroid/support/v4/app/FragmentActivity;

.field private j:Landroid/widget/Button;

.field private k:I

.field private l:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

.field private m:Ljava/lang/String;

.field public mFirstName:Ljava/lang/String;

.field public mLastName:Ljava/lang/String;

.field public mMail:Ljava/lang/String;

.field private n:Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;

.field private p:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v3, [Ljava/lang/Integer;

    const/16 v2, 0x23f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->d:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x23fb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x23f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const/16 v3, 0x23f1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x23f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x23f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x2328

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->e:Ljava/util/ArrayList;

    .line 69
    const/16 v0, 0x16d

    sput v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->f:I

    .line 70
    sput v4, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->g:I

    .line 93
    const-string v0, "100000029213"

    sput-object v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 79
    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a:Landroid/support/v4/app/DialogFragment;

    .line 81
    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->b:Landroid/support/v4/app/DialogFragment;

    .line 82
    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->c:Landroid/app/ProgressDialog;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->k:I

    .line 89
    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->l:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    .line 90
    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->m:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->n:Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;

    .line 120
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;-><init>(Ljava/lang/String;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->p:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

    return-void
.end method

.method private a(IIILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v4/app/DialogFragment;
    .locals 8

    .prologue
    .line 327
    const v0, 0x7f0d0297

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    const-string v1, "%lang%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 331
    const-string v2, "%lang%"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string v2, "%region%"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 338
    new-instance v6, Lde/gdata/mobilesecurity/fragments/y;

    invoke-direct {v6, p0, v0}, Lde/gdata/mobilesecurity/fragments/y;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;Landroid/net/Uri;)V

    .line 346
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0d0245

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    const v4, 0x7f0d0240

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    const v5, 0x7f0d0298

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p4

    move v7, p3

    invoke-static/range {v0 .. v7}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 351
    const-string v2, "DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 353
    return-object v0
.end method

.method private a(Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 622
    .line 623
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;->getCurrencyUnitHasPenny()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const-string v0, "%.2f"

    .line 629
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;->getItemPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 631
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 632
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;->getCurrencyUnitPrecedes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 633
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;->getCurrencyUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 640
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 626
    :cond_0
    const-string v0, "%.0f"

    goto :goto_0

    .line 636
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;->getCurrencyUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "GER"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "000000054239"

    .line 117
    :goto_0
    return-object v0

    .line 107
    :cond_0
    const-string v0, "RUS"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "000000054238"

    goto :goto_0

    .line 108
    :cond_1
    const-string v0, "ESN"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "000000054237"

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "DUT"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "000000054236"

    goto :goto_0

    .line 110
    :cond_3
    const-string v0, "FRA"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "000000054235"

    goto :goto_0

    .line 111
    :cond_4
    const-string v0, "PTG"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "000000054234"

    goto :goto_0

    .line 112
    :cond_5
    const-string v0, "ITA"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "000000054233"

    goto :goto_0

    .line 113
    :cond_6
    const-string v0, "JAP"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "000000054268"

    goto :goto_0

    .line 114
    :cond_7
    const-string v0, "POL"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "000000054269"

    goto :goto_0

    .line 115
    :cond_8
    const-string v0, "CHN"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "000000054275"

    goto :goto_0

    .line 117
    :cond_9
    const-string v0, "000000054232"

    goto :goto_0
.end method

.method private a(I)V
    .locals 6

    .prologue
    .line 566
    const-string v0, ""

    .line 568
    sparse-switch p1, :sswitch_data_0

    .line 601
    :goto_0
    new-instance v1, Lde/gdata/mobilesecurity/fragments/ab;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/fragments/ab;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;)V

    .line 612
    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    const v4, 0x7f0d045e

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0469

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, v1}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 617
    const-string v2, "DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 618
    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a:Landroid/support/v4/app/DialogFragment;

    .line 619
    return-void

    .line 570
    :sswitch_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d045f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 573
    :sswitch_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0460

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 576
    :sswitch_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0461

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 579
    :sswitch_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0462

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 582
    :sswitch_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0463

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 585
    :sswitch_5
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0464

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 588
    :sswitch_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0465

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 591
    :sswitch_7
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0466

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 594
    :sswitch_8
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0467

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 597
    :sswitch_9
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0468

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 568
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_5
        0x2328 -> :sswitch_7
        0x23f0 -> :sswitch_8
        0x23f1 -> :sswitch_3
        0x23f3 -> :sswitch_6
        0x23f5 -> :sswitch_2
        0x23f7 -> :sswitch_4
        0x23fb -> :sswitch_1
    .end sparse-switch
.end method

.method public static newInstance(Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;)Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;-><init>()V

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    const-string v2, "red"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    return-object v0
.end method

.method public static setDeveloperFlag(I)V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set developer flag to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 130
    sput p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->g:I

    .line 131
    return-void
.end method

.method public static setItemGroupId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set item group to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 125
    sput-object p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->o:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public static setLicenseValidityPeriod(I)V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set license period to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 135
    sput p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->f:I

    .line 136
    return-void
.end method


# virtual methods
.method public getSamsungAccount()Ljava/lang/String;
    .locals 6

    .prologue
    .line 139
    const-string v1, ""

    .line 140
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 143
    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 145
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 146
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 152
    :goto_1
    return-object v0

    .line 145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->n:Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->l:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    iget v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->k:I

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->n:Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->requestPurchaseItem(ILjava/lang/String;)Z

    .line 428
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    .line 182
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->h:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 184
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 185
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 186
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    const v0, 0x7f03001a

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 193
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 194
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "red"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "red"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    .line 197
    :goto_0
    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getGoogleMarketBillingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->setPurchaseInfo(Landroid/view/View;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getFirstname()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->mFirstName:Ljava/lang/String;

    .line 201
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getSurname()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->mLastName:Ljava/lang/String;

    .line 202
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getMail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->mMail:Ljava/lang/String;

    .line 220
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->h:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getPurchaseData()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 223
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 225
    array-length v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 226
    aget-object v3, v0, v7

    aget-object v4, v0, v8

    aget-object v5, v0, v9

    const/4 v6, 0x3

    aget-object v0, v0, v6

    invoke-virtual {p0, v3, v4, v5, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->sendPurchaseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_0
    :goto_2
    new-instance v0, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    sget-object v3, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->o:Ljava/lang/String;

    iget-object v4, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v3, v4}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->l:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    .line 236
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->l:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->isNativePlasmaObjectNotNull()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->l:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->setPlasmaListener(Lde/gdata/mobilesecurity/inapp/plasma/PlasmaListener;)V

    .line 238
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->l:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    sget v1, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->g:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->setDeveloperFlag(I)V

    .line 240
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->l:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    iget v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->k:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->k:I

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v8, v3}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->requestPurchasedItemInformationList(III)Z

    .line 253
    :goto_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->restrictButtonWidth(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0065

    const v3, 0x7f0a005c

    invoke-static {v0, v1, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/app/Activity;II)V

    .line 256
    :cond_1
    const v0, 0x7f0b006c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->j:Landroid/widget/Button;

    .line 257
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->j:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 260
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 261
    new-array v1, v8, [I

    const v3, 0x1010038

    aput v3, v1, v7

    .line 262
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/app/FragmentActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 263
    const/4 v1, -0x1

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 264
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    const v0, 0x7f0b0066

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 267
    const v1, 0x7f0b0068

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 269
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v9, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 273
    return-object v2

    .line 205
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->h:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->h:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getSamsungAccount()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->mMail:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v7}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->showProgressDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->c:Landroid/app/ProgressDialog;

    .line 211
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    const-string v5, "username"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v0, "password"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v0, "caller"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v0, "option"

    const-string v3, "red"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 228
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->h:Lde/gdata/mobilesecurity/util/BasePreferences;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPurchaseData(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 247
    :cond_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 250
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0, v8, v1}, Lde/gdata/mobilesecurity/intents/Main;->selectItem(ILandroid/os/Bundle;)V

    goto/16 :goto_3

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 297
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 298
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->b:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->b:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 300
    :cond_2
    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a:Landroid/support/v4/app/DialogFragment;

    .line 301
    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->c:Landroid/app/ProgressDialog;

    .line 302
    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->b:Landroid/support/v4/app/DialogFragment;

    .line 304
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 305
    return-void
.end method

.method public onItemInformationListReceived(IILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->n:Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;

    .line 436
    if-nez p2, :cond_3

    .line 438
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 439
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->j:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->getGDataLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ItemInformation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;->getItemName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 445
    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->n:Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;

    if-nez v3, :cond_1

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->n:Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;

    .line 446
    :cond_1
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    const-string v3, "Language dependend purchase id found"

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 448
    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->n:Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;

    goto :goto_0

    .line 453
    :cond_2
    const-string v0, "Renewal not possible, \'cause there\'s no item offered."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 455
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 289
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->p:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    return-void
.end method

.method public onPurchaseItemFinished(IILde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;)V
    .locals 6

    .prologue
    .line 519
    invoke-virtual {p3}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->getPaymentId()Ljava/lang/String;

    move-result-object v0

    .line 521
    sparse-switch p2, :sswitch_data_0

    .line 560
    invoke-direct {p0, p2}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a(I)V

    .line 563
    :goto_0
    :sswitch_0
    return-void

    .line 523
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d04a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {p3}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d04a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {p3}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d04a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {p3}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->getPaymentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d04a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {p3}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->getPurchaseDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 540
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d04a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-direct {p0, p3}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a(Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    const v4, 0x7f0d04a6

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    const v5, 0x7f0d0240

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lde/gdata/mobilesecurity/fragments/aa;

    invoke-direct {v5, p0, v0}, Lde/gdata/mobilesecurity/fragments/aa;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;Ljava/lang/String;)V

    invoke-static {v2, v3, v1, v4, v5}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 554
    const-string v2, "DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 555
    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->b:Landroid/support/v4/app/DialogFragment;

    goto/16 :goto_0

    .line 521
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPurchaseItemInitialized(IILde/gdata/mobilesecurity/inapp/plasma/PurchaseTicket;)V
    .locals 1

    .prologue
    .line 508
    if-nez p2, :cond_0

    .line 511
    invoke-virtual {p3}, Lde/gdata/mobilesecurity/inapp/plasma/PurchaseTicket;->getPurchaseId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->m:Ljava/lang/String;

    .line 513
    :cond_0
    return-void
.end method

.method public onPurchasedItemInformationListReceived(IILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0xf

    const/4 v8, 0x1

    .line 461
    if-nez p2, :cond_6

    .line 462
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 463
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 464
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->l:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v8, v9}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->requestItemInformationList(III)Z

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purchased item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->getItemName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->getPurchaseDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 472
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->getPurchaseDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->getPurchaseDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_8

    :cond_3
    :goto_2
    move-object v1, v0

    .line 475
    goto :goto_1

    .line 477
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latest purchase: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->getPurchaseDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 480
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->getPurchaseDate()Ljava/util/Date;

    move-result-object v2

    .line 482
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    .line 484
    sget v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->f:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    .line 485
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->l:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v8, v9}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->requestItemInformationList(III)Z

    goto/16 :goto_0

    .line 488
    :cond_5
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->getPaymentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->prepareAndSendPurchaseData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :cond_6
    const/16 v0, 0x64

    if-eq p2, v0, :cond_1

    .line 495
    sget-object v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->d:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 496
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->onServerStatus(ILandroid/os/Bundle;)V

    .line 498
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lde/gdata/mobilesecurity/intents/Main;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 500
    :cond_7
    sget-object v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->e:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-direct {p0, p2}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a(I)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 278
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 280
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 282
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->p:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    return-void
.end method

.method public onServerStatus(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 364
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->c:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 366
    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->c:Landroid/app/ProgressDialog;

    .line 369
    :cond_0
    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a:Landroid/support/v4/app/DialogFragment;

    .line 370
    sparse-switch p1, :sswitch_data_0

    .line 413
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a:Landroid/support/v4/app/DialogFragment;

    .line 416
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a:Landroid/support/v4/app/DialogFragment;

    const-string v2, "DIALOG_TAG"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 420
    :cond_1
    :goto_1
    return-void

    .line 372
    :sswitch_0
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 374
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setGoogleBillingSupported(Z)V

    .line 375
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setAndEncryptUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 380
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 381
    const-string v1, "AUTO_START_UPDATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 388
    :sswitch_1
    const v0, 0x7f0d0182

    const v1, 0x7f0d0183

    const v2, 0x108008a

    new-instance v3, Lde/gdata/mobilesecurity/fragments/z;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/fragments/z;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a(IIILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->a:Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 402
    :sswitch_2
    if-eqz p2, :cond_2

    const-string v0, "red"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    .line 404
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getStatuscode()I

    move-result v1

    if-ltz v1, :cond_1

    .line 405
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getGoogleMarketBillingString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->setPurchaseInfo(Landroid/view/View;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getFirstname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->mFirstName:Ljava/lang/String;

    .line 407
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getSurname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->mLastName:Ljava/lang/String;

    goto :goto_1

    .line 370
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x1653 -> :sswitch_2
    .end sparse-switch
.end method

.method public prepareAndSendPurchaseData(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIAP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->mFirstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->mLastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->mMail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    new-instance v2, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPurchaseData(Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send purchase data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->mFirstName:Ljava/lang/String;

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->mLastName:Ljava/lang/String;

    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->mMail:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->sendPurchaseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public sendPurchaseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 169
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0xb

    aput-object p4, v3, v0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 175
    return-void
.end method

.method public setPurchaseInfo(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 308
    const-string v0, ""

    .line 309
    const-string v1, ""

    .line 311
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    const/4 v0, 0x0

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    move-object v2, v0

    .line 317
    :goto_0
    if-eqz p1, :cond_1

    .line 318
    const v0, 0x7f0b0066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 319
    const v1, 0x7f0b0068

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 320
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    .line 315
    goto :goto_0
.end method
