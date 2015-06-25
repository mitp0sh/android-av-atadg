.class Lde/gdata/mobilesecurity/receiver/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lde/gdata/mobilesecurity/receiver/b;->d:Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;

    iput-object p2, p0, Lde/gdata/mobilesecurity/receiver/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lde/gdata/mobilesecurity/receiver/b;->b:Landroid/content/Context;

    iput-object p4, p0, Lde/gdata/mobilesecurity/receiver/b;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 49
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.UNINSTALL_PACKAGE"

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppListDirty(Ljava/lang/Boolean;)V

    .line 55
    :cond_1
    invoke-static {}, Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 56
    :try_start_0
    invoke-static {}, Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;

    .line 57
    iget-object v3, p0, Lde/gdata/mobilesecurity/receiver/b;->c:Landroid/content/Intent;

    invoke-interface {v0, v3}, Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;->onPackageModified(Landroid/content/Intent;)V

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :cond_3
    return-void
.end method
