.class public final Lcom/bd/android/shared/BDUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEBUG:Z

.field private static a:Z

.field private static b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v0

    sput-boolean v0, Lcom/bd/android/shared/BDUtils;->DEBUG:Z

    .line 56
    sput-boolean v2, Lcom/bd/android/shared/BDUtils;->a:Z

    .line 58
    sput-object v3, Lcom/bd/android/shared/BDUtils;->b:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "nimbus.bitdefender.net"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "nimbus.bitdefender.net"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hq.nimbus.bitdefender.net"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "b01.hq.nimbus.bitdefender.net"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bd/android/shared/BDUtils;->c:[Ljava/lang/String;

    .line 72
    sput-object v3, Lcom/bd/android/shared/BDUtils;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 720
    const/4 v0, -0x1

    .line 721
    if-nez p0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return v0

    .line 728
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 730
    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 737
    if-eqz v1, :cond_0

    .line 741
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 743
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 395
    const-string v0, "BDUtils"

    const-string v1, "begin getNextCheckProdLicense(..) before call Calendar.getInstance();"

    invoke-static {v0, v1}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 397
    const-string v1, "BDUtils"

    const-string v2, "begin getNextCheckProdLicense(..) after call Calendar.getInstance();"

    invoke-static {v1, v2}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 400
    const/16 v1, 0xb

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 401
    const/16 v1, 0xc

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 402
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 404
    const-string v1, "BDUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting next checkLicense for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 486
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 489
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 492
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 495
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 504
    :goto_0
    return-object v0

    .line 500
    :catch_0
    move-exception v0

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BDAndroidShared - BDUtils - getLocalIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    .line 504
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bd/android/shared/AlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const/16 v1, 0x522

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 388
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 389
    const/4 v1, 0x1

    invoke-static {p1}, Lcom/bd/android/shared/BDUtils;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 391
    return-void
.end method

