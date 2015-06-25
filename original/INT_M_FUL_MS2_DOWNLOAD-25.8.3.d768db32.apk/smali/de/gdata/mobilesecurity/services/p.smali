.class Lde/gdata/mobilesecurity/services/p;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:Landroid/telephony/TelephonyManager;

.field b:Landroid/content/BroadcastReceiver;

.field public c:Landroid/os/Handler;

.field public d:Landroid/os/Handler;

.field final synthetic e:Lde/gdata/mobilesecurity/services/WatcherService;

.field private f:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/WatcherService;)V
    .locals 3

    .prologue
    .line 2233
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    .line 2234
    const-class v0, Lde/gdata/mobilesecurity/services/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2213
    new-instance v0, Lde/gdata/mobilesecurity/services/q;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/services/q;-><init>(Lde/gdata/mobilesecurity/services/p;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/p;->b:Landroid/content/BroadcastReceiver;

    .line 2219
    new-instance v0, Lde/gdata/mobilesecurity/services/r;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/services/r;-><init>(Lde/gdata/mobilesecurity/services/p;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/p;->f:Landroid/telephony/PhoneStateListener;

    .line 2624
    new-instance v0, Lde/gdata/mobilesecurity/services/s;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/services/s;-><init>(Lde/gdata/mobilesecurity/services/p;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/p;->c:Landroid/os/Handler;

    .line 2657
    new-instance v0, Lde/gdata/mobilesecurity/services/t;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/services/t;-><init>(Lde/gdata/mobilesecurity/services/p;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/p;->d:Landroid/os/Handler;

    .line 2236
    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2238
    return-void
.end method

.method private a()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2290
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 2291
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 2292
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 2293
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 2294
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 2296
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2277
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2278
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2279
    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2280
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 2281
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2282
    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2285
    :cond_0
    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2678
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2679
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2249
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "/.*"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2252
    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 2253
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->f()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2254
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->f()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2255
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2258
    :try_start_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2259
    const-string v3, "/.*"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2260
    iget-object v4, p0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v3, v6}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v0, v1

    .line 2273
    :goto_2
    return v0

    .line 2263
    :catch_0
    move-exception v0

    .line 2264
    :try_start_2
    const-string v0, "App name for logging not found."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2269
    :catch_1
    move-exception v0

    .line 2270
    const-string v0, "Fetching signature failed."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    :cond_0
    move v0, v2

    .line 2273
    goto :goto_2

    .line 2252
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 2301
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v13

    .line 2302
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->b:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "TYPE_WINDOW_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2304
    new-instance v14, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-direct {v14, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 2305
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/app/ActivityManager;

    .line 2306
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.intents.Main"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2309
    const/4 v3, 0x0

    .line 2310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v5, Lde/gdata/mobilesecurity/services/GdAccessibilityService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2312
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lde/gdata/mobilesecurity/services/p;->a:Landroid/telephony/TelephonyManager;

    .line 2314
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    const-wide/16 v6, -0x1

    invoke-static {v2, v6, v7}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;J)J

    move v2, v3

    move-object v9, v4

    .line 2316
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->c(Lde/gdata/mobilesecurity/services/WatcherService;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->g()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2318
    :try_start_0
    invoke-static {v14}, Lde/gdata/mobilesecurity/services/WatcherService;->startUsageCount(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 2320
    const/4 v12, 0x0

    .line 2321
    const/4 v11, 0x0

    .line 2322
    invoke-virtual {v14}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v17

    .line 2323
    invoke-virtual {v14}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v18

    .line 2325
    if-nez v17, :cond_0

    if-eqz v18, :cond_3

    :cond_0
    invoke-virtual {v14}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardOverallUsageTimeLimited()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2326
    invoke-virtual {v14}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardOverallUsageTime()J

    move-result-wide v4

    .line 2328
    const/4 v3, 0x0

    .line 2329
    const-string v6, ""

    invoke-virtual {v14}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardOverallAllowedUsageTimeLimit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2330
    invoke-virtual {v14}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardOverallAllowedUsageTimeLimit()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2332
    :cond_1
    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    .line 2334
    new-instance v6, Landroid/content/Intent;

    const-string v7, "de.gdata.mobilesecurity2.ACTION_UPDATE_USAGE_TIME"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2335
    const-string v7, "USAGE_TIME"

    invoke-virtual {v6, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2336
    const-string v7, "USAGE_LIMIT"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2337
    move-object/from16 v0, p0

    iget-object v7, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v7, v6}, Lde/gdata/mobilesecurity/services/WatcherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2339
    move-object/from16 v0, p0

    iget-object v6, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v6, v6, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasKidsguardUsageTimeExceededShown()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2340
    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 2341
    if-eqz v17, :cond_2

    .line 2342
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->e(Lde/gdata/mobilesecurity/services/WatcherService;)V

    .line 2343
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->stopTaskWatchDog()V

    goto :goto_0

    .line 2617
    :catch_0
    move-exception v3

    move-object v3, v9

    :goto_1
    move-object v9, v3

    .line 2618
    goto/16 :goto_0

    .line 2345
    :cond_2
    if-eqz v18, :cond_3

    .line 2346
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->f(Lde/gdata/mobilesecurity/services/WatcherService;)V

    .line 2352
    :cond_3
    invoke-virtual {v14}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v14}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getWaitForAccessibilityService()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 2353
    :cond_4
    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v10, v3, 0x1e
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v10, :cond_5

    .line 2354
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-le v2, v3, :cond_5

    .line 2355
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->isAccessibilityEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2357
    invoke-virtual {v14}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "MMS_SERVER"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2358
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 2359
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWaitForAccessibilityService(Z)V

    .line 2361
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x31

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 2364
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2365
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    const-class v4, Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2366
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2367
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v3, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->startActivity(Landroid/content/Intent;)V

    .line 2393
    :cond_5
    :goto_2
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->h()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->i()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 2394
    :cond_6
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2395
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/de.gdata.mobilesecurity."

    const-string v4, "/."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2398
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2400
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_3d

    .line 2401
    invoke-static {}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->getTopTask()Ljava/lang/String;

    move-result-object v2

    .line 2402
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->getTopTask()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->getTopActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2405
    :cond_7
    const-string v3, "/de.gdata.mobilesecurity."

    const-string v4, "/."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2407
    invoke-static {}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->getTopTask()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move-object v7, v3

    move-object v2, v3

    .line 2410
    :goto_3
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->j()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2411
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2413
    :cond_8
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->h()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->i()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 2414
    const-string v3, "/.*"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lde/gdata/mobilesecurity/services/p;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v11

    move v3, v11

    .line 2417
    :goto_4
    const-string v4, "com.sec.android.app.taskmanager"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2418
    const-string v2, "com.android.settings"

    .line 2419
    const/4 v3, 0x0

    .line 2422
    :cond_9
    const-string v4, "com.sec.android.app.controlpanel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 2423
    const-string v2, "com.android.settings"

    .line 2424
    const/4 v3, 0x0

    move-object v5, v2

    .line 2427
    :goto_5
    if-eqz v18, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    if-eqz v17, :cond_b

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->k()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lde/gdata/mobilesecurity/services/p;->a(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v3, :cond_20

    :cond_c
    const/4 v4, 0x1

    .line 2431
    :goto_6
    if-nez v17, :cond_d

    if-eqz v18, :cond_e

    .line 2432
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2433
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTimeSliceClearDate()J

    move-result-wide v22

    cmp-long v2, v20, v22

    if-lez v2, :cond_e

    .line 2434
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->l()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 2435
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct/range {p0 .. p0}, Lde/gdata/mobilesecurity/services/p;->a()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setTimeSliceClearDate(J)V

    .line 2437
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2438
    const-string v11, "REFRESH_GRID"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2439
    move-object/from16 v0, p0

    iget-object v11, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v11}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2443
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isPhoneLocked()Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "ResolverActivity"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2444
    :cond_f
    const-string v2, "GDataLockscreenActivity"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "LockingDeviceActivity"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "ResolverActivity"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 2447
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v4

    move v4, v3

    move v3, v10

    .line 2540
    :goto_7
    if-nez v2, :cond_35

    :try_start_2
    invoke-virtual {v14}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v2

    if-eqz v2, :cond_35

    if-nez v17, :cond_35

    .line 2541
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->p()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->q()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    .line 2542
    :cond_10
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2543
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "/de.gdata.mobilesecurity."

    const-string v7, "/."

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2546
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-le v6, v7, :cond_12

    .line 2547
    invoke-static {}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->getTopTask()Ljava/lang/String;

    move-result-object v2

    .line 2548
    move-object/from16 v0, p0

    iget-object v6, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->getTopTask()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->getTopActivity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2551
    :cond_11
    const-string v6, "/de.gdata.mobilesecurity."

    const-string v7, "/."

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2554
    :cond_12
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->j()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 2555
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x0

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2558
    :cond_13
    const-string v6, "com.sec.android.app.taskmanager"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v2, "com.android.settings"

    .line 2560
    :cond_14
    const-string v6, "com.sec.android.app.controlpanel"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v2, "com.android.settings"

    .line 2562
    :cond_15
    const-string v6, "com.lge.settings.easy"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const-string v2, "com.android.settings"

    move-object v6, v2

    .line 2564
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lde/gdata/mobilesecurity/services/p;->a(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_16

    if-eqz v4, :cond_32

    :cond_16
    const/4 v2, 0x1

    .line 2566
    :goto_9
    if-nez v2, :cond_35

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->r()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 2567
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->s()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2568
    if-nez v2, :cond_33

    const-wide/16 v4, -0x1

    :goto_a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v4, v10

    const-wide/32 v10, 0xea60

    cmp-long v4, v4, v10

    if-lez v4, :cond_34

    .line 2571
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v10, -0x1

    cmp-long v2, v4, v10

    if-eqz v2, :cond_17

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->s()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2573
    :cond_17
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->p()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->q()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->p()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->q()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2576
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2, v6}, Lde/gdata/mobilesecurity/services/WatcherService;->d(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)V

    .line 2578
    const-string v2, "Private"

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 2579
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v9

    .line 2581
    :try_start_3
    const-string v2, "/.*"

    const-string v4, ""

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2583
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v2, v6, v7}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7

    move-object v2, v9

    .line 2597
    :goto_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v4, v4, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v4

    if-eqz v4, :cond_1a

    sget-object v4, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->mActivity:Landroid/app/Activity;

    if-nez v4, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v4, v4, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2600
    :cond_1b
    sget-object v4, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    sget-object v5, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->doesLockRightNow(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 2602
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v6}, Lde/gdata/mobilesecurity/services/WatcherService;->j(Lde/gdata/mobilesecurity/services/WatcherService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_1d

    .line 2603
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lde/gdata/mobilesecurity/services/WatcherService;->c(Lde/gdata/mobilesecurity/services/WatcherService;J)J

    .line 2604
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v4}, Lde/gdata/mobilesecurity/services/WatcherService;->k(Lde/gdata/mobilesecurity/services/WatcherService;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2605
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->c:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2615
    :cond_1d
    :goto_c
    const-wide/16 v4, 0x271

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/services/p;->sleep(J)V

    .line 2616
    invoke-static {v14}, Lde/gdata/mobilesecurity/services/WatcherService;->stopUsageCount(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v9, v2

    move v2, v3

    .line 2618
    goto/16 :goto_0

    .line 2369
    :cond_1e
    :try_start_5
    invoke-virtual {v14}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2371
    invoke-virtual {v14}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2374
    new-instance v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 2376
    const v4, 0x7f0d03af

    .line 2377
    const v7, 0x7f0d03b0

    .line 2379
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 2381
    const/16 v3, 0xe

    const v5, 0x7f02013a

    const v6, 0x7f02012f

    invoke-virtual/range {v2 .. v7}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(IIIII)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2385
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 2617
    :catch_1
    move-exception v2

    move v2, v10

    move-object v3, v9

    goto/16 :goto_1

    .line 2388
    :cond_1f
    new-instance v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->removeCustomNotification(I)V

    goto/16 :goto_2

    .line 2427
    :cond_20
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 2450
    :cond_21
    if-nez v4, :cond_31

    if-nez v17, :cond_22

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->m()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 2451
    :cond_22
    if-nez v17, :cond_23

    if-eqz v18, :cond_26

    .line 2452
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2453
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v11, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v11, v11, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v11}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTimeSliceSaveDate()J

    move-result-wide v22

    cmp-long v11, v20, v22

    if-lez v11, :cond_24

    .line 2454
    move-object/from16 v0, p0

    iget-object v11, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v11}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lde/gdata/mobilesecurity/services/WatcherService;->b(Landroid/content/Context;)V

    .line 2455
    move-object/from16 v0, p0

    iget-object v11, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v11, v11, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/32 v22, 0x1d4c0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setTimeSliceSaveDate(J)V

    .line 2458
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->g(Lde/gdata/mobilesecurity/services/WatcherService;)J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v2, v20, v22

    if-eqz v2, :cond_25

    .line 2459
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v11, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v11}, Lde/gdata/mobilesecurity/services/WatcherService;->g(Lde/gdata/mobilesecurity/services/WatcherService;)J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->b(Lde/gdata/mobilesecurity/services/WatcherService;J)J

    .line 2461
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->l()Ljava/util/Hashtable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v11}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2462
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->l()Ljava/util/Hashtable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->i(Lde/gdata/mobilesecurity/services/WatcherService;)J

    move-result-wide v20

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->l()Ljava/util/Hashtable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2467
    :goto_d
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->n()Ljava/util/Hashtable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v11}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2468
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->l()Ljava/util/Hashtable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v11}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->n()Ljava/util/Hashtable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v11}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/16 v2, 0xf

    :goto_e
    int-to-long v0, v2

    move-wide/from16 v24, v0

    div-long v22, v22, v24
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    cmp-long v2, v20, v22

    if-lez v2, :cond_25

    .line 2472
    const/16 v2, 0x1000

    :try_start_6
    invoke-virtual {v9, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2474
    iget-object v11, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 2475
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v5, v11, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2487
    :cond_25
    :goto_f
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;J)J

    .line 2488
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2, v12}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 2491
    :cond_26
    if-eqz v17, :cond_27

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_27
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->h()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->i()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_28
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->h()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->i()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v2

    if-eqz v2, :cond_31

    .line 2494
    :cond_29
    const/4 v4, 0x1

    .line 2496
    if-nez v17, :cond_2a

    if-eqz v18, :cond_30

    .line 2498
    :cond_2a
    const/16 v2, 0x1000

    :try_start_8
    invoke-virtual {v9, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2500
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2501
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2503
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->a:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v12, 0x2

    if-ne v2, v12, :cond_2e

    :cond_2b
    const/4 v2, 0x1

    .line 2506
    :goto_10
    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lde/gdata/mobilesecurity/services/p;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v2, v2, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardBlockIncomingCalls()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2508
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->a:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lde/gdata/mobilesecurity/services/p;->f:Landroid/telephony/PhoneStateListener;

    const/16 v11, 0x20

    invoke-virtual {v2, v7, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    .line 2521
    :goto_11
    :try_start_9
    const-string v2, "Private"

    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    move-result v2

    if-nez v2, :cond_31

    .line 2523
    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {v9, v6, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2524
    move-object/from16 v0, p0

    iget-object v6, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v6, v7, v2, v11, v12}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    move v2, v4

    .line 2535
    :goto_12
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->i(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Ljava/lang/String;

    move v4, v3

    move v3, v10

    goto/16 :goto_7

    .line 2465
    :cond_2c
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->l()Ljava/util/Hashtable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v11}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lde/gdata/mobilesecurity/services/WatcherService;->i(Lde/gdata/mobilesecurity/services/WatcherService;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v11, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 2468
    :cond_2d
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 2479
    :catch_2
    move-exception v2

    .line 2480
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package \'"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v19, "\' couldn\'t be found :"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 2481
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_f

    .line 2503
    :cond_2e
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 2511
    :cond_2f
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2, v5, v7, v11}, Lde/gdata/mobilesecurity/services/WatcherService;->b(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_11

    .line 2513
    :catch_3
    move-exception v2

    .line 2514
    :try_start_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package \'"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "\' couldn\'t be found :"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 2515
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 2518
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-static {v2, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 2528
    :catch_4
    move-exception v2

    .line 2529
    const-string v2, "App name for logging not found."

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1

    :cond_31
    move v2, v4

    goto/16 :goto_12

    .line 2564
    :cond_32
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 2568
    :cond_33
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_a

    .line 2586
    :catch_5
    move-exception v2

    .line 2587
    const-string v2, "App name for logging not found."

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move-object v2, v9

    .line 2588
    goto/16 :goto_b

    .line 2591
    :cond_34
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v10, -0x1

    cmp-long v2, v4, v10

    if-eqz v2, :cond_35

    .line 2592
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->s()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_7

    :cond_35
    move-object v2, v9

    goto/16 :goto_b

    .line 2607
    :cond_36
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->d:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_c

    .line 2617
    :catch_6
    move-exception v4

    move/from16 v26, v3

    move-object v3, v2

    move/from16 v2, v26

    goto/16 :goto_1

    .line 2611
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v4, v4, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->e:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v4, v4, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 2612
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/services/p;->d:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_c

    .line 2621
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/services/p;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v13, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2622
    return-void

    .line 2617
    :catch_7
    move-exception v2

    move v2, v3

    move-object v3, v9

    goto/16 :goto_1

    :cond_39
    move-object v6, v2

    goto/16 :goto_8

    :cond_3a
    move v2, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_7

    :cond_3b
    move-object v5, v2

    goto/16 :goto_5

    :cond_3c
    move v3, v11

    goto/16 :goto_4

    :cond_3d
    move-object v6, v2

    move-object v7, v3

    move-object v2, v3

    goto/16 :goto_3

    :cond_3e
    move v4, v11

    move v2, v12

    move v3, v10

    goto/16 :goto_7

    :cond_3f
    move v4, v11

    move v3, v2

    move v2, v12

    goto/16 :goto_7
.end method
