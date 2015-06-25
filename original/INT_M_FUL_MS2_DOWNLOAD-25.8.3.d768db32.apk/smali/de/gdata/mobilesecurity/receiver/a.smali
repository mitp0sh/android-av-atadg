.class Lde/gdata/mobilesecurity/receiver/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lde/gdata/mobilesecurity/receiver/a;->e:Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;

    iput-object p2, p0, Lde/gdata/mobilesecurity/receiver/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lde/gdata/mobilesecurity/receiver/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lde/gdata/mobilesecurity/receiver/a;->c:Landroid/content/Context;

    iput-object p5, p0, Lde/gdata/mobilesecurity/receiver/a;->d:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 67
    const-string v0, "android.intent.action.PACKAGE_INSTALL"

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/a;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getSmsReceivers(Landroid/content/Context;Z)Ljava/util/Vector;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageAddedReceiver.onReceive():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getLabelFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lde/gdata/mobilesecurity/receiver/a;->c:Landroid/content/Context;

    const-class v4, Lde/gdata/mobilesecurity/scan/ScanService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v3, "app_to_scan"

    iget-object v4, p0, Lde/gdata/mobilesecurity/receiver/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v3, "app_label_to_scan"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/a;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/a;->c:Landroid/content/Context;

    const-class v2, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/a;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    :cond_1
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 91
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppListDirty(Ljava/lang/Boolean;)V

    .line 93
    :cond_2
    invoke-static {}, Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 94
    :try_start_0
    invoke-static {}, Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;

    .line 95
    iget-object v3, p0, Lde/gdata/mobilesecurity/receiver/a;->d:Landroid/content/Intent;

    invoke-interface {v0, v3}, Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;->onPackageModified(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_4
    return-void
.end method
