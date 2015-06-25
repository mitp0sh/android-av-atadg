.class Lde/gdata/mobilesecurity/services/f;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/SimChangeService;

.field private b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/services/SimChangeService;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/f;->a:Lde/gdata/mobilesecurity/services/SimChangeService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 37
    iput-object p2, p0, Lde/gdata/mobilesecurity/services/f;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 38
    iput-object p3, p0, Lde/gdata/mobilesecurity/services/f;->c:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 49
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/f;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getStoredIMSI()Ljava/lang/String;

    move-result-object v1

    .line 51
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/f;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setServiceState(I)V

    .line 53
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/f;->c:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 54
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/f;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->locateOnSimChange()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/f;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->lockOnSimChange()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 125
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 64
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 65
    if-ne v0, v4, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/f;->c:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lde/gdata/mobilesecurity/services/SimChangeService;->triggerSimChangeAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/f;->a:Lde/gdata/mobilesecurity/services/SimChangeService;

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 76
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/f;->a:Lde/gdata/mobilesecurity/services/SimChangeService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/services/SimChangeService;->a(Lde/gdata/mobilesecurity/services/SimChangeService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    const-string v0, "current imsi empty & airplane mode"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state: stored imsi != current imsi: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/SimChangeService;->addSimChangedNotification(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/f;->c:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lde/gdata/mobilesecurity/services/SimChangeService;->triggerSimChangeAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_1
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/f;->c:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lde/gdata/mobilesecurity/services/SimChangeService;->triggerSimChangeAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/f;->c:Landroid/content/Context;

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/receiver/ImsiDeferredFetchReceiver;->enable(Landroid/content/Context;I)V

    goto :goto_0

    .line 105
    :cond_6
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "store: stored imsi empty, current IMSI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/f;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getWaitForReboot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/f;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->storeIMSI(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/f;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setNotifyOnSimChange(Z)V

    goto/16 :goto_0

    .line 123
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stored imsi == current imsi: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
