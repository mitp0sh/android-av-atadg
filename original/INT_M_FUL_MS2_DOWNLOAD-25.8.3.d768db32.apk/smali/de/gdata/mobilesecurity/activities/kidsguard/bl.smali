.class Lde/gdata/mobilesecurity/activities/kidsguard/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bl;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 144
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bl;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 145
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bl;->a:Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity$WarningDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->lockPhone(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 146
    return-void
.end method
