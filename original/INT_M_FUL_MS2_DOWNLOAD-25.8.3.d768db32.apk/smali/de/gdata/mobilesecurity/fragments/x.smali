.class Lde/gdata/mobilesecurity/fragments/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/x;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 489
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/x;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/x;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 492
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 493
    const-string v1, "AUTO_START_UPDATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 495
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/x;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->startActivity(Landroid/content/Intent;)V

    .line 496
    return-void
.end method
