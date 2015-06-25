.class Lde/gdata/mobilesecurity/fragments/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/s;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/s;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->a(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/s;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/intents/AccountManagementIPX;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/s;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->b(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/s;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/s;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getLandingPageUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startAndroidBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/s;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/intents/AccountManagementPre;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method
