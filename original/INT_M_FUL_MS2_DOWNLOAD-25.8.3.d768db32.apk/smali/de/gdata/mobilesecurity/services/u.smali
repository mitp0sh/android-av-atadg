.class Lde/gdata/mobilesecurity/services/u;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/WatcherService;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/WatcherService;)V
    .locals 3

    .prologue
    .line 2691
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    .line 2692
    const-class v0, Lde/gdata/mobilesecurity/services/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2693
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2697
    new-instance v4, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 2699
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->c(Lde/gdata/mobilesecurity/services/WatcherService;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2700
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2701
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isWebshieldActivated()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isWebshieldOnlyWlan()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isConnectedViaWiFi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2704
    :cond_0
    const/4 v3, 0x0

    .line 2705
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2706
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2707
    const-string v2, "Samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2708
    :cond_1
    const-string v2, "HTC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2709
    :cond_2
    const-string v2, "NewChrome"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2711
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secsrv: check "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2714
    :try_start_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->p(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/secsrv/SecSrv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/secsrv/SecSrv;->RequestUrl(Ljava/lang/String;)Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    move-result-object v3

    .line 2715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secsrv: check "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ready"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2722
    :goto_2
    if-eqz v3, :cond_11

    .line 2723
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->q(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->NORESPONSE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    invoke-virtual {v3, v2}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isSet(Lde/gdata/mobilesecurity/secsrv/ServerResponse;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->NOCONNECTION:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    invoke-virtual {v3, v2}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isSet(Lde/gdata/mobilesecurity/secsrv/ServerResponse;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->ERROR:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    invoke-virtual {v3, v2}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isSet(Lde/gdata/mobilesecurity/secsrv/ServerResponse;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2728
    :cond_4
    sput-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->recentlyChecked:Ljava/lang/String;

    .line 2730
    sget-boolean v2, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->isActive:Z

    if-eqz v2, :cond_6

    .line 2731
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    const-string v2, ""

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->j(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)V

    .line 2768
    :cond_5
    :goto_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2717
    :catch_0
    move-exception v2

    .line 2718
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FATAL: got exception from SecSrv: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 2719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FATAL: Stacktrace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 2734
    :cond_6
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isMalicious()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->q(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2735
    :cond_7
    const-string v2, "System::"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2736
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "about:blank"

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->startAndroidBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 2737
    :cond_8
    const-string v2, "Samsung::"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2738
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "about:blank"

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->startSamsungBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 2739
    :cond_9
    const-string v2, "HTC::"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2740
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "about:blank"

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->startHtcBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 2741
    :cond_a
    const-string v2, "Chrome::"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2742
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "about:blank"

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->startChromeBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 2743
    :cond_b
    const-string v2, "NewChrome::"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2744
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "about:blank"

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->startChromeBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 2746
    :cond_c
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->j(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)V

    .line 2747
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 2749
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9, v1, v8, v7}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 2751
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2752
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9, v1, v8, v7}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    goto/16 :goto_3

    .line 2756
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not malicious: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2759
    :cond_e
    sget-object v1, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->NORESPONSE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isSet(Lde/gdata/mobilesecurity/secsrv/ServerResponse;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2760
    const-string v1, "Server response: no response"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2761
    :cond_f
    sget-object v1, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->NOCONNECTION:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isSet(Lde/gdata/mobilesecurity/secsrv/ServerResponse;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2762
    const-string v1, "Server response: no connection"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2763
    :cond_10
    sget-object v1, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->ERROR:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isSet(Lde/gdata/mobilesecurity/secsrv/ServerResponse;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Server response: error"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2766
    :cond_11
    const-string v1, "Server response: null"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2771
    :cond_12
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/u;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto/16 :goto_1

    .line 2774
    :cond_13
    const-wide/32 v0, 0x98967f

    :try_start_1
    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/u;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2775
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 2778
    :cond_14
    return-void
.end method
