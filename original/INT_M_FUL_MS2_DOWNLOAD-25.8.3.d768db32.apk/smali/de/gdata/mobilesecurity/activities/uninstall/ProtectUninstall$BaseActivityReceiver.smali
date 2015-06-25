.class public Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall$BaseActivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall$BaseActivityReceiver;->a:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "de.gdata.FINISH_UNINSTALL_PROTECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall$BaseActivityReceiver;->a:Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;->finish()V

    .line 149
    :cond_0
    return-void
.end method
