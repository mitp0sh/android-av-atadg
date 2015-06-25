.class public Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const-string v0, "TAG"

    sput-object v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;-><init>()V

    .line 142
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 143
    sget-object v2, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;->setArguments(Landroid/os/Bundle;)V

    .line 146
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    const v1, 0x7f0d0336

    new-instance v2, Lde/gdata/mobilesecurity/activities/logs/ab;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/logs/ab;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0339

    new-instance v2, Lde/gdata/mobilesecurity/activities/logs/aa;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/logs/aa;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0337

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0335

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
