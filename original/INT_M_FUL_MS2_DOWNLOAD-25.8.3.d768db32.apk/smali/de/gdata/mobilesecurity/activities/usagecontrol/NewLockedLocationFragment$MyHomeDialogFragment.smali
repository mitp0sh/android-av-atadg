.class public Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V
    .locals 1

    .prologue
    .line 562
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 563
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;->a:Landroid/content/Context;

    .line 564
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 569
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d02da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02d9

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0240

    new-instance v2, Lde/gdata/mobilesecurity/activities/usagecontrol/am;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/am;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
