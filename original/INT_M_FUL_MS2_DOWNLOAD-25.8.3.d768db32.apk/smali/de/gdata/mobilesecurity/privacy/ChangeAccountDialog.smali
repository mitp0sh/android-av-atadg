.class public Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 15
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 16
    const-string v1, "entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    .line 18
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "detail_settings"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/DetailSettings;

    .line 21
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    const v1, 0x7f0d0498

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0491

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d048a

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lde/gdata/mobilesecurity/privacy/h;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/privacy/h;-><init>(Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d048b

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lde/gdata/mobilesecurity/privacy/g;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/privacy/g;-><init>(Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
