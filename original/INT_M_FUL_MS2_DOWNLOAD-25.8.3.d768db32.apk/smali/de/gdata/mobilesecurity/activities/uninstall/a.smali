.class Lde/gdata/mobilesecurity/activities/uninstall/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/uninstall/a;->a:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 82
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/uninstall/a;->a:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uninstallTask"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 83
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/uninstall/a;->a:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "returnToTask"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 85
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/uninstall/a;->a:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 86
    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->removeActiveAdmin(Landroid/content/Context;)V

    .line 88
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_2

    .line 89
    if-eq v1, v5, :cond_1

    invoke-static {v2, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->moveTaskToFront(Landroid/content/Context;I)V

    .line 90
    :cond_1
    if-eq v0, v5, :cond_2

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->moveTaskToFront(Landroid/content/Context;I)V

    .line 93
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/uninstall/a;->a:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->finish()V

    .line 94
    return-void
.end method
