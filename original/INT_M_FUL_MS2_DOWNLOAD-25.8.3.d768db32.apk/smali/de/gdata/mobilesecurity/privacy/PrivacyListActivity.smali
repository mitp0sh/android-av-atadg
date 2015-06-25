.class public Lde/gdata/mobilesecurity/privacy/PrivacyListActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f03008f

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 21
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 24
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 33
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 35
    :pswitch_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListActivity;->finish()V

    .line 36
    const/4 v0, 0x1

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 29
    return-void
.end method
