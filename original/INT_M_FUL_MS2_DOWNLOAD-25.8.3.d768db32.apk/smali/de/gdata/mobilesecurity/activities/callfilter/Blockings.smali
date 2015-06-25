.class public Lde/gdata/mobilesecurity/activities/callfilter/Blockings;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/app/ActionBar;

.field private b:I


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
    .line 28
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/Blockings;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/Blockings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 31
    const-string v1, "DIRECTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DIRECTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/Blockings;->b:I

    .line 33
    iget v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/Blockings;->b:I

    sget v1, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->DIRECTION_IN:I

    if-ne v0, v1, :cond_1

    .line 34
    const v0, 0x7f0d01af

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/Blockings;->setTitle(I)V

    .line 38
    :goto_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/Blockings;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/Blockings;->a:Landroid/support/v7/app/ActionBar;

    .line 39
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/Blockings;->a:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    return-void

    .line 31
    :cond_0
    sget v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->DIRECTION_IN:I

    goto :goto_0

    .line 36
    :cond_1
    const v0, 0x7f0d01b0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/Blockings;->setTitle(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    if-nez p1, :cond_0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/callfilter/Blockings;->a()V

    .line 25
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/Blockings;->finish()V

    .line 56
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
