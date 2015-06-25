.class public Lde/gdata/mobilesecurity/util/Trial;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TRIAL_STATE_INVALID:I = 0x5

.field public static final TRIAL_STATE_NONE:I = 0x0

.field public static final TRIAL_STATE_REGISTERED:I = 0x2

.field public static final TRIAL_STATE_REGISTERED_EXPIRED:I = 0x4

.field public static final TRIAL_STATE_UNLOCKED:I = 0x3

.field public static final TRIAL_STATE_UNREGISTERED:I = 0x1

.field static a:Z

.field private static b:Lde/gdata/mobilesecurity/util/Trial;

.field private static c:Ljava/lang/String;

.field private static final d:Ljava/lang/Object;

.field private static e:Lde/gdata/mobilesecurity/util/RemotePreferences;


# instance fields
.field private f:Landroid/content/Context;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/util/Trial;->c:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/util/Trial;->d:Ljava/lang/Object;

    .line 367
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/util/Trial;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    .line 52
    iput v0, p0, Lde/gdata/mobilesecurity/util/Trial;->h:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/Trial;->i:Ljava/lang/String;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/util/Trial;->j:J

    .line 186
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    .line 187
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->oldTrialExisted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->remoteTrialIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTrialData(Lde/gdata/mobilesecurity/util/Trial;)V

    .line 189
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-virtual {v0, p1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    .line 191
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-virtual {v0, p1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    .line 192
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    .line 193
    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 233
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 239
    if-ltz v2, :cond_0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_0
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 242
    array-length v2, v0

    if-lez v2, :cond_1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 244
    :goto_0
    return v0

    .line 234
    :catch_0
    move-exception v0

    move v0, v1

    .line 235
    goto :goto_0

    :cond_1
    move v0, v1

    .line 244
    goto :goto_0
.end method

.method public static getDefaultBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 370
    sget-boolean v0, Lde/gdata/mobilesecurity/util/Trial;->a:Z

    if-nez v0, :cond_0

    .line 372
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/util/Trial;->a:Z

    .line 378
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0

    .line 373
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->b:Lde/gdata/mobilesecurity/util/Trial;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lde/gdata/mobilesecurity/util/Trial;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/Trial;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/util/Trial;->b:Lde/gdata/mobilesecurity/util/Trial;

    .line 204
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    .line 205
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->b:Lde/gdata/mobilesecurity/util/Trial;

    return-object v0
.end method

.method public static getMMSId(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 284
    sget-object v10, Lde/gdata/mobilesecurity/util/Trial;->d:Ljava/lang/Object;

    monitor-enter v10

    .line 285
    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->c:Ljava/lang/String;

    monitor-exit v10

    .line 362
    :goto_0
    return-object v0

    .line 287
    :cond_0
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEsterInstall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    const-string v0, "Using Ester Mode Guid"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 289
    const-string v0, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

    sput-object v0, Lde/gdata/mobilesecurity/util/Trial;->c:Ljava/lang/String;

    .line 290
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->c:Ljava/lang/String;

    monitor-exit v10

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 292
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 293
    const/4 v2, 0x0

    .line 294
    const/4 v1, 0x0

    .line 295
    const-string v3, ""

    .line 296
    const/4 v0, 0x0

    .line 297
    const-string v4, "android.hardware.wifi"

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 298
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 300
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 301
    if-nez v1, :cond_2

    .line 302
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    move-object v7, v0

    move v8, v1

    move v9, v2

    .line 308
    :goto_1
    const/4 v4, 0x0

    .line 309
    const/4 v2, 0x0

    .line 310
    const-string v1, ""

    .line 311
    const/4 v0, 0x0

    .line 312
    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-gt v0, v5, :cond_3

    .line 314
    invoke-static {}, Lde/gdata/mobilesecurity/util/Trial;->getDefaultBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 318
    :goto_2
    if-eqz v0, :cond_b

    .line 319
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    .line 321
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v4

    move v5, v2

    move v6, v4

    move-object v4, v0

    .line 328
    :goto_3
    const/16 v2, 0x4b0

    .line 330
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 331
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    .line 333
    if-eqz v9, :cond_a

    move v0, v2

    .line 334
    :goto_4
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/4 v9, 0x3

    if-eq v2, v9, :cond_4

    if-lez v0, :cond_4

    .line 336
    const-wide/16 v12, 0xfa

    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 304
    :cond_2
    const/4 v2, 0x1

    move-object v7, v0

    move v8, v1

    move v9, v2

    goto :goto_1

    .line 316
    :cond_3
    :try_start_3
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    goto :goto_2

    .line 341
    :cond_4
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v9, 0x3

    if-ne v2, v9, :cond_9

    .line 342
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 344
    :goto_5
    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 347
    :goto_6
    if-eqz v6, :cond_8

    .line 348
    :goto_7
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    const/16 v6, 0xc

    if-eq v3, v6, :cond_5

    if-lez v0, :cond_5

    .line 350
    const-wide/16 v6, 0xfa

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 351
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 355
    :cond_5
    :try_start_5
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_7

    .line 356
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 358
    :goto_8
    if-nez v5, :cond_6

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 361
    :cond_6
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/util/Trial;->c:Ljava/lang/String;

    .line 362
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->c:Ljava/lang/String;

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 338
    :catch_0
    move-exception v2

    goto :goto_4

    .line 352
    :catch_1
    move-exception v3

    goto :goto_7

    :cond_7
    move-object v0, v1

    goto :goto_8

    :cond_8
    move-object v0, v1

    goto :goto_9

    :cond_9
    move-object v2, v3

    goto :goto_5

    :cond_a
    move v0, v2

    move-object v2, v3

    goto :goto_6

    :cond_b
    move v5, v2

    move v6, v4

    move-object v4, v0

    goto/16 :goto_3

    :cond_c
    move v5, v2

    move v6, v4

    move-object v4, v0

    goto/16 :goto_3

    :cond_d
    move-object v7, v0

    move v8, v1

    move v9, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/util/Trial;->getDeviceId(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->md5Old(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFreeTrialRegistrationDate()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lde/gdata/mobilesecurity/util/Trial;->j:J

    return-wide v0
.end method

.method public getGeneration()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lde/gdata/mobilesecurity/util/Trial;->h:I

    return v0
.end method

.method public getRegNoEnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/Trial;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getTrialState()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    return v0
.end method

.method public isInvalidTrial()Z
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProtectFeaturesUntilRegistration()Z
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegisteredTrial()Z
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrial()Z
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isUnregisteredTrial()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isRegisteredTrial()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isInvalidTrial()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrialOutOfTrialPeriod()Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isUnregisteredTrial()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isInvalidTrial()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    iget v2, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    if-eq v2, v8, :cond_0

    .line 150
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isRegisteredTrial()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    sget-object v2, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v3, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getLoginLimit(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 153
    sget-object v2, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v3, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getLoginLimit(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    .line 171
    :goto_1
    if-eqz v2, :cond_3

    .line 174
    iput v8, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    .line 175
    sget-object v1, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v1, v2, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-wide v2, p0, Lde/gdata/mobilesecurity/util/Trial;->j:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 160
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lde/gdata/mobilesecurity/util/Trial;->j:J

    const-wide/16 v6, 0x5a

    invoke-static {v6, v7}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 163
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 166
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    .line 167
    goto :goto_1

    :cond_3
    move v0, v1

    .line 179
    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public isUnregisteredTrial()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 95
    iget v1, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginLimitWasExtended()V
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isTrial()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    const/4 v0, 0x3

    iput v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    .line 430
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isProtectFeaturesUntilRegistration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    .line 434
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    goto :goto_0
.end method

.method public newValidLoginEntered()V
    .locals 0

    .prologue
    .line 443
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->loginLimitWasExtended()V

    .line 444
    return-void
.end method

.method public refreshStates(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    .line 209
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-virtual {v0, p1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->getTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    .line 210
    return-void
.end method

.method public registrationPerformed()V
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isTrial()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isUnregisteredTrial()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    const/4 v0, 0x2

    iput v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/util/Trial;->j:J

    .line 393
    :cond_0
    :goto_0
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    .line 400
    :cond_1
    :goto_1
    return-void

    .line 391
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isRegisteredTrial()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    goto :goto_0

    .line 395
    :cond_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isProtectFeaturesUntilRegistration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    .line 397
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    goto :goto_1
.end method

.method public setFirstStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 217
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    .line 219
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/util/Trial;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/util/Trial;->h:I

    .line 220
    iput-object p2, p0, Lde/gdata/mobilesecurity/util/Trial;->i:Ljava/lang/String;

    .line 223
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    .line 224
    return-void
.end method

.method public setFreeTrialRegistrationDate(J)V
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, Lde/gdata/mobilesecurity/util/Trial;->j:J

    .line 88
    return-void
.end method

.method public setGeneration(IZ)V
    .locals 2

    .prologue
    .line 78
    iput p1, p0, Lde/gdata/mobilesecurity/util/Trial;->h:I

    .line 79
    if-eqz p2, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setProtectFeaturesUntilRegistration()V
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x6

    iput v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    .line 137
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    .line 138
    return-void
.end method

.method public setRegNoEnc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/Trial;->i:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setTrialState(I)V
    .locals 2

    .prologue
    .line 73
    iput p1, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    .line 74
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    .line 75
    :cond_0
    return-void
.end method

.method public signatureUpdateSuccessful()V
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isTrial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 408
    const/4 v0, 0x2

    iput v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    .line 409
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    .line 412
    :cond_0
    return-void
.end method

.method public wasAlreadyRegistered()V
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/Trial;->isUnregisteredTrial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x5

    iput v0, p0, Lde/gdata/mobilesecurity/util/Trial;->g:I

    .line 420
    sget-object v0, Lde/gdata/mobilesecurity/util/Trial;->e:Lde/gdata/mobilesecurity/util/RemotePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Trial;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;->setTrialData(Landroid/content/Context;Lde/gdata/mobilesecurity/util/Trial;)V

    .line 422
    :cond_0
    return-void
.end method
