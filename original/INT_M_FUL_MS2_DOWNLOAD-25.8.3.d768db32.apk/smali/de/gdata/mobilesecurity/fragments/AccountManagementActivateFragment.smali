.class public Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;


# static fields
.field public static final BUNDLE_ENTER_ONLY:Ljava/lang/String; = "enter_only"


# instance fields
.field private a:Z

.field private b:Landroid/support/v4/app/FragmentActivity;

.field private c:Landroid/content/Context;

.field private d:Landroid/support/v4/app/DialogFragment;

.field private e:Z

.field private f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->d:Landroid/support/v4/app/DialogFragment;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->e:Z

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string v2, "#g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    const-string v1, "managed by Google Market"

    .line 178
    const-string v0, ""

    move-object v2, v1

    move-object v1, v0

    .line 185
    :goto_1
    if-eqz p1, :cond_0

    .line 186
    const v0, 0x7f0b005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 187
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const v0, 0x7f0b0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 189
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->c:Landroid/content/Context;

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->isAntiVirusFree(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    const-string v1, ""

    .line 182
    const-string v0, ""

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v2, v1

    move-object v1, v0

    goto :goto_1
.end method

.method public static checkSubscriptionState(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 250
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 257
    return-void
.end method


# virtual methods
.method public OCL_connectToServer()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f0b005f

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v3, "#"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 200
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    const v4, 0x7f0b0060

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v4

    .line 202
    new-array v0, v7, [Ljava/lang/String;

    aput-object v3, v0, v1

    aput-object v4, v0, v2

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const/4 v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->onServerStatus(ILandroid/os/Bundle;)V

    .line 215
    :goto_0
    return-void

    .line 207
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v5, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->c:Landroid/content/Context;

    invoke-direct {v0, v5}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 211
    :goto_1
    iget-boolean v5, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->e:Z

    if-nez v5, :cond_4

    .line 212
    new-instance v5, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;

    iget-object v6, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v5, v6, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    new-array v6, v8, [Ljava/lang/String;

    aput-object v3, v6, v1

    aput-object v4, v6, v2

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_2
    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 208
    goto :goto_1

    .line 212
    :cond_3
    const-string v0, "0"

    goto :goto_2

    .line 214
    :cond_4
    new-instance v5, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;

    iget-object v6, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v5, v6, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v1

    aput-object v4, v6, v2

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_3
    aput-object v0, v6, v7

    const-string v0, "1"

    aput-object v0, v6, v8

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_5
    const-string v0, "0"

    goto :goto_3
.end method

.method public OCL_forgottonData()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "http://m.gdatasoftware.com/rd/lost-login-data/"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public OCL_registerAtServer()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 229
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->getTabAt(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 230
    return-void
.end method

.method public cancelSubscription(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 233
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 235
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;

    invoke-direct {v2, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "de.gdata.mobilesecurity.intents.Main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    return-void
.end method

.method public createGui(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f0b0063

    const v7, 0x7f0b0062

    const v6, 0x7f0b0061

    const/4 v5, 0x0

    const v4, 0x7f0a005c

    .line 87
    const v0, 0x7f030018

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 89
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 91
    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 93
    const v0, 0x7f0b005c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0b005e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 96
    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const v3, 0x7f0d007f

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 103
    new-instance v1, Lde/gdata/mobilesecurity/fragments/a;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/fragments/a;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 111
    new-instance v1, Lde/gdata/mobilesecurity/fragments/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/fragments/b;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 119
    new-instance v1, Lde/gdata/mobilesecurity/fragments/c;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/fragments/c;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->restrictButtonWidth(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v6, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/app/Activity;II)V

    .line 128
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v7, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/app/Activity;II)V

    .line 129
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v8, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/app/Activity;II)V

    .line 133
    :cond_1
    const v1, 0x7f0b0060

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 134
    new-instance v3, Lde/gdata/mobilesecurity/fragments/d;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/fragments/d;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 142
    invoke-direct {p0, v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->a(Landroid/view/View;)V

    .line 144
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isIpxSubscriptionActive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    :cond_2
    return-object v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->c:Landroid/content/Context;

    .line 55
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 58
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    const-string v0, "enter_only"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "enter_only"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->a:Z

    .line 64
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    if-eqz v1, :cond_2

    const-string v0, "STARTED_FROM_WIZARD"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "STARTED_FROM_WIZARD"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->e:Z

    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 62
    :cond_1
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->a:Z

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->createGui(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 160
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->d:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->d:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->d:Landroid/support/v4/app/DialogFragment;

    .line 162
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->a(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method public onServerStatus(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 261
    sparse-switch p1, :sswitch_data_0

    .line 279
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->d:Landroid/support/v4/app/DialogFragment;

    .line 281
    :goto_0
    return-void

    .line 264
    :sswitch_0
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->e:Z

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 268
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    const-string v1, "AUTO_START_UPDATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 275
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 261
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1869b -> :sswitch_0
    .end sparse-switch
.end method
