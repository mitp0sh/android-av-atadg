.class public Lde/gdata/webportal/android/WebPortalSyncService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/webportal/android/Preferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "WebPortalSyncService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 77
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalSyncService;->a:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {v0}, Lde/gdata/webportal/android/Preferences;->isWebPortalEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalSyncService;->a:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {v0}, Lde/gdata/webportal/android/Preferences;->getLastWebPortalSync()J

    move-result-wide v0

    .line 79
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalSyncService;->a:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {v2}, Lde/gdata/webportal/android/Preferences;->getWebPortalSyncInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    .line 80
    add-long/2addr v0, v2

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 82
    new-instance v0, Lde/gdata/webportal/android/WebPortalClient;

    invoke-direct {v0, p0}, Lde/gdata/webportal/android/WebPortalClient;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v0}, Lde/gdata/webportal/android/WebPortalClient;->updateSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/gdata/webportal/android/WebPortalClient;->sendReports()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->ALL:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/webportal/android/WebPortalClient;->updateMDMSettings(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalSyncService;->a:Lde/gdata/webportal/android/Preferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lde/gdata/webportal/android/Preferences;->setWebPortalLastSync(J)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lde/gdata/webportal/android/WebPortalSyncService;->a(J)V

    goto :goto_0

    .line 87
    :cond_1
    const-string v0, "Failed to update WebPortalsync"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 88
    const-wide/32 v0, 0x493e0

    invoke-direct {p0, v0, v1}, Lde/gdata/webportal/android/WebPortalSyncService;->a(J)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lde/gdata/webportal/android/WebPortalSyncService;->a(J)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 96
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lde/gdata/webportal/android/WebPortalSyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 97
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "de.gdata.webportal.android.action.SYNC"

    const/4 v6, 0x0

    const-class v7, Lde/gdata/webportal/android/WebPortalSyncService;

    invoke-direct {v4, v5, v6, p0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v8, v4, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 100
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalSyncService;->a:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {v0}, Lde/gdata/webportal/android/Preferences;->isWebPortalEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v1, Lde/gdata/webportal/android/WebPortalClient;

    invoke-direct {v1, p0}, Lde/gdata/webportal/android/WebPortalClient;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v2, Lde/gdata/webportal/android/dto/ClientStatus;

    sget v3, Lde/gdata/webportal/android/dto/ClientStatus;->TYPE_INFECTED:I

    if-eqz p1, :cond_1

    sget v0, Lde/gdata/webportal/android/dto/ClientStatus;->INFECTED:I

    :goto_1
    invoke-direct {v2, v3, v0}, Lde/gdata/webportal/android/dto/ClientStatus;-><init>(II)V

    .line 72
    invoke-virtual {v1, v2}, Lde/gdata/webportal/android/WebPortalClient;->updateClientStatus(Lde/gdata/webportal/android/dto/ClientStatus;)Z

    goto :goto_0

    .line 70
    :cond_1
    sget v0, Lde/gdata/webportal/android/dto/ClientStatus;->CLEAN:I

    goto :goto_1
.end method

.method public static forceSync(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/webportal/android/WebPortalSyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    const-string v1, "de.gdata.webportal.android.action.SYNC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    new-instance v1, Lde/gdata/webportal/android/Preferences;

    invoke-direct {v1, p0}, Lde/gdata/webportal/android/Preferences;-><init>(Landroid/content/Context;)V

    .line 26
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lde/gdata/webportal/android/Preferences;->setWebPortalLastSync(J)V

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    return-void
.end method

.method public static startSync(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/webportal/android/WebPortalSyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string v1, "de.gdata.webportal.android.action.SYNC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    return-void
.end method

.method public static updateStatus(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/webportal/android/WebPortalSyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const-string v1, "infected_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    const-string v1, "de.gdata.webportal.android.action.STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 51
    new-instance v0, Lde/gdata/webportal/android/Preferences;

    invoke-direct {v0, p0}, Lde/gdata/webportal/android/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/webportal/android/WebPortalSyncService;->a:Lde/gdata/webportal/android/Preferences;

    .line 52
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 56
    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v2, "de.gdata.webportal.android.action.SYNC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalSyncService;->a()V

    .line 60
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDeviceInfected()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_NONE:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lde/gdata/webportal/android/WebPortalSyncService;->a(Z)V

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    const-string v2, "de.gdata.webportal.android.action.STATUS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string v1, "infected_status"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/webportal/android/WebPortalSyncService;->a(Z)V

    goto :goto_0
.end method
