.class public Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 844
    .line 845
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    new-instance v1, Lde/gdata/mobilesecurity/activities/logs/ad;

    invoke-direct {v1, p0, v0, p2}, Lde/gdata/mobilesecurity/activities/logs/ad;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;Ljava/lang/String;Landroid/content/Intent;)V

    .line 898
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 899
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 900
    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 904
    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
