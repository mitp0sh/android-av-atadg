.class public Lde/gdata/mobilesecurity/updateserverconnection/Update;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTO_START_UPDATE:Ljava/lang/String; = "AUTO_START_UPDATE"

.field public static final ONE_DAY_MILLISECONDS:I = 0x5265c00

.field public static final RESEST_TRAIL_STATE_ON_LOGIN_LIMIT_EXTENDED_DAYS:I = 0x50

.field public static final SIGS_OUTDATED_DAYS:I = 0x1c

.field public static final UPDATE_FILE_SUFFIX:Ljava/lang/String; = ".upd"

.field private static volatile g:Z

.field private static volatile h:Ljava/lang/String;

.field private static volatile i:Ljava/lang/String;

.field private static volatile j:Ljava/lang/String;

.field private static volatile k:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

.field private e:Lde/gdata/mobilesecurity/util/BasePreferences;

.field private f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    sput-boolean v1, Lde/gdata/mobilesecurity/updateserverconnection/Update;->g:Z

    .line 50
    const-string v0, "AND_MS_SG3"

    sput-object v0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->h:Ljava/lang/String;

    .line 51
    const-string v0, "AND_AV_SG3"

    sput-object v0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->i:Ljava/lang/String;

    .line 52
    const-string v0, "AND_MS_PGM"

    sput-object v0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->j:Ljava/lang/String;

    .line 53
    sput-boolean v1, Lde/gdata/mobilesecurity/updateserverconnection/Update;->k:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    .line 63
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 64
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 65
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->a:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->b:Ljava/lang/String;

    .line 68
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->a:Ljava/lang/String;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->b:Ljava/lang/String;

    invoke-direct {v0, p3, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    .line 69
    return-void
.end method

.method private a(I)V
    .locals 8

    .prologue
    .line 573
    const/16 v0, 0x1650

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1653

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1647

    if-ne p1, v0, :cond_3

    .line 577
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLoginLimit(Landroid/content/Context;Ljava/util/Date;)V

    .line 581
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 582
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/Trial;->setTrialState(I)V

    .line 584
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 229
    sget-boolean v0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->g:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 290
    :goto_0
    return v0

    .line 234
    :cond_0
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Main.compareVersion() server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 243
    :try_start_1
    const-string v1, "_("

    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 246
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 249
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 250
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 256
    const-string v0, "\\."

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 257
    const-string v0, "\\."

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 259
    array-length v0, v8

    add-int/lit8 v1, v0, -0x1

    .line 260
    array-length v0, v9

    add-int/lit8 v2, v0, -0x1

    .line 262
    if-ge v1, v2, :cond_1

    move v0, v1

    :goto_1
    move v5, v4

    .line 263
    :goto_2
    if-ge v5, v0, :cond_4

    .line 266
    :try_start_2
    aget-object v10, v9, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 267
    aget-object v11, v8, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    .line 269
    if-ge v10, v11, :cond_2

    move v0, v3

    .line 270
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    move v0, v3

    .line 237
    goto/16 :goto_0

    .line 251
    :catch_1
    move-exception v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception on parsing version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move v0, v4

    .line 253
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 262
    goto :goto_1

    .line 273
    :cond_2
    if-le v10, v11, :cond_3

    move v0, v4

    .line 274
    goto/16 :goto_0

    .line 276
    :catch_2
    move-exception v0

    .line 277
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    move v0, v3

    .line 278
    goto/16 :goto_0

    .line 263
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 283
    :cond_4
    if-le v1, v2, :cond_5

    move v0, v3

    .line 284
    goto/16 :goto_0

    .line 289
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Main.compareVersion() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move v0, v4

    .line 290
    goto/16 :goto_0
.end method

.method public static getUpdateComponentPgm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    sget-object v0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static getUpdateComponentSig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    sget-object v0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static getUpdateComponentSigFree()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    sget-object v0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static isFreeVersion()Z
    .locals 1

    .prologue
    .line 563
    sget-boolean v0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->k:Z

    return v0
.end method

.method public static setDeactivateApkVersionCheck()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->g:Z

    .line 59
    return-void
.end method

.method public static setFreeVersion(Z)V
    .locals 0

    .prologue
    .line 556
    sput-boolean p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->k:Z

    .line 557
    return-void
.end method

.method public static setUpdateComponents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 548
    sput-object p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->h:Ljava/lang/String;

    .line 549
    sput-object p1, Lde/gdata/mobilesecurity/updateserverconnection/Update;->j:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public static updateLoginLimit(Landroid/content/Context;Lde/gdata/mobilesecurity/util/BasePreferences;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 588
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v2

    .line 589
    if-nez v2, :cond_1

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getLoginLimit()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 590
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getLoginLimit()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLoginLimit(Landroid/content/Context;Ljava/util/Date;)V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    const/4 v1, 0x0

    .line 593
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getLoginLimit()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_3

    .line 595
    if-eqz v2, :cond_2

    .line 597
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLoginLimit(Landroid/content/Context;Ljava/util/Date;)V

    .line 617
    :goto_1
    if-eqz v0, :cond_0

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->loginLimitWasExtended()V

    goto :goto_0

    .line 600
    :cond_2
    new-instance v1, Ljava/util/Date;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLoginLimit(Landroid/content/Context;Ljava/util/Date;)V

    goto :goto_1

    .line 604
    :cond_3
    if-nez v2, :cond_4

    .line 605
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getLoginLimit()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLoginLimit(Landroid/content/Context;Ljava/util/Date;)V

    move v0, v1

    goto :goto_1

    .line 607
    :cond_4
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getLoginLimit()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 608
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getLoginLimit()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 609
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getLoginLimit()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v4, v2

    .line 610
    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    .line 611
    const-wide/16 v4, 0x50

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 613
    :goto_2
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getLoginLimit()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLoginLimit(Landroid/content/Context;Ljava/util/Date;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public static updateSigsOutdatedNotification(Landroid/content/Context;)V
    .locals 11

    .prologue
    const v5, 0x7f0d03d2

    const/16 v10, 0x1c

    const/4 v1, 0x5

    .line 488
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 490
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->hasCustomNotification(I)Z

    move-result v3

    .line 494
    new-instance v4, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 495
    new-instance v2, Lde/gdata/mobilesecurity/sigfile/SignatureDb;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;-><init>(Landroid/content/Context;)V

    .line 496
    invoke-virtual {v2, p0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->getSignatureFileDate(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v2

    .line 497
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastSignatureUpdate()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 498
    invoke-virtual {v2, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 499
    invoke-static {v6, v10}, Lde/gdata/mobilesecurity/util/MyDate;->isOlderThan(Ljava/util/Date;I)Z

    move-result v2

    .line 504
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isScanEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 505
    if-nez v3, :cond_0

    .line 506
    const v2, 0x7f0d03d1

    const v3, 0x7f02013a

    const v4, 0x7f02012f

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(IIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 516
    :cond_0
    :goto_1
    return-void

    .line 501
    :cond_1
    invoke-static {v2, v10}, Lde/gdata/mobilesecurity/util/MyDate;->isOlderThan(Ljava/util/Date;I)Z

    move-result v2

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->removeCustomNotification(I)V

    .line 513
    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    goto :goto_1
.end method


# virtual methods
.method public checkForProgramUpdate()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->a:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 105
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->a:Ljava/lang/String;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAvFreeDefaultUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->getUpdateComponentSigFree()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;-><init>(Ljava/lang/String;)V

    .line 84
    :goto_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->getVersion(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 85
    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 87
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v2

    .line 89
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v3

    if-nez v3, :cond_3

    .line 90
    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->a:Ljava/lang/String;

    iget-object v4, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAvFreeDefaultUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    iget-object v4, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-static {v3, v4, v0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateLoginLimit(Landroid/content/Context;Lde/gdata/mobilesecurity/util/BasePreferences;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 93
    :cond_1
    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLastProcessedSoftwareUpdateVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 95
    goto :goto_0

    .line 83
    :cond_2
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->getUpdateComponentPgm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v1

    const/16 v3, 0x1651

    if-ne v1, v3, :cond_4

    .line 99
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-static {v1, v3, v0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateLoginLimit(Landroid/content/Context;Lde/gdata/mobilesecurity/util/BasePreferences;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    move v0, v2

    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->a(I)V

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method public isFreeUpdate()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 622
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->a:Ljava/lang/String;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAvFreeDefaultUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v0

    .line 624
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerFreeVersion()I
    .locals 3

    .prologue
    .line 469
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->getUpdateComponentSig()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;-><init>(Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->createCommandSession(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 473
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    .line 479
    :goto_0
    return v0

    .line 477
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->registerFreeVersion(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 479
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    goto :goto_0
.end method

.method public sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 450
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->getUpdateComponentSig()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;-><init>(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->createCommandSession(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 454
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    .line 460
    :goto_0
    return v0

    .line 458
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v1, v0, p1, p2, p3}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->sendMail(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    goto :goto_0
.end method

.method public updateAPK()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateAPK(Z)I

    move-result v0

    return v0
.end method

.method public updateAPK(Z)I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 147
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;

    sget-object v0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->j:Ljava/lang/String;

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->getVersion(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 151
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v5

    .line 221
    :cond_0
    :goto_0
    return v5

    .line 154
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLastProcessedSoftwareUpdateVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 156
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 157
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v5

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->getFileList(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 162
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 164
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v5

    goto :goto_0

    .line 167
    :cond_4
    const-string v0, "updateinfo.xml"

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->fileListContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    const-string v1, "updateinfo.xml"

    invoke-virtual {v0, v2, v1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->getUpdateInfo(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->deviceNotSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLastProcessedSoftwareUpdateVersion(Ljava/lang/String;)V

    .line 173
    :cond_5
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->deviceNotSupported()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    :cond_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 175
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v5

    goto :goto_0

    .line 179
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->fileListContains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getFirstApkFromFileList()Ljava/lang/String;

    move-result-object v3

    .line 182
    :cond_8
    const-string v0, ""

    if-ne v3, v0, :cond_9

    .line 183
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 184
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v5

    goto/16 :goto_0

    .line 188
    :cond_9
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->loadUpdateFile(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v0

    .line 189
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v1

    if-eqz v1, :cond_a

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Main.OCLgoUpdate() ServerHandler.saveApkFile failed with err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v5

    goto/16 :goto_0

    .line 195
    :cond_a
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_b

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 199
    :cond_b
    if-nez v1, :cond_c

    const-string v0, "null"

    .line 200
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t install update, wrong package name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLastProcessedSoftwareUpdateVersion(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 203
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v5

    goto/16 :goto_0

    .line 199
    :cond_c
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 206
    :cond_d
    if-nez p1, :cond_0

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 210
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public updateSignatures()I
    .locals 13

    .prologue
    const/4 v9, 0x4

    const/4 v7, 0x3

    const/4 v8, -0x7

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 298
    .line 299
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->isFreeUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->getUpdateComponentSigFree()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;-><init>(Ljava/lang/String;)V

    .line 302
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAvFreeDefaultUser()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAvFreeDefaultPwd()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    .line 304
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0, v9}, Lde/gdata/mobilesecurity/util/Trial;->setTrialState(I)V

    .line 311
    :cond_0
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->getVersion(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 312
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getSignatureVersion()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->isFreeUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->a(I)V

    .line 315
    :cond_1
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    .line 438
    :goto_1
    return v0

    .line 307
    :cond_2
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->getUpdateComponentSig()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->isFreeUpdate()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/Trial;->signatureUpdateSuccessful()V

    .line 322
    :cond_4
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 323
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 325
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLastSignatureUpdate(J)V

    .line 326
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateSigsOutdatedNotification(Landroid/content/Context;)V

    move v0, v7

    .line 328
    goto :goto_1

    .line 332
    :cond_5
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->isFreeUpdate()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-static {v1, v3, v2}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateLoginLimit(Landroid/content/Context;Lde/gdata/mobilesecurity/util/BasePreferences;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 334
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update signatures: serverVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " localVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    const-string v3, "version.sig"

    const-string v4, "version.sig.upd"

    invoke-virtual/range {v0 .. v6}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->loadUpdateFile(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    .line 339
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    if-eqz v0, :cond_7

    .line 340
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 341
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    goto/16 :goto_1

    .line 345
    :cond_7
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    const-string v3, "difflist.sig"

    const-string v4, "difflist.sig.upd"

    invoke-virtual/range {v0 .. v6}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->loadUpdateFile(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    .line 347
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    if-nez v0, :cond_9

    move v1, v6

    .line 349
    :goto_2
    if-nez v1, :cond_8

    .line 353
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->getVersion(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 356
    :cond_8
    new-instance v10, Lde/gdata/mobilesecurity/sigfile/SignatureDb;

    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-direct {v10, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;-><init>(Landroid/content/Context;)V

    .line 360
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    const-string v3, "version.sig.upd"

    invoke-virtual {v10, v0, v3}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->getDiffUpdateFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 362
    const/4 v0, 0x0

    .line 363
    if-eqz v1, :cond_12

    .line 364
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    const-string v1, "difflist.sig.upd"

    invoke-virtual {v10, v0, v11, v1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->getDiffUpdateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    const-string v3, "difflist.sig.upd"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object v1, v0

    .line 368
    :goto_3
    if-eqz v1, :cond_a

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v6

    .line 377
    :goto_4
    if-nez v0, :cond_b

    .line 378
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    move v0, v7

    .line 379
    goto/16 :goto_1

    :cond_9
    move v1, v5

    .line 347
    goto :goto_2

    .line 373
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no diff update ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    const-string v1, "version.sig.upd"

    invoke-virtual {v10, v0, v1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->getUpdateFileList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move v9, v5

    goto :goto_4

    .line 382
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;

    .line 383
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".upd"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->loadUpdateFile(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    .line 385
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    if-eqz v0, :cond_d

    .line 386
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 387
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    goto/16 :goto_1

    .line 389
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".upd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/FileScan;->calcFullMD5Native(Ljava/lang/String;)[J

    move-result-object v0

    .line 391
    aget-wide v0, v0, v5

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;->getHash()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_c

    .line 392
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 393
    const/4 v0, -0x6

    goto/16 :goto_1

    .line 398
    :cond_e
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setSignatureVersion(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setUpdateProcessed()V

    .line 401
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 404
    const/4 v0, 0x2

    .line 405
    if-eqz v9, :cond_10

    .line 406
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".upd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->installDiffSigUpdate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 407
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setSignatureVersion(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    const-string v1, ".upd"

    invoke-virtual {v10, v0, v1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->switchBackToSigFilesFromRawResources(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v8

    .line 418
    :goto_5
    :try_start_0
    new-instance v1, Lde/gdata/mobilesecurity/scan/LogEntry;

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-direct {v1, v3}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/content/Context;)V

    .line 420
    if-eq v0, v8, :cond_11

    .line 421
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 422
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getShortVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 429
    :goto_6
    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_7
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->e:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLastSignatureUpdate(J)V

    .line 436
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-static {v1}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateSigsOutdatedNotification(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 411
    :cond_f
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".upd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_5

    .line 413
    :cond_10
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    const-string v3, ".upd"

    invoke-virtual {v10, v1, v3}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->installSigUpdate(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 424
    :cond_11
    const/16 v2, 0x10

    :try_start_1
    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 425
    const-string v2, ""

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 431
    :catch_0
    move-exception v1

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting log entry in updateSignatures(...) failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    move-object v1, v0

    goto/16 :goto_3
.end method

.method public updateUpdateActions()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 109
    .line 111
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;

    sget-object v2, Lde/gdata/mobilesecurity/updateserverconnection/Update;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->getUpdateActions(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 115
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateActionId()Ljava/lang/String;

    move-result-object v2

    .line 116
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUpdateActionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->d:Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v4, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->c:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->getUpdateActionContent(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 121
    const-string v3, ""

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateActionContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    :try_start_0
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateActionContent()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 124
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 125
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCustomizedSetupOptions(Ljava/lang/String;Z)V

    .line 126
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/Update;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setUpdateActionId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    const/4 v0, 0x1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
