.class public Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/RadioButton;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/TextView;

.field private f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->b:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->c:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const v0, 0x7f03001e

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 43
    const v0, 0x7f0b008f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->b:Landroid/widget/RadioButton;

    .line 44
    const v0, 0x7f0b0090

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->e:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0b0091

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->c:Landroid/widget/RadioButton;

    .line 46
    const v0, 0x7f0b0093

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->d:Landroid/widget/RadioButton;

    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 50
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v2, "DE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isIpxSubscriptionActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 61
    :cond_0
    const v0, 0x7f0b0095

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->a:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->a:Landroid/widget/Button;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/s;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/s;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 80
    return-object v1
.end method
