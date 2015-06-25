.class public Lde/gdata/webportal/android/RegisterFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final ADD_DEVICE_URI:Ljava/lang/String; = "add_device_uri"

.field public static final IS_RUNNING:Ljava/lang/String; = "is_running"

.field public static final TOKEN:Ljava/lang/String; = "token"


# instance fields
.field a:Landroid/os/Handler;

.field private b:Z

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lde/gdata/webportal/android/Preferences;

.field private j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/webportal/android/RegisterFragment;->b:Z

    .line 258
    new-instance v0, Lde/gdata/webportal/android/d;

    invoke-direct {v0, p0}, Lde/gdata/webportal/android/d;-><init>(Lde/gdata/webportal/android/RegisterFragment;)V

    iput-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->a:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_0

    move v0, v1

    .line 188
    :goto_0
    iget-object v4, p0, Lde/gdata/webportal/android/RegisterFragment;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v3, p0, Lde/gdata/webportal/android/RegisterFragment;->k:Landroid/widget/Button;

    iget-object v4, p0, Lde/gdata/webportal/android/RegisterFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lde/gdata/webportal/android/RegisterFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lde/gdata/webportal/android/RegisterFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 192
    return-void

    :cond_0
    move v0, v2

    .line 186
    goto :goto_0

    :cond_1
    move v3, v2

    .line 188
    goto :goto_1

    :cond_2
    move v1, v2

    .line 189
    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lde/gdata/webportal/android/WebPortalClient;

    invoke-direct {v0, p1}, Lde/gdata/webportal/android/WebPortalClient;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-virtual {v0}, Lde/gdata/webportal/android/WebPortalClient;->isAlreadyRegistered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    iget-object v1, p0, Lde/gdata/webportal/android/RegisterFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Lde/gdata/webportal/android/WebPortalClient;->register(Ljava/lang/String;)Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;

    move-result-object v0

    .line 272
    new-instance v1, Lde/gdata/webportal/android/e;

    invoke-direct {v1, p0, p1, v0}, Lde/gdata/webportal/android/e;-><init>(Lde/gdata/webportal/android/RegisterFragment;Landroid/content/Context;Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;)V

    .line 278
    invoke-virtual {p0}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, v1}, Lde/gdata/webportal/android/RegisterFragment;->a(Z)V

    .line 236
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->isError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MACHINE_NAME_IS_NOT_UNIQUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->g:Landroid/widget/TextView;

    const v1, 0x7f0d0031

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->g:Landroid/widget/TextView;

    const v1, 0x7f0d0032

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v2, p0, Lde/gdata/webportal/android/RegisterFragment;->i:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {p2}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->getAccessKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/webportal/android/Preferences;->setWebPortalAccesskey(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lde/gdata/webportal/android/RegisterFragment;->i:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {v2, v0}, Lde/gdata/webportal/android/Preferences;->setWebPortalEnabled(Z)V

    .line 248
    invoke-virtual {p0}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 249
    invoke-virtual {p0}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 252
    :cond_3
    iget-object v2, p0, Lde/gdata/webportal/android/RegisterFragment;->i:Lde/gdata/webportal/android/Preferences;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lde/gdata/webportal/android/Preferences;->setWebPortalLastSync(J)V

    .line 253
    invoke-static {p1}, Lde/gdata/webportal/android/WebPortalSyncService;->startSync(Landroid/content/Context;)V

    .line 254
    iget-object v2, p0, Lde/gdata/webportal/android/RegisterFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDeviceInfected()I

    move-result v2

    sget v3, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_NONE:I

    if-eq v2, v3, :cond_4

    .line 255
    :goto_1
    invoke-static {p1, v0}, Lde/gdata/webportal/android/WebPortalSyncService;->updateStatus(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 254
    goto :goto_1
.end method

.method static synthetic a(Lde/gdata/webportal/android/RegisterFragment;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lde/gdata/webportal/android/RegisterFragment;->a()V

    return-void
.end method

.method static synthetic a(Lde/gdata/webportal/android/RegisterFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lde/gdata/webportal/android/RegisterFragment;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lde/gdata/webportal/android/RegisterFragment;Landroid/content/Context;Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lde/gdata/webportal/android/RegisterFragment;->a(Landroid/content/Context;Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;)V

    return-void
.end method

.method static synthetic a(Lde/gdata/webportal/android/RegisterFragment;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lde/gdata/webportal/android/RegisterFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 229
    iput-boolean p1, p0, Lde/gdata/webportal/android/RegisterFragment;->b:Z

    .line 230
    invoke-virtual {p0}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 231
    iget-object v1, p0, Lde/gdata/webportal/android/RegisterFragment;->k:Landroid/widget/Button;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 232
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lde/gdata/webportal/android/RegisterFragment;->a(Z)V

    .line 212
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSCommonSettingsHash(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSCommonSettingsETag(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->i:Lde/gdata/webportal/android/Preferences;

    iget-object v1, p0, Lde/gdata/webportal/android/RegisterFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/webportal/android/Preferences;->setWebPortalPassword(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->i:Lde/gdata/webportal/android/Preferences;

    iget-object v1, p0, Lde/gdata/webportal/android/RegisterFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/webportal/android/Preferences;->setWebPortalUsername(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/webportal/android/RegisterFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSName(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lde/gdata/webportal/android/c;

    invoke-direct {v2, p0, v0}, Lde/gdata/webportal/android/c;-><init>(Lde/gdata/webportal/android/RegisterFragment;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 226
    return-void
.end method

.method static synthetic b(Lde/gdata/webportal/android/RegisterFragment;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lde/gdata/webportal/android/RegisterFragment;->b()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 172
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 178
    const-string v3, "gdata"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "addDevice"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lde/gdata/webportal/android/RegisterFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-direct {p0}, Lde/gdata/webportal/android/RegisterFragment;->a()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-virtual {p0}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    .line 80
    const v0, 0x7f030052

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 82
    const-string v1, ""

    .line 83
    const v0, 0x7f0b01d9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->c:Landroid/widget/EditText;

    .line 84
    const v0, 0x7f0b01de

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->d:Landroid/widget/EditText;

    .line 85
    const v0, 0x7f0b01df

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->e:Landroid/widget/EditText;

    .line 86
    const v0, 0x7f0b01e0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->g:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0b01e1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->k:Landroid/widget/Button;

    .line 88
    const v0, 0x7f0b01db

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->f:Landroid/widget/EditText;

    .line 89
    const v0, 0x7f0b01da

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->l:Landroid/widget/ImageButton;

    .line 90
    const v0, 0x7f0b01dc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->h:Landroid/widget/TextView;

    .line 92
    if-eqz p3, :cond_2

    const-string v0, "is_running"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    const-string v0, "is_running"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/webportal/android/RegisterFragment;->a(Z)V

    .line 97
    :goto_0
    if-eqz p3, :cond_3

    const-string v0, "token"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-string v0, "token"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_1
    invoke-virtual {p0}, Lde/gdata/webportal/android/RegisterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 102
    new-instance v3, Lde/gdata/webportal/android/Preferences;

    invoke-virtual {p0}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lde/gdata/webportal/android/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lde/gdata/webportal/android/RegisterFragment;->i:Lde/gdata/webportal/android/Preferences;

    .line 104
    new-instance v3, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lde/gdata/webportal/android/RegisterFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 106
    const-string v3, "add_device_uri"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    const-string v0, "add_device_uri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lde/gdata/webportal/android/RegisterFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSName()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    iget-object v1, p0, Lde/gdata/webportal/android/RegisterFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/webportal/android/RegisterFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/webportal/android/RegisterFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->c:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/webportal/android/f;

    invoke-direct {v1, p0}, Lde/gdata/webportal/android/f;-><init>(Lde/gdata/webportal/android/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 125
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->e:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/webportal/android/f;

    invoke-direct {v1, p0}, Lde/gdata/webportal/android/f;-><init>(Lde/gdata/webportal/android/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->d:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/webportal/android/f;

    invoke-direct {v1, p0}, Lde/gdata/webportal/android/f;-><init>(Lde/gdata/webportal/android/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->f:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/webportal/android/f;

    invoke-direct {v1, p0}, Lde/gdata/webportal/android/f;-><init>(Lde/gdata/webportal/android/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->l:Landroid/widget/ImageButton;

    new-instance v1, Lde/gdata/webportal/android/a;

    invoke-direct {v1, p0}, Lde/gdata/webportal/android/a;-><init>(Lde/gdata/webportal/android/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->k:Landroid/widget/Button;

    new-instance v1, Lde/gdata/webportal/android/b;

    invoke-direct {v1, p0}, Lde/gdata/webportal/android/b;-><init>(Lde/gdata/webportal/android/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-direct {p0}, Lde/gdata/webportal/android/RegisterFragment;->a()V

    .line 156
    return-object v2

    .line 95
    :cond_2
    invoke-direct {p0, v3}, Lde/gdata/webportal/android/RegisterFragment;->a(Z)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 162
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 167
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    iget-object v0, p0, Lde/gdata/webportal/android/RegisterFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v1, "save instance"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOKEN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 200
    const-string v1, "is_running"

    iget-boolean v2, p0, Lde/gdata/webportal/android/RegisterFragment;->b:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    const-string v1, "token is NOT empty"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 203
    const-string v1, "token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v0, "token is empty"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
