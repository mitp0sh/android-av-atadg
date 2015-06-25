.class Lde/gdata/mobilesecurity/fragments/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/c;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/c;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/c;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->cancelSubscription(Landroid/content/Context;)V

    .line 123
    return-void
.end method
