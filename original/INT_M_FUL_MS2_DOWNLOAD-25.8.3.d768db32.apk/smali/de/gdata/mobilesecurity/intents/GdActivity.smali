.class public Lde/gdata/mobilesecurity/intents/GdActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"


# instance fields
.field b:Ljava/util/HashMap;
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
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 33
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 36
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 38
    const v0, 0x7f0d00f4

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isOrangeOemVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/OemOrange;->getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    const v0, 0x7f04000a

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/GdActivity;->overridePendingTransition(II)V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 53
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

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

    .line 55
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 56
    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

    .line 61
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f040007

    const v1, 0x7f04000d

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/GdActivity;->overridePendingTransition(II)V

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->popActivity(Ljava/lang/String;)V

    .line 76
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->pushActivity(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public registerLocalBroadcastReceiver(Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

    .line 107
    :cond_0
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/intents/f;

    invoke-direct {v0, p0, p1}, Lde/gdata/mobilesecurity/intents/f;-><init>(Lde/gdata/mobilesecurity/intents/GdActivity;Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;)V

    .line 114
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 117
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 104
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public unregisterLocalBroadcastReceiver(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    return-void
.end method
