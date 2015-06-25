.class public Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;->b:Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;

    .line 138
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 139
    return-void
.end method


# virtual methods
.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 149
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;->b:Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->a(Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;)Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;->b:Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->a(Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;)Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;->b:Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->a(Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;)Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getTabCount()I

    move-result v0

    iget v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;->a:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;->b:Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->a(Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;)Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 152
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 171
    invoke-static {p1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a(I)Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;->b:Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->b(Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 173
    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;->b:Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 157
    const-string v1, "ANTITHEFT_PAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ANTITHEFT_PAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 159
    :cond_0
    iput p2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment$ViewPagerAdapter;->a:I

    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 162
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
