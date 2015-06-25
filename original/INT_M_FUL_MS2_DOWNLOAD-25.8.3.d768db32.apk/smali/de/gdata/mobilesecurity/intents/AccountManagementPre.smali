.class public Lde/gdata/mobilesecurity/intents/AccountManagementPre;
.super Lde/gdata/mobilesecurity/intents/GdActionBarActivity;
.source "SourceFile"


# instance fields
.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;-><init>()V

    .line 86
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x1020002

    .line 24
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;

    const v2, -0x969697

    invoke-direct {v1, p0, v2}, Lde/gdata/mobilesecurity/intents/AccountManagementPre$IcsColorDrawable;-><init>(Lde/gdata/mobilesecurity/intents/AccountManagementPre;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->b:Landroid/os/Bundle;

    .line 33
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 34
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 35
    new-instance v1, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;-><init>()V

    .line 36
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->b:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 40
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->b:Landroid/os/Bundle;

    const-string v1, "STARTED_FROM_WIZARD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->b:Landroid/os/Bundle;

    const-string v1, "STARTED_FROM_WIZARD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    const v0, 0x7f040009

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->overridePendingTransition(II)V

    .line 52
    :cond_2
    :goto_0
    return-void

    .line 47
    :cond_3
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 48
    new-instance v1, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;-><init>()V

    .line 49
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 68
    const v1, 0x102002c

    if-ne v1, v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->startActivity(Landroid/content/Intent;)V

    .line 75
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onPause()V

    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->b:Landroid/os/Bundle;

    const-string v1, "STARTED_FROM_WIZARD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->b:Landroid/os/Bundle;

    const-string v1, "STARTED_FROM_WIZARD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const v0, 0x7f040007

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/AccountManagementPre;->overridePendingTransition(II)V

    .line 62
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onResume()V

    .line 84
    return-void
.end method
