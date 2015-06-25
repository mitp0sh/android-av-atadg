.class public Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    iput-object p1, p0, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;->a:Landroid/content/Context;

    .line 30
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 31
    return-void
.end method


# virtual methods
.method public enable(J)J
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 56
    :goto_0
    return-wide p1

    .line 46
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 48
    new-instance v1, Landroid/content/Intent;

    const-string v2, "de.gdata.mobilesecurity2.ACTION_CHECK_SUBSCRIPTION_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;->a:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 51
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscriptionStateReceiver() - set trigger to "

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
    .locals 0

    .prologue
    .line 35
    invoke-static {p1}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->checkSubscriptionState(Landroid/content/Context;)V

    .line 36
    return-void
.end method
