.class public Lde/gdata/mobilesecurity/scan/cloud/CloudScan;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: application/octet-stream"

.field private static final LOOP_COUNT:I = 0x4b0

.field private static final REG_THUMB_PRINT:Ljava/lang/String; = "5dfaeb1de81e26db7e75269c910950a689e64e82"

.field private static final sRegPath:Ljava/lang/String; = "/GDMC-RegSrv/register"

.field private static final sRegPort:I = 0x20fb

.field private static final sRegServer:Ljava/lang/String; = "world-reg-mobcloud.gdatasoftware.com"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAppsScanned:I

.field private mAsyncStatusUpdate:Lde/gdata/mobilesecurity/scan/AsyncAction;

.field private mContext:Landroid/content/Context;

.field private mFilesScanned:I

.field private mGuid:Ljava/lang/String;

.field private mInfections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/gdata/mobilesecurity/scan/cloud/a;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private mProgress:Lde/gdata/mobilesecurity/scan/NotifyProgress;

.field private mScanJob:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/scan/AsyncAction;Lde/gdata/mobilesecurity/scan/NotifyProgress;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "A"

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mScanJob:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mInfections:Ljava/util/Map;

    .line 85
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mAsyncStatusUpdate:Lde/gdata/mobilesecurity/scan/AsyncAction;

    .line 86
    iput-object p2, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mProgress:Lde/gdata/mobilesecurity/scan/NotifyProgress;

    .line 87
    return-void
.end method

.method private checkRegistration()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 474
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-static {}, Lde/gdata/mobilesecurity/util/BaseLibLoader;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->enableLog()Z

    .line 480
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCloudRegistered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->register()Z

    move-result v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCloudRegistered(Z)V

    .line 483
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCloudRegistered()Z

    move-result v1

    if-nez v1, :cond_2

    .line 484
    const-string v1, "Failed to register with cloud check logs!"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 496
    :goto_0
    return v0

    .line 487
    :cond_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCloudIdent()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 489
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->register()Z

    move-result v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCloudRegistered(Z)V

    .line 491
    :cond_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCloudIdent()Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 493
    const-string v1, "Failed to register with cloud check logs!"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private native enableLog()Z
.end method

