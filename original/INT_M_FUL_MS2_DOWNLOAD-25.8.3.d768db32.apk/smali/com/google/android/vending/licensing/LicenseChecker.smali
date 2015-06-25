.class public Lcom/google/android/vending/licensing/LicenseChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final PREFS_FILE:Ljava/lang/String; = "com.android.vending.licensing.LicenseChecker"

.field public static final SIGNATURE:Ljava/lang/String; = "SIGNATURE"

.field public static final SIGNED_DATA:Ljava/lang/String; = "SIGNED_DATA"

.field private static final a:Ljava/security/SecureRandom;


# instance fields
.field private b:Lcom/google/android/vending/licensing/ILicensingService;

.field private c:Ljava/security/PublicKey;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/vending/licensing/Policy;

.field private f:Landroid/os/Handler;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/vending/licensing/f;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/vending/licensing/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->i:Ljava/util/Set;

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->j:Ljava/util/Queue;

    .line 94
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->d:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->e:Lcom/google/android/vending/licensing/Policy;

    .line 96
    invoke-static {p3}, Lcom/google/android/vending/licensing/LicenseChecker;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->c:Ljava/security/PublicKey;

    .line 97
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->g:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/vending/licensing/LicenseChecker;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->h:Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->f:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    const-string v0, "LicenseChecker"

    const-string v1, "Package not found. could not get version code."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3

    .prologue
    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 112
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 114
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 118
    :catch_1
    move-exception v0

    .line 119
    const-string v1, "LicenseChecker"

    const-string v2, "Could not decode from Base64."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 121
    :catch_2
    move-exception v0

    .line 122
    const-string v1, "LicenseChecker"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a()V
    .locals 6

    .prologue
    .line 186
    :goto_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/licensing/f;

    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    const-string v1, "LicenseChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling checkLicense on service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->b:Lcom/google/android/vending/licensing/ILicensingService;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/f;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/f;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/vending/licensing/c;

    invoke-direct {v5, p0, v0}, Lcom/google/android/vending/licensing/c;-><init>(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/f;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/vending/licensing/ILicensingService;->checkLicense(JLjava/lang/String;Lcom/google/android/vending/licensing/ILicenseResultListener;)V

    .line 191
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    const-string v2, "LicenseChecker"

    const-string v3, "RemoteException in checkLicense call."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/LicenseChecker;->b(Lcom/google/android/vending/licensing/f;)V

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/f;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->b(Lcom/google/android/vending/licensing/f;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/vending/licensing/f;)V
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->i:Ljava/util/Set;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->b:Lcom/google/android/vending/licensing/ILicensingService;

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->b:Lcom/google/android/vending/licensing/ILicensingService;

    .line 331
    :cond_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 327
    const-string v0, "LicenseChecker"

    const-string v1, "Unable to unbind from licensing service (already unbound)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/f;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->a(Lcom/google/android/vending/licensing/f;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/google/android/vending/licensing/f;)V
    .locals 4

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->e:Lcom/google/android/vending/licensing/Policy;

    const/16 v1, 0x123

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->e:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->d:Landroid/content/Context;

    const-string v1, "com.android.vending.licensing.LicenseChecker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 310
    const-string v1, "SIGNED_DATA"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    const-string v2, "SIGNATURE"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {p1}, Lcom/google/android/vending/licensing/f;->a()Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    move-result-object v2

    const/16 v3, 0x123

    invoke-interface {v2, v3, v1, v0}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :goto_0
    monitor-exit p0

    return-void

    .line 315
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/vending/licensing/f;->a()Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x123

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()I
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->c:Ljava/security/PublicKey;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V
    .locals 8

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->e:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "LicenseChecker"

    const-string v1, "Using cached license response"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->d:Landroid/content/Context;

    const-string v1, "com.android.vending.licensing.LicenseChecker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    const-string v1, "SIGNED_DATA"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "SIGNATURE"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const/16 v2, 0x100

    invoke-interface {p1, v2, v1, v0}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_0
    monitor-exit p0

    return-void

    .line 150
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/vending/licensing/f;

    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->e:Lcom/google/android/vending/licensing/Policy;

    new-instance v3, Lcom/google/android/vending/licensing/NullDeviceLimiter;

    invoke-direct {v3}, Lcom/google/android/vending/licensing/NullDeviceLimiter;-><init>()V

    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->c()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/vending/licensing/LicenseChecker;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/vending/licensing/LicenseChecker;->h:Ljava/lang/String;

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/vending/licensing/f;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->b:Lcom/google/android/vending/licensing/ILicensingService;

    if-nez v1, :cond_2

    .line 154
    const-string v1, "LicenseChecker"

    const-string v2, "Binding to licensing service."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/String;

    const-string v3, "Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U="

    invoke-static {v3}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->d:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 166
    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const/4 v0, 0x6

    :try_start_3
    invoke-interface {p1, v0}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :cond_1
    :try_start_4
    const-string v1, "LicenseChecker"

    const-string v2, "Could not bind to service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/LicenseChecker;->b(Lcom/google/android/vending/licensing/f;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/vending/licensing/util/Base64DecoderException;->printStackTrace()V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 179
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->b()V

    .line 343
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/vending/licensing/ILicensingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/vending/licensing/ILicensingService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->b:Lcom/google/android/vending/licensing/ILicensingService;

    .line 290
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    const-string v0, "LicenseChecker"

    const-string v1, "Service unexpectedly disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->b:Lcom/google/android/vending/licensing/ILicensingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
