.class public Lde/gdata/mobilesecurity/intents/GdActionBarActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 34
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 36
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 37
    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    .line 42
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->popActivity(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->pushActivity(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public registerLocalBroadcastReceiver(Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    .line 86
    :cond_0
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/intents/e;

    invoke-direct {v0, p0, p1}, Lde/gdata/mobilesecurity/intents/e;-><init>(Lde/gdata/mobilesecurity/intents/GdActionBarActivity;Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;)V

    .line 93
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 96
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public unregisterLocalBroadcastReceiver(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    return-void
.end method
