.class public Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
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
    .line 19
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getActionBarView()Landroid/view/View;
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 58
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "action_bar_container"

    const-string v3, "id"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 62
    :goto_0
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    :goto_1
    return-object v0

    .line 60
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "action_bar_container"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 31
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onDestroy()V

    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

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

    .line 44
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 45
    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

    .line 50
    :cond_1
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    .line 81
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 72
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public registerLocalBroadcastReceiver(Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

    .line 115
    :cond_0
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/intents/i;

    invoke-direct {v0, p0, p1}, Lde/gdata/mobilesecurity/intents/i;-><init>(Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;)V

    .line 122
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 125
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 112
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public unregisterLocalBroadcastReceiver(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    return-void
.end method
