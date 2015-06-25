.class public Lde/gdata/mobilesecurity/activities/filter/NewFilterActivity;
.super Lde/gdata/mobilesecurity/intents/GdActionBarActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterActivity;->setContentView(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b02b3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->onBackPressed()Z

    move-result v0

    .line 51
    if-nez v0, :cond_0

    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onBackPressed()V

    .line 52
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 13
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020197

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 16
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 18
    :cond_0
    const v0, 0x7f04000a

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterActivity;->overridePendingTransition(II)V

    .line 19
    if-nez p1, :cond_1

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterActivity;->a()V

    .line 20
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onPause()V

    .line 44
    return-void
.end method
