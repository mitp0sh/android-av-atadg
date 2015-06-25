.class public Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;-><init>()V

    .line 167
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d00f4

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0240

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lde/gdata/mobilesecurity/fragments/l;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/l;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d023a

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
