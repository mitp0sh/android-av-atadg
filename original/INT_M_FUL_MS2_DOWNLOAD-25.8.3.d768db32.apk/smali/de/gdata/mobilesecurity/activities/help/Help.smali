.class public Lde/gdata/mobilesecurity/activities/help/Help;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/app/ActionBar;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 31
    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/help/Help;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/help/Help;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/help/Help;->a:Landroid/support/v7/app/ActionBar;

    .line 36
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/help/Help;->a:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/help/Help;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    const-string v1, "helpTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "helpTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/help/Help;->b:Ljava/lang/String;

    .line 27
    if-nez p1, :cond_0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/help/Help;->a()V

    .line 28
    :cond_0
    return-void

    .line 25
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/help/Help;->finish()V

    .line 55
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onPause()V

    .line 61
    return-void
.end method
