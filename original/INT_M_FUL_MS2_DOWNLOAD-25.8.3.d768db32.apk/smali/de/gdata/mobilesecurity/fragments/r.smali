.class Lde/gdata/mobilesecurity/fragments/r;
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
    .line 92
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/r;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    const-string v1, "TAB_SELECTED"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/r;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/intents/AccountManagementPre;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/r;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXFragment;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
