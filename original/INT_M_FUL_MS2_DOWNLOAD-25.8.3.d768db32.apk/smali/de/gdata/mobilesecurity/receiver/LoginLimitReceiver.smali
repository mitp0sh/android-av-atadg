.class public Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION_UPDATE_LOGIN:Ljava/lang/String; = "de.gdata.mobilesecurity2.ACTION_UPDATE_LOGIN"

.field public static final EXTRA_UPDATE_LOGIN:Ljava/lang/String; = "EXTRA_UPDATE_LOGIN"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->a:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->a:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 37
    iput-object p1, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->a:Landroid/content/Context;

    .line 38
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 39
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "de.gdata.mobilesecurity2.ACTION_UPDATE_LOGIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 104
    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->a:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 106
    const-string v0, "LoginLimitReceiver().disable() Alarm stopped"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enable()J
    .locals 2

    .prologue
    .line 47
    const/16 v0, 0x2d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->enable(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public enable(II)J
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTimeOfLastLoginLimitUpdate()J

    move-result-wide v0

    .line 60
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2, v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setTimeOfLastLoginLimitUpdate(J)V

    .line 66
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTimeOfLastLoginLimitUpdate()J

    move-result-wide v0

    int-to-long v2, p1

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    int-to-long v2, p2

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->minToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->minToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 73
    :cond_1
    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->enable(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public enable(J)J
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 93
    :goto_0
    return-wide p1

    .line 84
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string v2, "de.gdata.mobilesecurity2.ACTION_UPDATE_LOGIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->a:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 89
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginLimitReceiver() - set trigger to "

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
    .line 111
    const-string v0, "LoginLimitReceiver.onReceive()"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/updateserverconnection/LoginLimitService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    return-void
.end method
