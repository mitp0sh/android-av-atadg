.class Lde/gdata/mobilesecurity/fragments/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/ActionBar$TabListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/ac;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 6

    .prologue
    const v5, 0x7f0b0064

    const/4 v4, 0x1

    .line 123
    const-string v0, "1"

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;-><init>()V

    .line 126
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/ac;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->a(Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/ac;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 128
    :cond_0
    invoke-virtual {p2, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    const-string v0, "2"

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/ac;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 132
    new-instance v2, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v2, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 134
    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/ac;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->a(Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 135
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->isPlasmaAvailable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 136
    instance-of v3, v1, Lde/gdata/mobilesecurity/intents/Main;

    if-nez v3, :cond_4

    .line 137
    const-class v3, Lde/gdata/mobilesecurity/intents/AccountManagementPlasma;

    invoke-static {v1, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 154
    :goto_1
    const-string v1, ""

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 155
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 156
    const-string v2, "enter_only"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 169
    :cond_3
    :goto_2
    invoke-virtual {p2, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 141
    :cond_4
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;-><init>()V

    goto :goto_1

    .line 143
    :cond_5
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->isInstalledFromMarket()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 144
    instance-of v3, v1, Lde/gdata/mobilesecurity/intents/Main;

    if-nez v3, :cond_6

    .line 145
    const-class v3, Lde/gdata/mobilesecurity/intents/AccountManagementInApp;

    invoke-static {v1, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 149
    :cond_6
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;-><init>()V

    goto :goto_1

    .line 151
    :cond_7
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;-><init>()V

    goto :goto_1

    .line 160
    :cond_8
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;-><init>()V

    .line 161
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/ac;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 163
    const-string v3, ""

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 164
    const-string v2, "enter_only"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    :cond_9
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method
