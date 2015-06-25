.class Lde/gdata/mobilesecurity/fragments/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/ag;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ag;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/ag;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getLandingPageUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startAndroidBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    return-void
.end method
