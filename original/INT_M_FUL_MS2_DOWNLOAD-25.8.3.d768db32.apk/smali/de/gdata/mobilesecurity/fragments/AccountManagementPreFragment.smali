.class public Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final TAB_SELECTED:Ljava/lang/String; = "TAB_SELECTED"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;

.field private d:Z

.field private e:Landroid/support/v7/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 23
    const-string v0, "1"

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->a:Ljava/lang/String;

    .line 24
    const-string v0, "2"

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->b:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->c:Landroid/os/Bundle;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->d:Z

    .line 116
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 78
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->removeAllTabs()V

    .line 79
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    .line 82
    const v2, 0x7f0d0059

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    .line 83
    const-string v2, "1"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    .line 84
    const v2, 0x7f0d005d

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    .line 85
    const-string v2, "2"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    .line 87
    new-instance v2, Lde/gdata/mobilesecurity/fragments/ac;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/ac;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 88
    new-instance v2, Lde/gdata/mobilesecurity/fragments/ac;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/ac;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 90
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 97
    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 99
    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->c:Landroid/os/Bundle;

    const-string v3, "TAB_SELECTED"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->c:Landroid/os/Bundle;

    const-string v3, "TAB_SELECTED"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 102
    :pswitch_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->d:Z

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 35
    const v0, 0x7f030019

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->c:Landroid/os/Bundle;

    .line 38
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->c:Landroid/os/Bundle;

    const-string v2, "STARTED_FROM_WIZARD"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->c:Landroid/os/Bundle;

    const-string v2, "STARTED_FROM_WIZARD"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->d:Z

    .line 41
    :cond_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->a()V

    .line 43
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->removeAllTabs()V

    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->e:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 70
    :cond_0
    return-void
.end method
