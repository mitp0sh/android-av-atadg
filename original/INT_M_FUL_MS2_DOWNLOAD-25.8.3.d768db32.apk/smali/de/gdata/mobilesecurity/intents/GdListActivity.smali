.class public Lde/gdata/mobilesecurity/intents/GdListActivity;
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
    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 30
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 31
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 33
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 37
    const v0, 0x7f0d00f4

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isOrangeOemVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/OemOrange;->getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    const v0, 0x7f04000a

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/GdListActivity;->overridePendingTransition(II)V

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 52
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

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

    .line 54
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 55
    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

    .line 60
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 71
    const v0, 0x7f040007

    const v1, 0x7f04000d

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/GdListActivity;->overridePendingTransition(II)V

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->popActivity(Ljava/lang/String;)V

    .line 75
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->pushActivity(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public registerLocalBroadcastReceiver(Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

    .line 106
    :cond_0
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/intents/h;

    invoke-direct {v0, p0, p1}, Lde/gdata/mobilesecurity/intents/h;-><init>(Lde/gdata/mobilesecurity/intents/GdListActivity;Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;)V

    .line 113
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 116
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 103
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public unregisterLocalBroadcastReceiver(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdListActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    return-void
.end method
