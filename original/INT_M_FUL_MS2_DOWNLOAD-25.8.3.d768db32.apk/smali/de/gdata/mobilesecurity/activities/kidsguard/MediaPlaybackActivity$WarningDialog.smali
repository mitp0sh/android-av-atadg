.class public Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;-><init>()V

    .line 130
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d00f4

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0240

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/bl;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/bl;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    const v1, 0x7f0d031d

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