.method private getChallengeResponse(Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;)Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 117
    if-nez p1, :cond_0

    move-object v0, v1

    .line 134
    :goto_0
    return-object v0

    .line 120
    :cond_0
    const-string v0, ""

    .line 121
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getChallengeType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 122
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->solveChallenge()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_1
    new-instance v3, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getEpInfo()Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol$EpInfo;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, v3}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->sendAndReceive(Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-static {v4}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;->fromJson(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;

    move-result-object v2

    .line 128
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;->isValidResponse(Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not receive a valid challenge response for solution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with params "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->getChallengeParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 131
    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move-object v0, v1

    .line 132
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 134
    goto :goto_0
.end method

.method private getIdentResponse(Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;)Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;
    .locals 2

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    .line 141
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest;-><init>(Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;Landroid/content/Context;)V

    .line 142
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->sendAndReceive(Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;->fromJson(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private getRegistrationRequest(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;
    .locals 3

    .prologue
    .line 105
    new-instance v1, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->sendAndReceive(Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v2}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->fromJson(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;->isValidResponse(Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not receive a valid registration answer: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    .line 112
    :cond_1
    return-object v0
.end method

.method private native initialize(Ljava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method private initializeNative()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 447
    invoke-static {}, Lde/gdata/mobilesecurity/util/BaseLibLoader;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v0

    .line 450
    :cond_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    .line 451
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 452
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-le v3, v4, :cond_3

    .line 453
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 454
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 455
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 456
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 457
    const-string v5, "emulated"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 458
    const-string v4, "%s/legacy"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_3
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "samsung"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 464
    const-string v3, "/debug"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_4
    iget-object v3, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isScanEnabled()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->initialize(Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    .line 470
    goto :goto_0
.end method

.method private native isInitialized()Z
.end method

.method private register()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 148
    :try_start_0
    const-string v1, "world-reg-mobcloud.gdatasoftware.com"

    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_2

    .line 150
    :cond_0
    const-string v1, "no cloudregistration servers listed"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 168
    :cond_1
    :goto_0
    return v0

    .line 153
    :cond_2
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 154
    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 155
    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mAddress:Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mGuid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->getRegistrationRequest(Ljava/lang/String;)Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;

    move-result-object v1

    .line 157
    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->getChallengeResponse(Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse;)Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;

    move-result-object v1

    .line 158
    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->getIdentResponse(Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse;)Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse;->getCert()Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse$Answer$Cert;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse$Answer$Cert;->getPriv()Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCloudIdent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    const-string v2, "Failed to register:"

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 167
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private native scanDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/scan/AsyncAction;Lde/gdata/mobilesecurity/scan/NotifyProgress;Ljava/lang/String;Landroid/content/Context;)I
.end method

.method private native scanFileOrApk(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/scan/AsyncAction;Lde/gdata/mobilesecurity/scan/NotifyProgress;)I
.end method

.method private native scanPackages(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/scan/AsyncAction;Lde/gdata/mobilesecurity/scan/NotifyProgress;)I
.end method

.method private sendAndReceive(Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 175
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "5dfaeb1de81e26db7e75269c910950a689e64e82"

    aput-object v2, v0, v1

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/KnownSSLSocketFactory;->getHttpsClient([Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 182
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 186
    :try_start_1
    new-instance v9, Lde/gdata/mobilesecurity/util/MultiPartEntity;

    invoke-direct {v9}, Lde/gdata/mobilesecurity/util/MultiPartEntity;-><init>()V

    .line 187
    const-string v1, "json"

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    const-string v0, "data.json"

    invoke-virtual {v9, v1, v2, v0}, Lde/gdata/mobilesecurity/util/MultiPartEntity;->addEntity(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 196
    :try_start_2
    new-instance v0, Ljava/net/URI;

    const-string v1, "https"

    const/4 v2, 0x0

    iget-object v3, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mAddress:Ljava/lang/String;

    const/16 v4, 0x20fb

    const-string v5, "/GDMC-RegSrv/register"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 198
    const-string v0, "Host"

    const-string v2, "world-reg-mobcloud.gdatasoftware.com"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3

    .line 204
    invoke-virtual {v1, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 208
    :try_start_3
    invoke-interface {v8, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    .line 214
    const-string v1, ""

    .line 216
    :try_start_4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 218
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 220
    const/16 v0, 0x1000

    :try_start_5
    new-array v0, v0, [B

    .line 222
    :goto_0
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 223
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v1, "Failed to read response:"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 231
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    .line 232
    const-string v0, ""

    .line 234
    :goto_1
    return-object v0

    .line 176
    :catch_1
    move-exception v0

    .line 177
    const-string v1, "Failed to create KnownSSLSocketFactory"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 178
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    .line 179
    const-string v0, ""

    goto :goto_1

    .line 188
    :catch_2
    move-exception v0

    .line 189
    const-string v1, "Failed to create Entity"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->i(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->i(Ljava/lang/String;)V

    .line 191
    const-string v0, ""

    goto :goto_1

    .line 199
    :catch_3
    move-exception v0

    .line 200
    const-string v1, "Failed to create HttpPost"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 201
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    .line 202
    const-string v0, ""

    goto :goto_1

    .line 209
    :catch_4
    move-exception v0

    .line 210
    const-string v1, "Failed to execute http post"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 211
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    .line 212
    const-string v0, ""

    goto :goto_1

    .line 225
    :cond_0
    :try_start_7
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 227
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1
.end method

.method private updateGlobalInfecionList(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 374
    new-instance v9, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    invoke-direct {v9}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;-><init>()V

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 376
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mInfections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 377
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/scan/cloud/a;

    .line 378
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 379
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/cloud/a;->b()Lde/gdata/mobilesecurity/scan/FileInfection;

    move-result-object v8

    .line 380
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/cloud/a;->a()Lde/gdata/mobilesecurity/scan/AppInfection;

    move-result-object v7

    .line 381
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/cloud/a;->c()Lcom/bitdefender/scanner/ResultInfo;

    move-result-object v3

    .line 383
    if-eqz v3, :cond_8

    .line 384
    new-instance v2, Lde/gdata/mobilesecurity/sigfile/MalwareName;

    iget-object v4, v3, Lcom/bitdefender/scanner/ResultInfo;->sThreatName:Ljava/lang/String;

    iget v0, v3, Lcom/bitdefender/scanner/ResultInfo;->result:I

    const/16 v6, 0x8

    if-ne v0, v6, :cond_3

    sget-byte v0, Lde/gdata/mobilesecurity/sigfile/MalwareType;->CATEGORY_ADWARE:B

    :goto_1
    invoke-direct {v2, v4, v0}, Lde/gdata/mobilesecurity/sigfile/MalwareName;-><init>(Ljava/lang/String;I)V

    .line 388
    :goto_2
    if-nez v8, :cond_5

    if-nez v7, :cond_5

    .line 389
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 391
    new-instance v0, Lde/gdata/mobilesecurity/scan/FileInfection;

    const-string v4, ""

    new-instance v3, Lde/gdata/mobilesecurity/util/HashResult;

    invoke-static {v5}, Lde/gdata/mobilesecurity/scan/FileScan;->calcFullMD5Native(Ljava/lang/String;)[J

    move-result-object v6

    invoke-direct {v3, v6}, Lde/gdata/mobilesecurity/util/HashResult;-><init>([J)V

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/HashResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    move-object v3, v1

    invoke-direct/range {v0 .. v6}, Lde/gdata/mobilesecurity/scan/FileInfection;-><init>(Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move-object v0, v7

    :goto_3
    move-object v7, v0

    move-object v8, v2

    .line 407
    :cond_1
    :goto_4
    if-eqz v8, :cond_2

    invoke-virtual {v9, v8}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->add(Lde/gdata/mobilesecurity/scan/FileInfection;)V

    .line 408
    :cond_2
    if-eqz v7, :cond_0

    invoke-virtual {v9, v7}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->add(Lde/gdata/mobilesecurity/scan/AppInfection;)V

    goto :goto_0

    .line 384
    :cond_3
    sget-byte v0, Lde/gdata/mobilesecurity/sigfile/MalwareType;->CATEGORY_MALWARE:B

    goto :goto_1

    .line 394
    :cond_4
    invoke-static {v10, v5}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getPackageInfoFor(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 395
    new-instance v0, Lde/gdata/mobilesecurity/scan/AppInfection;

    const-string v4, ""

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lde/gdata/mobilesecurity/util/HashResult;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v3}, Lde/gdata/mobilesecurity/scan/FileScan;->calcFullMD5Native(Ljava/lang/String;)[J

    move-result-object v3

    invoke-direct {v7, v3}, Lde/gdata/mobilesecurity/util/HashResult;-><init>([J)V

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/HashResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    move-object v3, v1

    invoke-direct/range {v0 .. v7}, Lde/gdata/mobilesecurity/scan/AppInfection;-><init>(Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v8

    goto :goto_3

    .line 399
    :cond_5
    if-eqz v3, :cond_1

    .line 400
    if-eqz v8, :cond_6

    .line 401
    invoke-virtual {v8, v2}, Lde/gdata/mobilesecurity/scan/FileInfection;->setMalwareNameB(Lde/gdata/mobilesecurity/sigfile/MalwareName;)V

    goto :goto_4

    .line 403
    :cond_6
    invoke-virtual {v7, v2}, Lde/gdata/mobilesecurity/scan/AppInfection;->setMalwareNameB(Lde/gdata/mobilesecurity/sigfile/MalwareName;)V

    goto :goto_4

    .line 410
    :cond_7
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mInfections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 412
    return-void

    :cond_8
    move-object v2, v1

    goto :goto_2
.end method

.method private waitForBitDefender(Lde/gdata/mobilesecurity/scan/ResponseScan;Lcom/bitdefender/scanner/Scanner;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 430
    const/16 v1, 0x4b0

    .line 431
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/ResponseScan;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    const-wide/16 v4, 0x1f4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v4, v5, v1}, Ljava/lang/Thread;->sleep(JI)V

    .line 434
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mAsyncStatusUpdate:Lde/gdata/mobilesecurity/scan/AsyncAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mAsyncStatusUpdate:Lde/gdata/mobilesecurity/scan/AsyncAction;

    invoke-interface {v1}, Lde/gdata/mobilesecurity/scan/AsyncAction;->hasCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    if-eqz p2, :cond_0

    .line 436
    invoke-virtual {p2, p1}, Lcom/bitdefender/scanner/Scanner;->StopScan(Lcom/bitdefender/scanner/IResponseScan;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v1, v2

    .line 441
    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    move v1, v2

    .line 441
    goto :goto_0

    .line 443
    :cond_1
    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method addInfection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 501
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    new-instance v3, Lde/gdata/mobilesecurity/sigfile/MalwareName;

    sget-byte v1, Lde/gdata/mobilesecurity/sigfile/MalwareType;->CATEGORY_MALWARE:B

    invoke-direct {v3, p4, v1}, Lde/gdata/mobilesecurity/sigfile/MalwareName;-><init>(Ljava/lang/String;I)V

    .line 503
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mInfections:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 504
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mInfections:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/cloud/a;

    .line 505
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/cloud/a;->b()Lde/gdata/mobilesecurity/scan/FileInfection;

    move-result-object v1

    .line 506
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/cloud/a;->a()Lde/gdata/mobilesecurity/scan/AppInfection;

    move-result-object v0

    .line 507
    if-eqz v1, :cond_0

    .line 508
    if-nez p5, :cond_2

    .line 509
    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/scan/FileInfection;->setMalwareNameC(Lde/gdata/mobilesecurity/sigfile/MalwareName;)V

    .line 513
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 514
    if-nez p5, :cond_3

    .line 515
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/scan/AppInfection;->setMalwareNameC(Lde/gdata/mobilesecurity/sigfile/MalwareName;)V

    .line 535
    :cond_1
    :goto_1
    return-void

    .line 511
    :cond_2
    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/scan/FileInfection;->setMalwareNameA(Lde/gdata/mobilesecurity/sigfile/MalwareName;)V

    goto :goto_0

    .line 517
    :cond_3
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/scan/AppInfection;->setMalwareNameA(Lde/gdata/mobilesecurity/sigfile/MalwareName;)V

    goto :goto_1

    .line 521
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 522
    new-instance v7, Lde/gdata/mobilesecurity/scan/cloud/a;

    new-instance v0, Lde/gdata/mobilesecurity/scan/FileInfection;

    if-eqz p5, :cond_6

    move-object v1, v3

    :goto_2
    if-eqz p5, :cond_5

    move-object v3, v2

    :cond_5
    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lde/gdata/mobilesecurity/scan/FileInfection;-><init>(Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, p0, v0, v2, v2}, Lde/gdata/mobilesecurity/scan/cloud/a;-><init>(Lde/gdata/mobilesecurity/scan/cloud/CloudScan;Lde/gdata/mobilesecurity/scan/FileInfection;Lde/gdata/mobilesecurity/scan/AppInfection;Lcom/bitdefender/scanner/ResultInfo;)V

    move-object v0, v7

    .line 533
    :goto_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mInfections:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    move-object v1, v2

    .line 522
    goto :goto_2

    .line 528
    :cond_7
    new-instance v8, Lde/gdata/mobilesecurity/scan/cloud/a;

    new-instance v0, Lde/gdata/mobilesecurity/scan/AppInfection;

    if-eqz p5, :cond_9

    move-object v1, v3

    :goto_4
    if-eqz p5, :cond_8

    move-object v3, v2

    :cond_8
    const-string v6, ""

    move-object v4, p1

    move-object v5, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lde/gdata/mobilesecurity/scan/AppInfection;-><init>(Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Lde/gdata/mobilesecurity/sigfile/MalwareName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, p0, v2, v0, v2}, Lde/gdata/mobilesecurity/scan/cloud/a;-><init>(Lde/gdata/mobilesecurity/scan/cloud/CloudScan;Lde/gdata/mobilesecurity/scan/FileInfection;Lde/gdata/mobilesecurity/scan/AppInfection;Lcom/bitdefender/scanner/ResultInfo;)V

    move-object v0, v8

    goto :goto_3

    :cond_9
    move-object v1, v2

    goto :goto_4
.end method

.method public getAppsScanned()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mAppsScanned:I

    return v0
.end method

.method public getFilesScanned()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mFilesScanned:I

    return v0
.end method

.method public getScanJob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mScanJob:Ljava/lang/String;

    return-object v0
.end method

.method handleBitDefenderResults(Lde/gdata/mobilesecurity/scan/ResponseScan;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 415
    if-nez p1, :cond_1

    .line 427
    :cond_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/ResponseScan;->getInfectionMap()Ljava/util/Map;

    move-result-object v0

    .line 417
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 418
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 419
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitdefender/scanner/ResultInfo;

    .line 420
    iget-object v3, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mInfections:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 421
    iget-object v3, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mInfections:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/scan/cloud/a;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/scan/cloud/a;->a(Lcom/bitdefender/scanner/ResultInfo;)V

    goto :goto_0

    .line 423
    :cond_2
    iget-object v3, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mInfections:Ljava/util/Map;

    new-instance v4, Lde/gdata/mobilesecurity/scan/cloud/a;

    invoke-direct {v4, p0, v5, v5, v0}, Lde/gdata/mobilesecurity/scan/cloud/a;-><init>(Lde/gdata/mobilesecurity/scan/cloud/CloudScan;Lde/gdata/mobilesecurity/scan/FileInfection;Lde/gdata/mobilesecurity/scan/AppInfection;Lcom/bitdefender/scanner/ResultInfo;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public scanExternalStorage(Landroid/content/Context;)Z
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 332
    const-string v0, "S"

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mScanJob:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    .line 334
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getMMSId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mGuid:Ljava/lang/String;

    .line 335
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 339
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBitDefenderEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    new-instance v2, Lde/gdata/mobilesecurity/scan/ResponseScan;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/scan/ResponseScan;-><init>()V

    .line 343
    :try_start_0
    invoke-static {}, Lcom/bitdefender/scanner/Scanner;->getInstance()Lcom/bitdefender/scanner/Scanner;

    move-result-object v0

    .line 344
    invoke-virtual {v0, v2}, Lcom/bitdefender/scanner/Scanner;->ScanStorage(Lcom/bitdefender/scanner/IResponseScan;)V
    :try_end_0
    .catch Lcom/bd/android/shared/BDNotInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v2

    .line 350
    :goto_0
    invoke-direct {p0, v8, v0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->waitForBitDefender(Lde/gdata/mobilesecurity/scan/ResponseScan;Lcom/bitdefender/scanner/Scanner;)Z

    move-result v10

    .line 352
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->initializeNative()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v9

    .line 370
    :goto_1
    return v0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    move-object v8, v2

    .line 347
    goto :goto_0

    .line 357
    :cond_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->checkRegistration()Z

    .line 358
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCloudIdent()Ljava/lang/String;

    move-result-object v3

    .line 359
    const-string v1, "/"

    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mGuid:Ljava/lang/String;

    iget-object v4, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mAsyncStatusUpdate:Lde/gdata/mobilesecurity/scan/AsyncAction;

    iget-object v5, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mProgress:Lde/gdata/mobilesecurity/scan/NotifyProgress;

    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->scanDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/scan/AsyncAction;Lde/gdata/mobilesecurity/scan/NotifyProgress;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 362
    :goto_2
    if-nez v0, :cond_1

    .line 363
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v9}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCloudRegistered(Z)V

    .line 366
    :cond_1
    if-eqz v10, :cond_2

    .line 367
    invoke-virtual {p0, v8}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->handleBitDefenderResults(Lde/gdata/mobilesecurity/scan/ResponseScan;)V

    .line 369
    :cond_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->updateGlobalInfecionList(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    move v0, v9

    .line 359
    goto :goto_2

    :cond_4
    move-object v0, v1

    move-object v8, v1

    goto :goto_0
.end method

.method public scanInstalledApplication(Landroid/content/Context;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 283
    const-string v0, "A"

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mScanJob:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    .line 285
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getMMSId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mGuid:Ljava/lang/String;

    .line 286
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 289
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBitDefenderEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 290
    new-instance v2, Lde/gdata/mobilesecurity/scan/ResponseScan;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/scan/ResponseScan;-><init>()V

    .line 293
    :try_start_0
    invoke-static {}, Lcom/bitdefender/scanner/Scanner;->getInstance()Lcom/bitdefender/scanner/Scanner;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v2}, Lcom/bitdefender/scanner/Scanner;->ScanAllPackages(Lcom/bitdefender/scanner/IResponseScan;)V
    :try_end_0
    .catch Lcom/bd/android/shared/BDNotInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v2

    .line 301
    :goto_0
    invoke-direct {p0, v7, v0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->waitForBitDefender(Lde/gdata/mobilesecurity/scan/ResponseScan;Lcom/bitdefender/scanner/Scanner;)Z

    move-result v9

    .line 302
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->initializeNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    :goto_1
    return v8

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    move-object v7, v2

    .line 297
    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCloudIdent()Ljava/lang/String;

    move-result-object v4

    .line 309
    :try_start_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->checkRegistration()Z

    .line 310
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mGuid:Ljava/lang/String;

    iget-object v5, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mAsyncStatusUpdate:Lde/gdata/mobilesecurity/scan/AsyncAction;

    iget-object v6, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mProgress:Lde/gdata/mobilesecurity/scan/NotifyProgress;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->scanPackages(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/scan/AsyncAction;Lde/gdata/mobilesecurity/scan/NotifyProgress;)I

    move-result v0

    .line 312
    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 313
    :goto_2
    if-nez v0, :cond_1

    .line 314
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCloudRegistered(Z)V

    .line 317
    :cond_1
    if-eqz v9, :cond_2

    .line 318
    invoke-virtual {p0, v7}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->handleBitDefenderResults(Lde/gdata/mobilesecurity/scan/ResponseScan;)V

    .line 320
    :cond_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->updateGlobalInfecionList(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move v8, v0

    .line 327
    goto :goto_1

    :cond_3
    move v0, v8

    .line 312
    goto :goto_2

    .line 321
    :catch_1
    move-exception v0

    .line 322
    const-string v1, "Catched unknown exception in scan:"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 323
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    move v0, v8

    .line 324
    goto :goto_3

    :cond_4
    move-object v0, v1

    move-object v7, v1

    goto :goto_0
.end method

.method public scanSingleApp(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 238
    const-string v0, "S"

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mScanJob:Ljava/lang/String;

    .line 239
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    .line 240
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getMMSId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mGuid:Ljava/lang/String;

    .line 241
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 243
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->initializeNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return v9

    .line 249
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBitDefenderEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    new-instance v2, Lde/gdata/mobilesecurity/scan/ResponseScan;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/scan/ResponseScan;-><init>()V

    .line 253
    :try_start_0
    invoke-static {}, Lcom/bitdefender/scanner/Scanner;->getInstance()Lcom/bitdefender/scanner/Scanner;

    move-result-object v0

    .line 254
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    invoke-virtual {v0, p1, v2}, Lcom/bitdefender/scanner/Scanner;->ScanExternalStoragePackage(Ljava/lang/String;Lcom/bitdefender/scanner/IResponseScan;)V
    :try_end_0
    .catch Lcom/bd/android/shared/BDNotInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v8, v2

    .line 265
    :goto_2
    invoke-direct {p0, v8, v0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->waitForBitDefender(Lde/gdata/mobilesecurity/scan/ResponseScan;Lcom/bitdefender/scanner/Scanner;)Z

    move-result v10

    .line 267
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->checkRegistration()Z

    .line 269
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCloudIdent()Ljava/lang/String;

    move-result-object v4

    .line 271
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mGuid:Ljava/lang/String;

    iget-object v6, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mAsyncStatusUpdate:Lde/gdata/mobilesecurity/scan/AsyncAction;

    iget-object v7, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mProgress:Lde/gdata/mobilesecurity/scan/NotifyProgress;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->scanFileOrApk(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/scan/AsyncAction;Lde/gdata/mobilesecurity/scan/NotifyProgress;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 273
    :goto_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mPreferences:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCloudRegistered(Z)V

    .line 275
    if-eqz v10, :cond_1

    .line 276
    invoke-virtual {p0, v8}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->handleBitDefenderResults(Lde/gdata/mobilesecurity/scan/ResponseScan;)V

    .line 278
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->updateGlobalInfecionList(Landroid/content/Context;)V

    move v9, v0

    .line 279
    goto :goto_0

    .line 257
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, v2}, Lcom/bitdefender/scanner/Scanner;->ScanInstalledPackage(Ljava/lang/String;Lcom/bitdefender/scanner/IResponseScan;)V
    :try_end_1
    .catch Lcom/bd/android/shared/BDNotInitializedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    move-object v8, v2

    .line 261
    goto :goto_2

    :cond_3
    move v0, v9

    .line 271
    goto :goto_3

    :cond_4
    move-object v0, v1

    move-object v8, v1

    goto :goto_2
.end method

.method public setAppsScanned(I)V
    .locals 0

    .prologue
    .line 550
    iput p1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mAppsScanned:I

    .line 551
    return-void
.end method

.method public setFilesScanned(I)V
    .locals 0

    .prologue
    .line 542
    iput p1, p0, Lde/gdata/mobilesecurity/scan/cloud/CloudScan;->mFilesScanned:I

    .line 543
    return-void
.end method
