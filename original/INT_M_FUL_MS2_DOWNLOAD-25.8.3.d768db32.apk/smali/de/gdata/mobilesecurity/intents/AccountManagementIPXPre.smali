.class public Lde/gdata/mobilesecurity/intents/AccountManagementIPXPre;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;-><init>()V

    return-void
.end method

.method private a()Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;
    .locals 1

    .prologue
    .line 25
    .line 27
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;-><init>()V

    .line 29
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x1020002

    .line 11
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementIPXPre;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/AccountManagementIPXPre;->a()Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 17
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onPause()V

    .line 22
    return-void
.end method
