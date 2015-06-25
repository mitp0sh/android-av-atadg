.class public Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationActivity;
.super Lde/gdata/mobilesecurity/intents/GdActionBarActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f03007a

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationActivity;->setContentView(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b02d6

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->onBackPressed()Z

    move-result v0

    .line 50
    if-nez v0, :cond_0

    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onBackPressed()V

    .line 51
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 17
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020197

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 20
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 23
    :cond_0
    const v0, 0x7f04000a

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationActivity;->overridePendingTransition(II)V

    .line 24
    if-nez p1, :cond_1

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationActivity;->a()V

    .line 25
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onPause()V

    .line 56
    return-void
.end method
