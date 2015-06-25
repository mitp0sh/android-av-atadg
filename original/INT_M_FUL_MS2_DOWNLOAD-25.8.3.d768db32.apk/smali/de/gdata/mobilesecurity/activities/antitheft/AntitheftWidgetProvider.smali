.class public Lde/gdata/mobilesecurity/activities/antitheft/AntitheftWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method protected static getPendingSelfIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/activities/antitheft/AntitheftWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static updateAppWidgets(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 89
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 90
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lde/gdata/mobilesecurity/activities/antitheft/AntitheftWidgetProvider;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 93
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 94
    invoke-static {p0, v1, v4}, Lde/gdata/mobilesecurity/activities/antitheft/AntitheftWidgetProvider;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public static updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 6

    .prologue
    const v5, 0x7f0b00d8

    .line 28
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030027

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 29
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lde/gdata/mobilesecurity/activities/antitheft/AntitheftWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 32
    const v3, 0x7f0b00d9

    const-string v4, "automaticWidgetSyncButtonClick"

    invoke-static {p0, v4, p2}, Lde/gdata/mobilesecurity/activities/antitheft/AntitheftWidgetProvider;->getPendingSelfIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 35
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isHeadsetProtectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-string v2, "setBackgroundResource"

    const v3, 0x7f02009b

    invoke-virtual {v0, v5, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 43
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 44
    return-void

    .line 39
    :cond_0
    const-string v2, "setBackgroundResource"

    const v3, 0x7f02009a

    invoke-virtual {v0, v5, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const v8, 0x7f02009b

    const v7, 0x7f02009a

    const v6, 0x7f0b00d8

    .line 48
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030027

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 53
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lde/gdata/mobilesecurity/activities/antitheft/AntitheftWidgetProvider;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    new-instance v3, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v3, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v4, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isHeadsetProtectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    const-string v3, "setBackgroundResource"

    invoke-virtual {v1, v6, v3, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 64
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 79
    :cond_0
    :goto_1
    return-void

    .line 61
    :cond_1
    const-string v3, "setBackgroundResource"

    invoke-virtual {v1, v6, v3, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v4, "automaticWidgetSyncButtonClick"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isHeadsetProtectionEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    const-string v4, "setBackgroundResource"

    invoke-virtual {v1, v6, v4, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 69
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setHeadsetProtectionEnabled(Z)V

    .line 71
    invoke-static {}, Lde/gdata/mobilesecurity/services/RemoteCommandService;->stopPlayer()V

    .line 77
    :goto_2
    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_1

    .line 73
    :cond_3
    const-string v4, "setBackgroundResource"

    invoke-virtual {v1, v6, v4, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 75
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setHeadsetProtectionEnabled(Z)V

    goto :goto_2
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .prologue
    .line 20
    if-eqz p3, :cond_0

    .line 21
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p3, v0

    .line 22
    invoke-static {p1, p2, v2}, Lde/gdata/mobilesecurity/activities/antitheft/AntitheftWidgetProvider;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
