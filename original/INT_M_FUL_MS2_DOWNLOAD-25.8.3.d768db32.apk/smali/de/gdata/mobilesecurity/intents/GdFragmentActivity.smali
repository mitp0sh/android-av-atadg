.class public Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"


# instance fields
.field localBroadcastReceiver:Ljava/util/HashMap;
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
    .line 29
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->supportRequestWindowFeature(I)Z

    .line 78
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 80
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 82
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;

    const v2, -0x969697

    invoke-direct {v1, p0, v2}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity$IcsColorDrawable;-><init>(Lde/gdata/mobilesecurity/intents/GdFragmentActivity;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 87
    const v0, 0x7f0d00f4

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isOrangeOemVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/OemOrange;->getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_1
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 97
    const v0, 0x7f04000a

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->overridePendingTransition(II)V

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 104
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

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

    .line 106
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

    .line 112
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->popActivity(Ljava/lang/String;)V

    .line 127
    const v0, 0x7f040007

    const v1, 0x7f04000d

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->overridePendingTransition(II)V

    .line 128
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->pushActivity(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public registerLocalBroadcastReceiver(Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

    .line 163
    :cond_0
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/intents/g;

    invoke-direct {v0, p0, p1}, Lde/gdata/mobilesecurity/intents/g;-><init>(Lde/gdata/mobilesecurity/intents/GdFragmentActivity;Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;)V

    .line 170
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 173
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 160
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public unregisterLocalBroadcastReceiver(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->localBroadcastReceiver:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    return-void
.end method
