.class public Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final TAB_ACTIONS:I = 0x1

.field public static final TAB_SETTINGS:I = 0x2

.field private static a:I

.field private static b:I

.field private static c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# instance fields
.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v4/app/FragmentStatePagerAdapter;

.field private f:Landroid/support/v7/app/ActionBar;

.field private g:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x320a

    sput v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->a:I

    .line 31
    const/16 v0, 0x320b

    sput v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->b:I

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->d:Ljava/util/Vector;

    .line 42
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;)Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->f:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->d:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->setHasOptionsMenu(Z)V

    .line 55
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    sget v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->a:I

    const v1, 0x7f0d00df

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 113
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 115
    sget v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->b:I

    const v1, 0x7f0d00b3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020075

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    .line 68
    const v0, 0x7f030032

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 70
    const v0, 0x7f0b011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    .line 71
    new-instance v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->e:Landroid/support/v4/app/FragmentStatePagerAdapter;

    .line 73
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->e:Landroid/support/v4/app/FragmentStatePagerAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 74
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->f:Landroid/support/v7/app/ActionBar;

    .line 75
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->f:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->f:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 78
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->f:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->removeAllTabs()V

    move v0, v1

    .line 80
    :goto_0
    if-gt v0, v6, :cond_0

    .line 81
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->f:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    .line 82
    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_1
    new-instance v3, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment$TabListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    invoke-direct {v3, v4, v5}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment$TabListener;-><init>(Ljava/lang/String;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 92
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->f:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v3, v1}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :pswitch_0
    const v3, 0x7f0d00e9

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    goto :goto_1

    .line 87
    :pswitch_1
    const v3, 0x7f0d00e8

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    goto :goto_1

    .line 95
    :cond_0
    return-object v2

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 63
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->setNavigationMode()V

    .line 64
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->b:I

    if-ne v1, v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->startAntiTheftHelp(Landroid/app/Activity;)V

    .line 131
    :goto_0
    return v0

    .line 127
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->a:I

    if-ne v1, v2, :cond_1

    .line 128
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/antitheft/Intro;

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 101
    return-void
.end method
