.class Lde/gdata/mobilesecurity/fragments/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/m;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;-><init>()V

    .line 52
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/m;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 53
    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 55
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 56
    return-void
.end method
