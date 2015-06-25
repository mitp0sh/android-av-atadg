.class public Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0300a0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigActivity;->setContentView(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 18
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 20
    :cond_0
    const v0, 0x7f04000a

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigActivity;->overridePendingTransition(II)V

    .line 21
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigActivity;->a()V

    .line 22
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 47
    return-void
.end method
