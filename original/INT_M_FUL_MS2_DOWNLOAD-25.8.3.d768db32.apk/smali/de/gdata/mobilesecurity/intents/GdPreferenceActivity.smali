.class public Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# instance fields
.field d:Ljava/util/HashMap;
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
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->d:Ljava/util/HashMap;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isShowTrayIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->hide()Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 38
    const v0, 0x7f0d00f4

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->getString(I)Ljava/lang/String;

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
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    const v0, 0x7f04000a

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->overridePendingTransition(II)V

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 77
    const v0, 0x7f040007

    const v1, 0x7f04000d

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->overridePendingTransition(II)V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->popActivity(Ljava/lang/String;)V

    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->pushActivity(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 65
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->a()V

    .line 66
    return-void
.end method

.method public registerLocalBroadcastReceiver(Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->d:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->d:Ljava/util/HashMap;

    .line 112
    :cond_0
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/intents/j;

    invoke-direct {v0, p0, p1}, Lde/gdata/mobilesecurity/intents/j;-><init>(Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;)V

    .line 119
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 122
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public unregisterLocalBroadcastReceiver(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-void
.end method
