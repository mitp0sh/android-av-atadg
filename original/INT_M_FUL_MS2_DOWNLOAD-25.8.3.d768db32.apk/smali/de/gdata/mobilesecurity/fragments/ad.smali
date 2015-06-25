.class Lde/gdata/mobilesecurity/fragments/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/ad;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ad;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lde/gdata/mobilesecurity/intents/Main;

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ad;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 76
    :cond_0
    return-void
.end method