.method static declared-synchronized b(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 411
    const-class v5, Lcom/bd/android/shared/BDUtils;

    monitor-enter v5

    .line 415
    :try_start_0
    invoke-static {}, Lcom/bd/android/shared/u;->g()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    move v4, v0

    :goto_0
    if-eqz v4, :cond_0

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bd/android/shared/u;->a(J)V

    .line 420
    :cond_0
    invoke-static {}, Lcom/bd/android/shared/u;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/bd/android/shared/u;->g()J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v2, v2, v6

    if-gtz v2, :cond_1

    .line 422
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 424
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    move v2, v0

    move v3, v0

    .line 438
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 442
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v6, "bdhttp.txt"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v3, Ljava/io/FileWriter;

    if-nez v4, :cond_5

    :goto_2
    invoke-direct {v3, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 446
    invoke-virtual {v3, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 447
    const-string v0, "\n\n"

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 448
    const-string v0, "*******************************************************"

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 449
    const-string v0, "\n\n"

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :cond_1
    :goto_3
    monitor-exit v5

    return-void

    :cond_2
    move v4, v1

    .line 415
    goto :goto_0

    .line 428
    :cond_3
    :try_start_2
    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    move v3, v0

    .line 431
    goto :goto_1

    :cond_4
    move v2, v1

    move v3, v1

    .line 435
    goto :goto_1

    :cond_5
    move v0, v1

    .line 444
    goto :goto_2

    .line 452
    :catch_0
    move-exception v0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BDAndroidShared - BDUtils - LogToFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static checkEmail(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 371
    const-string v0, "^([A-Za-z0-9_\\-\\.+])+@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})$"

    .line 373
    const-string v0, "^([A-Za-z0-9_\\-\\.+])+@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 374
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getAppVersionStatus(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 759
    const-class v2, Lcom/bd/android/shared/BDUtils;

    monitor-enter v2

    if-nez p0, :cond_1

    .line 761
    const/4 v0, -0x2

    .line 791
    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    .line 764
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bd/android/shared/u;->a()Lcom/bd/android/shared/u;

    move-result-object v1

    .line 766
    if-nez v1, :cond_2

    .line 768
    invoke-static {p0}, Lcom/bd/android/shared/u;->a(Landroid/content/Context;)Lcom/bd/android/shared/u;

    move-result-object v1

    .line 771
    :cond_2
    invoke-virtual {v1}, Lcom/bd/android/shared/u;->p()I

    move-result v1

    .line 773
    if-ne v0, v1, :cond_3

    .line 775
    const/4 v0, 0x1

    goto :goto_0

    .line 778
    :cond_3
    invoke-static {p0}, Lcom/bd/android/shared/BDUtils;->a(Landroid/content/Context;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 780
    if-ne v3, v1, :cond_4

    .line 782
    const/4 v0, 0x0

    goto :goto_0

    .line 785
    :cond_4
    if-le v3, v1, :cond_0

    .line 787
    const/4 v0, 0x2

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized getConnectedWifiInfo(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 826
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    if-nez v0, :cond_0

    .line 830
    const/4 v0, 0x0

    .line 833
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDeviceIDMD5(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    invoke-static {p0}, Lcom/bd/android/shared/u;->a(Landroid/content/Context;)Lcom/bd/android/shared/u;

    move-result-object v2

    .line 269
    if-nez p0, :cond_1

    .line 271
    const/4 v0, 0x0

    .line 305
    :cond_0
    :goto_0
    return-object v0

    .line 274
    :cond_1
    invoke-virtual {v2}, Lcom/bd/android/shared/u;->d()Ljava/lang/String;

    move-result-object v0

    .line 275
    if-nez v0, :cond_0

    .line 280
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 282
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_2

    const-string v0, "004999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 285
    :cond_2
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 286
    if-eqz v0, :cond_6

    .line 288
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_1
    if-nez v0, :cond_3

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 298
    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_5
    :goto_2
    sget-object v1, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->MD5:Lcom/bd/android/shared/BDHashing$ALGORITHMS;

    invoke-static {v1, v0, p1}, Lcom/bd/android/shared/BDHashing;->make_hash(Lcom/bd/android/shared/BDHashing$ALGORITHMS;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {v2, v0}, Lcom/bd/android/shared/u;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method public static declared-synchronized getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/bd/android/shared/u;->a()Lcom/bd/android/shared/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bd/android/shared/u;->l()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 632
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    .line 633
    :try_start_0
    invoke-static {p0}, Lcom/bd/android/shared/BDUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 634
    if-eqz v0, :cond_0

    .line 636
    const-string v0, "tablet"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :goto_0
    monitor-exit v1

    return-object v0

    .line 640
    :cond_0
    :try_start_1
    const-string v0, "phone"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getEulaAccepted()Z
    .locals 1

    .prologue
    .line 173
    sget-boolean v0, Lcom/bd/android/shared/BDUtils;->a:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/bd/android/shared/u;->f()Z

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getForcedSync()Z
    .locals 2

    .prologue
    .line 199
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/bd/android/shared/u;->a()Lcom/bd/android/shared/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bd/android/shared/u;->n()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 647
    const-class v2, Lcom/bd/android/shared/BDUtils;

    monitor-enter v2

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    if-nez v0, :cond_1

    move-object v0, v1

    .line 659
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 654
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 655
    if-eqz v0, :cond_2

    const-string v3, "004999"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move-object v0, v1

    .line 659
    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized getLicenseURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/BDUtils;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 161
    const-string v0, "https://my.bitdefender.com/lv2/use_keys"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/bd/android/shared/BDUtils;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLocaleDevice()Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    const-class v3, Lcom/bd/android/shared/BDUtils;

    monitor-enter v3

    const/4 v0, 0x0

    .line 223
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 243
    :goto_0
    monitor-exit v3

    return-object v0

    .line 231
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 233
    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    .line 238
    goto :goto_0

    .line 241
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized getNimbusURLs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/BDUtils;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/bd/android/shared/BDUtils;->c:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/bd/android/shared/BDUtils;->b:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSDKversion()I
    .locals 1

    .prologue
    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getScreenOrientation(Landroid/content/Context;)I
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 665
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 667
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 668
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 669
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 671
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 672
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 675
    if-eqz v5, :cond_0

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    :cond_0
    if-gt v6, v0, :cond_3

    :cond_1
    if-eq v5, v1, :cond_2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_4

    :cond_2
    if-le v0, v6, :cond_4

    .line 679
    :cond_3
    packed-switch v5, :pswitch_data_0

    move v0, v1

    .line 715
    :goto_0
    return v0

    :pswitch_0
    move v0, v2

    .line 686
    goto :goto_0

    :pswitch_1
    move v0, v3

    .line 689
    goto :goto_0

    :pswitch_2
    move v0, v4

    .line 692
    goto :goto_0

    .line 698
    :cond_4
    packed-switch v5, :pswitch_data_1

    move v0, v2

    .line 702
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 705
    goto :goto_0

    :pswitch_4
    move v0, v4

    .line 708
    goto :goto_0

    :pswitch_5
    move v0, v3

    .line 710
    goto :goto_0

    .line 679
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 698
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static declared-synchronized getTimestamp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    .line 251
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 252
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy, HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 254
    monitor-exit v1

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTimestampMillis()J
    .locals 2

    .prologue
    .line 379
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static goHome(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/high16 v5, 0x10000

    .line 565
    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 569
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 571
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 575
    const/4 v0, 0x0

    .line 576
    if-eqz v1, :cond_4

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_4

    .line 578
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 587
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 589
    const/4 v2, 0x0

    .line 590
    if-eqz v1, :cond_3

    .line 592
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 594
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_0

    .line 597
    const/4 v0, 0x1

    .line 603
    :goto_1
    if-eqz v0, :cond_2

    .line 606
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :cond_1
    :goto_2
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 612
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 614
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 618
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 621
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public static declared-synchronized isDebugBuild()Z
    .locals 2

    .prologue
    .line 479
    const-class v0, Lcom/bd/android/shared/BDUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/bd/android/shared/u;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isDebugBuild(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 463
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    .line 466
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 467
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 473
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 469
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized isHTTPError(I)Z
    .locals 2

    .prologue
    .line 529
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    sparse-switch p0, :sswitch_data_0

    .line 549
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    .line 547
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 529
    nop

    :sswitch_data_0
    .sparse-switch
        -0xcb -> :sswitch_0
        -0xca -> :sswitch_0
        -0xc9 -> :sswitch_0
        -0x70 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6c -> :sswitch_0
        -0x6b -> :sswitch_0
        0x190 -> :sswitch_0
        0x191 -> :sswitch_0
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1f5 -> :sswitch_0
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized isInternetOn(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 345
    const-class v2, Lcom/bd/android/shared/BDUtils;

    monitor-enter v2

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 346
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    move v0, v1

    .line 348
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 350
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 360
    :goto_1
    monitor-exit v2

    return v0

    .line 348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 356
    goto :goto_1

    .line 358
    :catch_0
    move-exception v0

    move v0, v1

    .line 360
    goto :goto_1

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static isJellyBean()Z
    .locals 2

    .prologue
    .line 627
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getSDKversion()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isTablet(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 319
    const-class v2, Lcom/bd/android/shared/BDUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getSDKversion()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v3, 0xa

    if-gt v0, v3, :cond_0

    move v0, v1

    .line 338
    :goto_0
    monitor-exit v2

    return v0

    .line 324
    :cond_0
    :try_start_1
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 325
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 327
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 328
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 329
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 330
    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 331
    int-to-float v4, v4

    div-float v3, v4, v3

    .line 332
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 334
    const/high16 v3, 0x44160000    # 600.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 336
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 338
    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized logDebugError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 514
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    if-nez p0, :cond_1

    .line 518
    const-string v0, "Bitdefender"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 522
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeAppVersionCode(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 814
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/bd/android/shared/u;->a()Lcom/bd/android/shared/u;

    move-result-object v0

    .line 816
    if-nez v0, :cond_0

    .line 818
    invoke-static {p0}, Lcom/bd/android/shared/u;->a(Landroid/content/Context;)Lcom/bd/android/shared/u;

    move-result-object v0

    .line 821
    :cond_0
    invoke-virtual {v0}, Lcom/bd/android/shared/u;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    monitor-exit v1

    return-void

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized saveRunningAppVersion(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 800
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/bd/android/shared/u;->a()Lcom/bd/android/shared/u;

    move-result-object v0

    .line 802
    if-nez v0, :cond_0

    .line 804
    invoke-static {p0}, Lcom/bd/android/shared/u;->a(Landroid/content/Context;)Lcom/bd/android/shared/u;

    move-result-object v0

    .line 807
    :cond_0
    invoke-static {p0}, Lcom/bd/android/shared/BDUtils;->a(Landroid/content/Context;)I

    move-result v2

    .line 809
    invoke-virtual {v0, v2}, Lcom/bd/android/shared/u;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    monitor-exit v1

    return-void

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static sendCloudMessage(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/16 v1, 0xc8

    const/16 v0, -0x6b

    .line 84
    const-string v2, "BDUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sendCloudMessage with payload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v2, Lcom/bd/android/shared/HTTPManager2$Builder;

    invoke-direct {v2}, Lcom/bd/android/shared/HTTPManager2$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/bd/android/shared/HTTPManager2$Builder;->build()Lcom/bd/android/shared/HTTPManager2;

    move-result-object v2

    .line 89
    sget-object v3, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_ANTITEFT:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    invoke-virtual {v2, v3, p0}, Lcom/bd/android/shared/HTTPManager2;->SendToCloud(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v2

    .line 91
    iget v3, v2, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    if-ne v3, v1, :cond_3

    .line 95
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v2, v2, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v2, "result"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    const-string v2, "result"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 100
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    const-string v1, "BDUtils"

    const-string v2, " return sendCloudMessage E_MALFORMED_SERVER_RESPONSE"

    invoke-static {v1, v2}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return v0

    .line 106
    :cond_0
    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v2, "updated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "BDUtils"

    const-string v2, " return sendCloudMessage HTTP_OK"

    invoke-static {v0, v2}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 111
    goto :goto_0

    .line 115
    :cond_1
    const-string v0, "BDUtils"

    const-string v1, " return sendCloudMessage E_HTTP_501"

    invoke-static {v0, v1}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/16 v0, 0x1f5

    goto :goto_0

    .line 121
    :cond_2
    const-string v1, "BDUtils"

    const-string v2, " return sendCloudMessage E_MALFORMED_SERVER_RESPONSE"

    invoke-static {v1, v2}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    const-string v0, "BDUtils"

    const-string v1, " return sendCloudMessage E_UNKNOWN_COMMUNICATION_PROBLEM"

    invoke-static {v0, v1}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/16 v0, -0x6c

    goto :goto_0

    .line 133
    :cond_3
    const-string v0, "BDUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " return sendCloudMessage ri.ErrorType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget v0, v2, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    goto :goto_0
.end method

.method public static declared-synchronized setDeviceName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 211
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/bd/android/shared/u;->a()Lcom/bd/android/shared/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bd/android/shared/u;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit v1

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setEulaAccepted(Z)V
    .locals 2

    .prologue
    .line 206
    const-class v0, Lcom/bd/android/shared/BDUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/bd/android/shared/u;->d(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit v0

    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setForcedSync(Z)V
    .locals 2

    .prologue
    .line 195
    const-class v1, Lcom/bd/android/shared/BDUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/bd/android/shared/u;->a()Lcom/bd/android/shared/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bd/android/shared/u;->h(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit v1

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLicenseURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 154
    const-class v0, Lcom/bd/android/shared/BDUtils;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/bd/android/shared/BDUtils;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit v0

    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setNimbusURLs([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    const-class v0, Lcom/bd/android/shared/BDUtils;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/bd/android/shared/BDUtils;->b:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v0

    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setReferrer(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Lcom/bd/android/shared/u;->a()Lcom/bd/android/shared/u;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {v0, p0}, Lcom/bd/android/shared/u;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUseEula(Z)V
    .locals 0

    .prologue
    .line 168
    sput-boolean p0, Lcom/bd/android/shared/BDUtils;->a:Z

    .line 169
    return-void
.end method
