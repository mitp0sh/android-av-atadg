.class public Lde/gdata/mobilesecurity/activities/browser/BrowserPreferences;
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

.method private a()Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;
    .locals 1

    .prologue
    .line 25
    .line 27
    new-instance v0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;-><init>()V

    .line 29
    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 49
    :pswitch_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferences;->startBrowserActivity()V

    .line 51
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferences;->finish()V

    .line 53
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x1020002

    .line 14
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferences;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 18
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferences;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferences;->a()Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 22
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 34
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferences;->startBrowserActivity()V

    .line 37
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferences;->finish()V

    .line 39
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public startBrowserActivity()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    const-class v1, Lde/gdata/mobilesecurity/activities/browser/BrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 62
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferences;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
