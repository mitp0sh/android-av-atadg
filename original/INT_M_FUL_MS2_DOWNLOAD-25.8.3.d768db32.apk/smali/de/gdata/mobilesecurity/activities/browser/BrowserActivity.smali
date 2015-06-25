.class public Lde/gdata/mobilesecurity/activities/browser/BrowserActivity;
.super Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;-><init>()V

    return-void
.end method

.method private a()Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;
    .locals 1

    .prologue
    .line 28
    .line 30
    new-instance v0, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;-><init>()V

    .line 32
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x1020002

    const/16 v1, 0x400

    .line 14
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 19
    new-instance v0, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 21
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserActivity;->a()Lde/gdata/mobilesecurity/activities/browser/BrowserFragment;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 25
    :cond_0
    return-void
.end method

.method public onHintClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
