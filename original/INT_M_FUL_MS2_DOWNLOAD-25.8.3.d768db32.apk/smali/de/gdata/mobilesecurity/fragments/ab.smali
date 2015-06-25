.class Lde/gdata/mobilesecurity/fragments/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/ab;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ab;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/intents/Main;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/intents/Main;->selectItem(ILandroid/os/Bundle;)V

    .line 606
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ab;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/ab;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 608
    return-void
.end method
