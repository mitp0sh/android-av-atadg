.class public Lde/gdata/mobilesecurity/activities/filter/ContactSelectionActivity;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/app/ActionBar;

.field private b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionActivity;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionActivity;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 27
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionActivity;->a:Landroid/support/v7/app/ActionBar;

    .line 30
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionActivity;->a:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    if-nez p1, :cond_0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionActivity;->a()V

    .line 22
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 43
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionActivity;->finish()V

    .line 47
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
