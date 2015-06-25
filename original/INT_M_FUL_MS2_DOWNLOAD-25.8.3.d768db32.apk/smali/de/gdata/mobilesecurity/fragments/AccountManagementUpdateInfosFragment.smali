.class public Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->a:Landroid/view/View;

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const v3, 0x7f0b00c1

    .line 39
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 40
    const v0, 0x7f030021

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 42
    const v0, 0x7f0b0058

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->a:Landroid/view/View;

    .line 44
    const v0, 0x7f0b00be

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v0, 0x7f0b00c0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f0b00bc

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    new-instance v2, Lde/gdata/mobilesecurity/fragments/aj;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/aj;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->restrictButtonWidth(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const v0, 0x7f0a005c

    invoke-static {v1, v3, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/app/Activity;II)V

    .line 61
    :cond_0
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->restrictDialogLayoutWidth(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const v0, 0x7f0b00b9

    const v2, 0x7f0a005d

    invoke-static {v1, v0, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->setDialogLayoutWidth(Landroid/app/Activity;II)V

    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public OCL_forward()V
    .locals 4

    .prologue
    const v3, 0x7f0b02a8

    .line 76
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->a:Landroid/view/View;

    const v1, 0x7f0b00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 78
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/intents/AccountManagementPre;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lde/gdata/mobilesecurity/intents/Main;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->a:Landroid/view/View;

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 87
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->isPlasmaAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lde/gdata/mobilesecurity/intents/Main;

    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/intents/AccountManagementPlasma;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    :goto_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lde/gdata/mobilesecurity/intents/Main;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 93
    :cond_2
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;-><init>()V

    .line 94
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 98
    :cond_3
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isInstalledFromMarket()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isGoogleMarketPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    :cond_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lde/gdata/mobilesecurity/intents/Main;

    if-nez v0, :cond_5

    .line 101
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/intents/AccountManagementInApp;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 104
    :cond_5
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;-><init>()V

    .line 105
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 110
    :cond_6
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "http://m.gdatasoftware.com/rd/updateoffer/"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    invoke-direct {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->a()V

    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    invoke-direct {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementUpdateInfosFragment;->a()V

    .line 36
    return-void
.end method
