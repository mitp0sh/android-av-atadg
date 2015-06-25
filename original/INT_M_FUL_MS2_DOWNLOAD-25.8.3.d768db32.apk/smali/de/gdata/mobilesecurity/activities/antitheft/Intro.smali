.class public Lde/gdata/mobilesecurity/activities/antitheft/Intro;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 29
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antitheft/Intro;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/Intro;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/Intro;->a:Landroid/support/v7/app/ActionBar;

    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/Intro;->a:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/Intro;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAntiTheftEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/Intro;->setResult(ILandroid/content/Intent;)V

    .line 86
    :goto_0
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->finish()V

    .line 87
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/Intro;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/Intro;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v0

    .line 67
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/Intro;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLocate(Z)V

    .line 70
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteRing(Z)V

    .line 71
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteMute(Z)V

    .line 72
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLock(Z)V

    .line 73
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 74
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    .line 75
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/Intro;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b00da

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->onBackPressed()Z

    move-result v0

    .line 58
    if-nez v0, :cond_0

    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onBackPressed()V

    .line 59
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    if-nez p1, :cond_0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/Intro;->a()V

    .line 26
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 45
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/Intro;->finish()V

    .line 47
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
