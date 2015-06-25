.class Lde/gdata/mobilesecurity/services/k;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/wifi/WifiManager;

.field private b:Landroid/net/ConnectivityManager;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1815
    const-class v0, Lde/gdata/mobilesecurity/services/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1810
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 1812
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/k;->h:Ljava/util/HashMap;

    .line 1817
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    .line 1819
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 1820
    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    .line 1921
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1923
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v2, "Raise a warning ..."

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1925
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1926
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v1, "Screen is on: show dialog"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1927
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1928
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BSSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1929
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Due to BSSID analysis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1931
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1932
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-class v2, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1933
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1934
    const-string v1, "EXTRA_SSID"

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1935
    const-string v1, "EXTRA_BSSID"

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1936
    const-string v1, "EXTRA_BSSID_ANALYSIS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1938
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1964
    :cond_0
    :goto_0
    return-void

    .line 1941
    :cond_1
    const v2, 0x7f0d03b3

    .line 1942
    const v5, 0x7f0d03b6

    .line 1944
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v1, "Screen is off: create a notification"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1945
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Diconnect from WiFi: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->doAutoDisconnect()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1947
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->doAutoDisconnect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1948
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->disconnectFromWifi(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1950
    const v2, 0x7f0d03b4

    .line 1951
    const v5, 0x7f0d03b5

    .line 1958
    :cond_2
    :goto_1
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 1960
    const/16 v1, 0x9

    const v3, 0x7f02013a

    const v4, 0x7f02012f

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(IIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1962
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    goto :goto_0

    .line 1953
    :cond_3
    if-eqz p1, :cond_2

    .line 1954
    const v2, 0x7f0d03b7

    .line 1955
    const v5, 0x7f0d03b8

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTrustedNetworks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1827
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1833
    :goto_0
    return v0

    .line 1829
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 1830
    const/4 v0, 0x1

    goto :goto_0

    .line 1832
    :cond_1
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 1833
    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1838
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1839
    const/4 v0, 0x0

    .line 1841
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1846
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v2, "Initializing ARP spoofing detection ..."

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1848
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/k;->b:Landroid/net/ConnectivityManager;

    .line 1849
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1851
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isSpoofDetectionActivated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1852
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuous: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isContinuousMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1853
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto disconnect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->doAutoDisconnect()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1854
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BSSID analysis: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBssidAnalysis()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1856
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isSpoofDetectionActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1857
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/k;->a:Landroid/net/wifi/WifiManager;

    .line 1859
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v3, "^\"(.*)\"$"

    const-string v4, "$1"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    .line 1860
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    .line 1861
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 1862
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/k;->e:Ljava/lang/String;

    .line 1864
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connected to WiFi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1865
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1866
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1867
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gateway IP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/k;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1868
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trusted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTrustedNetworks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1869
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queried: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getQueriedNetworks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1870
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ARP exceptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1871
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BSSID exceptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/services/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1874
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v2, "Not a trusted network"

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1876
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isContinuousMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1877
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getArpMap()Ljava/lang/String;

    move-result-object v0

    .line 1878
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1880
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v3, "Continuous Mode: read earlier table"

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1881
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ARP Map: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getArpMap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1883
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1884
    const-string v5, "\\$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1886
    array-length v5, v4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 1887
    iget-object v5, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1888
    iget-object v5, p0, Lde/gdata/mobilesecurity/services/k;->h:Ljava/util/HashMap;

    aget-object v6, v4, v8

    const/4 v7, 0x2

    aget-object v4, v4, v7

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1892
    :cond_1
    invoke-static {v8}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Z)Z

    .line 1897
    :cond_2
    :goto_1
    return-void

    .line 1895
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v1, "A trusted network: do nothing"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1967
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->readArpTable()Ljava/util/HashMap;

    move-result-object v3

    .line 1969
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1970
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1972
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "FF:FF:FF:FF:FF:FF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1975
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBssidAnalysis()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "$"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lde/gdata/mobilesecurity/services/k;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1976
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    const-string v5, "00:00:00:00:00:00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    const-string v5, "FF:FF:FF:FF:FF:FF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1980
    :cond_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lde/gdata/mobilesecurity/services/k;->a:Landroid/net/wifi/WifiManager;

    .line 1981
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    .line 1996
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "$"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lde/gdata/mobilesecurity/services/k;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1997
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1998
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1999
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2000
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IP in ARP table: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 2001
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAC in ARP table: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 2002
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ARP C Map: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/gdata/mobilesecurity/services/k;->h:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 2003
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NW: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 2005
    invoke-direct {p0, v7}, Lde/gdata/mobilesecurity/services/k;->a(Z)V

    .line 2007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " 1:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lde/gdata/mobilesecurity/services/k;->h:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " 2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1983
    :cond_3
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1985
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v5, "BSSID analysis alarm"

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1986
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1987
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAC in ARP table: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1988
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exceptions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1989
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1990
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gateway IP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/gdata/mobilesecurity/services/k;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1992
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lde/gdata/mobilesecurity/services/k;->a(Z)V

    goto/16 :goto_1

    .line 2010
    :cond_4
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v5, "Add item to check table"

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 2011
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 2012
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 2014
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2020
    :cond_5
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 2023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getArpMap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[^\\\\]*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^\\\\"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2026
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/k;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/k;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2029
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing ARP map: {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 2031
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setArpMap(Ljava/lang/String;)V

    .line 2032
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1901
    :goto_0
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/services/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    const-string v1, "A trusted network: shutting down thread"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1904
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Z)Z

    .line 1910
    :goto_1
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1912
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1907
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/k;->b()V

    goto :goto_1

    .line 1917
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/k;->f:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Landroid/content/Context;)V

    .line 1918
    return-void
.end method
