.class public Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION_UPDATE:Ljava/lang/String; = "de.gdata.mobilesecurity2.ACTION_UPDATE"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lde/gdata/mobilesecurity/util/BasePreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->a:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->a:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 35
    iput-object p1, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->a:Landroid/content/Context;

    .line 36
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 37
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "de.gdata.mobilesecurity2.ACTION_UPDATE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 108
    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->a:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 110
    const-string v0, "UpdateAlarmReceiver().disable() Update Alarm stopped"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enable()J
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getPeriodicUpdateIntervalDays()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->enable(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public enable(II)J
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTimeOfLastPeriodicUpdate()J

    move-result-wide v0

    .line 58
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2, v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setTimeOfLastPeriodicUpdate(J)V

    .line 64
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTimeOfLastPeriodicUpdate()J

    move-result-wide v0

    int-to-long v2, p1

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    int-to-long v2, p2

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->minToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->minToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 71
    :cond_1
    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->enable(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public enable(J)J
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    .line 80
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    move-wide p1, v2

    .line 97
    :goto_0
    return-wide p1

    .line 82
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v4, "de.gdata.mobilesecurity2.ACTION_UPDATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v4, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->a:Landroid/content/Context;

    invoke-static {v4, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 87
    iget-object v4, p0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->isPeriodicUpdate()Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->disable()V

    move-wide p1, v2

    .line 90
    goto :goto_0

    .line 93
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateAlarmReceiver() - set trigger to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyDate;->toUserFriendlyString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 115
    const-string v0, "UpdateAlarmReceiver.onReceive()"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/updateserverconnection/UpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    return-void
.end method
