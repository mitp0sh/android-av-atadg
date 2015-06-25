.class public Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION_SCAN:Ljava/lang/String; = ".ACTION_SCAN"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lde/gdata/mobilesecurity/util/BasePreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->a:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->a:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 32
    iput-object p1, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->a:Landroid/content/Context;

    .line 33
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 34
    return-void
.end method


# virtual methods
.method public disable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    .line 51
    :goto_0
    return v0

    .line 44
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v0, ".ACTION_SCAN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->a:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 47
    iget-object v3, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->a:Landroid/content/Context;

    invoke-static {v3, v1, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 50
    const-string v0, "ScanAlarmReceiver().disable(): scan Alarm stopped"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enable()J
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getPeriodicScanIntervalDays()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->enable(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public enable(II)J
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 71
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-wide v2

    .line 73
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isPeriodicScan()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->disable()Z

    .line 76
    const-string v0, "ScanAlarmReceiver().enable() Scan Alarm stopped"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-string v4, ".ACTION_SCAN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v4, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->a:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 88
    iget-object v4, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTimeOfLastPeriodicScan()J

    move-result-wide v4

    .line 90
    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 101
    :goto_1
    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanAlarmReceiver() - set trigger to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyDate;->toUserFriendlyString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->b:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTimeOfLastPeriodicScan()J

    move-result-wide v2

    int-to-long v4, p1

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    int-to-long v4, p2

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->minToMs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 110
    const-string v0, "ScanAlarmReceiver.onReceive()"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/scan/ScanService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 113
    return-void
.end method
