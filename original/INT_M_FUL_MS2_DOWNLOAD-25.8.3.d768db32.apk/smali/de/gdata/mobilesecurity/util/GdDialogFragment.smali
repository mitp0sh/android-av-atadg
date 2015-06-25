.class public Lde/gdata/mobilesecurity/util/GdDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final DIALOG_ID:Ljava/lang/String; = "DIALOG_ID"

.field public static final DIALOG_MESSAGE:Ljava/lang/String; = "DIALOG_MESSAGE"

.field public static final PROGRESS_DIALOG:I = 0x1


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lde/gdata/mobilesecurity/util/GdDialogFragment;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lde/gdata/mobilesecurity/util/GdDialogFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/GdDialogFragment;-><init>()V

    .line 25
    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/util/GdDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/GdDialogFragment;->setRetainInstance(Z)V

    .line 36
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/GdDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DIALOG_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/util/GdDialogFragment;->a:I

    .line 37
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/GdDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DIALOG_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/GdDialogFragment;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    iget v0, p0, Lde/gdata/mobilesecurity/util/GdDialogFragment;->a:I

    if-ne v0, v2, :cond_0

    .line 43
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/GdDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 45
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/GdDialogFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 50
    new-instance v1, Lde/gdata/mobilesecurity/util/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/b;-><init>(Lde/gdata/mobilesecurity/util/GdDialogFragment;)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/GdDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/GdDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/GdDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 77
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 71
    return-void
.end method
