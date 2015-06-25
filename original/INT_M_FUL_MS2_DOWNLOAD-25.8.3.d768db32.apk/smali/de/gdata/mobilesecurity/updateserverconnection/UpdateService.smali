.class public Lde/gdata/mobilesecurity/updateserverconnection/UpdateService;
.super Landroid/app/IntentService;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/scan/AsyncAction;


# static fields
.field public static final BACKGROUND_UPDATE_FINISHED:I = 0x65c7f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "UpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public hasCancelled()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    .prologue
    const v11, 0x7f0d021c

    const/4 v1, 0x3

    const v2, 0x7f0d03c0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 40
    new-instance v7, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v7, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v3, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v0, "UpdateServer.HandleIntent() start"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v8, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;

    invoke-direct {v8, p0}, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->isPeriodicUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {v8}, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->disable()V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->isPeriodicUpdateWifiOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isConnectedViaWiFi(Landroid/content/Context;)Z

    move-result v0

    .line 62
    :goto_1
    if-eqz v0, :cond_7

    .line 65
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v4

    .line 68
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v6

    aput-object v4, v5, v10

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 69
    new-instance v9, Lde/gdata/mobilesecurity/updateserverconnection/Update;

    invoke-direct {v9, v0, v4, p0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 70
    invoke-virtual {v9}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->checkForProgramUpdate()I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 71
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->isInstalledFromMarket()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->hasCustomNotification(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    const v3, 0x7f020126

    const v4, 0x7f02012e

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(IIIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 79
    :cond_2
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->isShowTrayIcon()Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 81
    invoke-static {p0, v11}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 83
    const v2, 0x7f0d03c7

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {p0, v11}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 89
    const/high16 v5, 0x14000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    const-string v5, "AUTO_START_UPDATE"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    const/high16 v5, 0x8000000

    invoke-static {p0, v6, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 96
    new-instance v5, Landroid/app/Notification;

    const v10, 0x7f020132

    const-wide/16 v12, 0x0

    invoke-direct {v5, v10, v1, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 97
    invoke-virtual {v5, p0, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 98
    iget v1, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v5, Landroid/app/Notification;->flags:I

    .line 99
    const v1, 0x65c7f

    invoke-virtual {v0, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 104
    :cond_3
    invoke-virtual {v9}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateSignatures()I

    move-result v0

    .line 106
    invoke-virtual {v9}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateUpdateActions()Z

    .line 109
    sparse-switch v0, :sswitch_data_0

    move v1, v6

    .line 127
    :goto_2
    if-eqz v1, :cond_4

    .line 129
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->updateDateInLogEntryByMsgId(Landroid/content/Context;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 130
    new-instance v0, Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 133
    const-string v2, ""

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    .line 136
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_4
    :goto_3
    const-string v0, "UpdateServer.HandleIntent() done"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 147
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setTimeOfLastPeriodicUpdate(J)V

    .line 150
    invoke-virtual {v8}, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->enable()J

    .line 152
    new-instance v0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->fetchAndParseData()V

    .line 154
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->pushNewsToUI()V

    .line 165
    :goto_5
    invoke-static {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->updateLastScanOutdatedNotification(Landroid/content/Context;)V

    .line 166
    invoke-static {p0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateSigsOutdatedNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 60
    :cond_5
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isOnline(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_1

    .line 111
    :sswitch_0
    const/4 v0, 0x7

    move v1, v0

    .line 112
    goto :goto_2

    .line 114
    :sswitch_1
    const/16 v0, 0x8

    move v1, v0

    .line 115
    goto :goto_2

    .line 117
    :sswitch_2
    const/16 v0, 0x9

    move v1, v0

    .line 118
    goto :goto_2

    .line 120
    :sswitch_3
    const/16 v0, 0xa

    move v1, v0

    .line 121
    goto :goto_2

    .line 123
    :sswitch_4
    const/16 v0, 0xe

    move v1, v0

    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting log entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 145
    :cond_6
    const-string v0, "Update was not executed: no access data"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 158
    :cond_7
    const-string v0, "UpdateService offline: one day delayed"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {v8, v0, v1}, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->enable(J)J

    goto :goto_5

    .line 109
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_4
        0x1647 -> :sswitch_3
        0x1653 -> :sswitch_0
        0x165c -> :sswitch_1
        0x165d -> :sswitch_2
    .end sparse-switch
.end method
