.class Lde/gdata/mobilesecurity/fragments/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/e;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 81
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/e;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->isMobileNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/e;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->a(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)V

    .line 84
    new-instance v0, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/e;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;->enable(J)J

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    const-string v1, "showSubscriptionStartedDialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/e;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "de.gdata.mobilesecurity.intents.Main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/e;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;->newInstance()Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/e;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
