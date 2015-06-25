.class public Lde/gdata/mobilesecurity/intents/ActionManagerRegisterActivity;
.super Lde/gdata/mobilesecurity/intents/GdActionBarActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 16
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/ActionManagerRegisterActivity;->requestWindowFeature(I)Z

    .line 19
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/ActionManagerRegisterActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d008b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 20
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/ActionManagerRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 22
    const v1, 0x7f030022

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/ActionManagerRegisterActivity;->setContentView(I)V

    .line 23
    if-nez p1, :cond_1

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    if-eqz v0, :cond_0

    .line 26
    const-string v2, "add_device_uri"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/ActionManagerRegisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f0b00c2

    const-class v3, Lde/gdata/webportal/android/RegisterFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 31
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 39
    const v1, 0x7f0b0389

    if-ne v0, v1, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
