.class public Lde/gdata/mobilesecurity/privacy/DetailsActivity;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 19
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->savedText:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 23
    const-string v0, "PRIVACY"

    const-string v1, "Trying to start DetailsActivty in Landscape"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/DetailsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 31
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    :cond_1
    if-nez p1, :cond_2

    .line 37
    new-instance v0, Lde/gdata/mobilesecurity/privacy/DetailsFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;-><init>()V

    .line 38
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 41
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 45
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 50
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :pswitch_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsActivity;->finish()V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onResume()V

    .line 58
    return-void
.end method
