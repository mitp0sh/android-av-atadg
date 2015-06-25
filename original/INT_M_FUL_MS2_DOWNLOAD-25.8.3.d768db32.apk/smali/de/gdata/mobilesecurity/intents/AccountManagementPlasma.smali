.class public Lde/gdata/mobilesecurity/intents/AccountManagementPlasma;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;-><init>()V

    return-void
.end method

.method private a()Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPlasma;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    const-string v2, "red"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v0, "red"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    .line 47
    :cond_0
    if-eqz v0, :cond_1

    .line 48
    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->newInstance(Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;)Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x1020002

    .line 18
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPlasma;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 21
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPlasma;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPlasma;->a()Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 25
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 59
    const v1, 0x102002c

    if-ne v1, v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPlasma;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementPlasma;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 63
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/AccountManagementPlasma;->startActivity(Landroid/content/Intent;)V

    .line 66
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onPause()V

    .line 30
    return-void
.end method
