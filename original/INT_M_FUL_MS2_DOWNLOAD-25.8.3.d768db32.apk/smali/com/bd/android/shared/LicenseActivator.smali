.class public Lcom/bd/android/shared/LicenseActivator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/bd/android/shared/LicenseActivator;

.field private static i:Ljava/lang/String;

.field private static j:Z

.field private static k:I


# instance fields
.field private b:Z

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Lcom/bd/android/shared/h;

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/bd/android/shared/LicenseActivator$IOnSDKLicenseStatusChanged;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/bd/android/shared/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    sput-object v1, Lcom/bd/android/shared/LicenseActivator;->a:Lcom/bd/android/shared/LicenseActivator;

    .line 32
    sput-object v1, Lcom/bd/android/shared/LicenseActivator;->i:Ljava/lang/String;

    .line 34
    sput-boolean v0, Lcom/bd/android/shared/LicenseActivator;->j:Z

    .line 36
    sput v0, Lcom/bd/android/shared/LicenseActivator;->k:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/bd/android/shared/LicenseActivator;->b:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->c:Ljava/lang/Object;

    .line 26
    iput-object v1, p0, Lcom/bd/android/shared/LicenseActivator;->d:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/bd/android/shared/LicenseActivator;->e:Landroid/content/Context;

    .line 28
    iput-object v1, p0, Lcom/bd/android/shared/LicenseActivator;->f:Lcom/bd/android/shared/h;

    .line 29
    iput-object v1, p0, Lcom/bd/android/shared/LicenseActivator;->g:Ljava/util/Vector;

    .line 30
    iput-object v1, p0, Lcom/bd/android/shared/LicenseActivator;->h:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->l:Ljava/util/ArrayList;

    .line 42
    iput-object v1, p0, Lcom/bd/android/shared/LicenseActivator;->m:Lcom/bd/android/shared/u;

    .line 126
    iput-object p1, p0, Lcom/bd/android/shared/LicenseActivator;->e:Landroid/content/Context;

    .line 128
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->g:Ljava/util/Vector;

    .line 130
    invoke-static {p1}, Lcom/bd/android/shared/u;->a(Landroid/content/Context;)Lcom/bd/android/shared/u;

    move-result-object v0

    iput-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->m:Lcom/bd/android/shared/u;

    .line 132
    invoke-static {p1}, Lcom/bd/android/shared/BDLogging;->getInstance(Landroid/content/Context;)Lcom/bd/android/shared/BDLogging;

    .line 134
    invoke-static {p1}, Lcom/bd/android/shared/BDUtils;->isDebugBuild(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bd/android/shared/u;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bd/android/shared/u;->e(Z)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADRESA IP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/bd/android/shared/BDUtils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLocale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getLocaleDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDUtils;->b(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VERSION.RELEASE {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nVERSION.INCREMENTAL {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nVERSION.SDK_INT {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nBOARD {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nBRAND {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nDEVICE {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nFINGERPRINT {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nHOST {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nID {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMANUFACTURER {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMODEL {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nPRODUCT {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDUtils;->b(Ljava/lang/String;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->m:Lcom/bd/android/shared/u;

    sget-object v1, Lcom/bd/android/shared/LicenseActivator;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/u;->c(Ljava/lang/String;)V

    .line 158
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 162
    const-string v0, "Cannot get application versionName for LicenseActivator"

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/bd/android/shared/LicenseActivator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/bd/android/shared/LicenseActivator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17

    .prologue
    .line 417
    :try_start_0
    new-instance v2, Lorg/json/JSONTokener;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 419
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 421
    const/16 v2, -0xca

    .line 588
    :goto_0
    return v2

    .line 424
    :cond_0
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 426
    const/16 v2, -0xca

    goto :goto_0

    .line 429
    :cond_1
    const-string v3, "server_time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 431
    const/16 v2, -0xca

    goto :goto_0

    .line 434
    :cond_2
    const-string v3, "serials"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 436
    const/16 v2, -0xca

    goto :goto_0

    .line 439
    :cond_3
    new-instance v5, Lcom/bd/android/shared/s;

    invoke-direct {v5}, Lcom/bd/android/shared/s;-><init>()V

    .line 440
    const-string v3, "server_time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 441
    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 443
    const-string v3, "serials"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 445
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_13

    .line 447
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 448
    const/4 v3, 0x0

    .line 455
    const-string v2, "status"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 445
    :cond_4
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 460
    :cond_5
    const-string v2, "modules"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 462
    const/16 v2, -0xca

    goto :goto_0

    .line 465
    :cond_6
    const-string v2, "first_time"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 467
    const/16 v2, -0xca

    goto :goto_0

    .line 470
    :cond_7
    const-string v2, "md5"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 472
    const/16 v2, -0xca

    goto :goto_0

    .line 475
    :cond_8
    const-string v2, "partner"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 477
    const/16 v2, -0xca

    goto :goto_0

    .line 480
    :cond_9
    const-string v2, "first_time"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 481
    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    .line 483
    const-string v2, "md5"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 484
    const-string v2, "partner"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 486
    const-string v2, "status"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v12, "valid"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 488
    if-eqz p2, :cond_a

    .line 490
    sget-object v2, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->MD5:Lcom/bd/android/shared/BDHashing$ALGORITHMS;

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-static {v2, v0, v12}, Lcom/bd/android/shared/BDHashing;->make_hash(Lcom/bd/android/shared/BDHashing$ALGORITHMS;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 494
    const/16 v2, 0xc9

    goto/16 :goto_0

    .line 499
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bd/android/shared/LicenseActivator;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 501
    const-string v2, "modules"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 502
    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_10

    .line 504
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 506
    const-string v14, "status"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 508
    const/16 v2, -0xca

    goto/16 :goto_0

    .line 511
    :cond_b
    const-string v14, "id"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 513
    const/16 v2, -0xca

    goto/16 :goto_0

    .line 516
    :cond_c
    const-string v14, "status"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "valid"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 502
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 521
    :cond_d
    const-string v14, "interval"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 523
    const/16 v2, -0xca

    goto/16 :goto_0

    .line 526
    :cond_e
    const-string v14, "first_time"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 528
    const/16 v2, -0xca

    goto/16 :goto_0

    .line 531
    :cond_f
    const-string v14, "id"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 532
    sparse-switch v14, :sswitch_data_0

    goto :goto_4

    .line 539
    :sswitch_0
    const-string v2, "interval"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 540
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bd/android/shared/LicenseActivator;->l:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 585
    :catch_0
    move-exception v2

    .line 587
    const-string v2, "Error while parsing license in LicenseActivator"

    invoke-static {v2}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    .line 588
    const/16 v2, -0xca

    goto/16 :goto_0

    .line 545
    :cond_10
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bd/android/shared/LicenseActivator;->l:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-ne v3, v12, :cond_11

    .line 547
    if-eqz p2, :cond_4

    .line 549
    sget-object v2, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->MD5:Lcom/bd/android/shared/BDHashing$ALGORITHMS;

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-static {v2, v0, v3}, Lcom/bd/android/shared/BDHashing;->make_hash(Lcom/bd/android/shared/BDHashing$ALGORITHMS;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 551
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 553
    const/16 v2, 0xc9

    goto/16 :goto_0

    .line 559
    :cond_11
    const-string v3, "first_time"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 560
    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 562
    int-to-long v2, v2

    const-wide/32 v14, 0x5265c00

    mul-long/2addr v2, v14

    add-long/2addr v2, v12

    .line 563
    sub-long/2addr v2, v6

    .line 564
    const-wide/16 v14, 0x0

    cmp-long v9, v2, v14

    if-lez v9, :cond_12

    .line 566
    :goto_5
    iput-object v10, v5, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    .line 567
    iput-wide v12, v5, Lcom/bd/android/shared/s;->e:J

    .line 568
    iput-wide v2, v5, Lcom/bd/android/shared/s;->g:J

    .line 569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/bd/android/shared/s;->h:J

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bd/android/shared/LicenseActivator;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/bd/android/shared/s;->b:Ljava/lang/String;

    .line 571
    iput v11, v5, Lcom/bd/android/shared/s;->i:I

    goto/16 :goto_2

    .line 564
    :cond_12
    const-wide/16 v2, 0x0

    goto :goto_5

    .line 575
    :cond_13
    invoke-virtual {v5}, Lcom/bd/android/shared/s;->a()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bd/android/shared/LicenseActivator;->m:Lcom/bd/android/shared/u;

    invoke-virtual {v2, v5}, Lcom/bd/android/shared/u;->a(Lcom/bd/android/shared/s;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 578
    const/16 v2, 0xc8

    goto/16 :goto_0

    .line 582
    :cond_14
    const/16 v2, -0xca

    goto/16 :goto_0

    .line 532
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x89 -> :sswitch_0
        0x90 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/bd/android/shared/LicenseActivator;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/bd/android/shared/LicenseActivator;Lcom/bd/android/shared/g;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/bd/android/shared/LicenseActivator;->a(Lcom/bd/android/shared/g;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bd/android/shared/g;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 377
    .line 381
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 382
    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v1, "hwid"

    iget-object v2, p0, Lcom/bd/android/shared/LicenseActivator;->e:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bd/android/shared/BDUtils;->getDeviceIDMD5(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string v1, "oslang"

    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getLocaleDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v1, "product_id"

    const/16 v2, 0x9a9

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 386
    const-string v1, "name"

    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string v1, "os"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android OS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v1, "prodver"

    iget-object v2, p0, Lcom/bd/android/shared/LicenseActivator;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 391
    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 392
    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 393
    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 394
    const/16 v2, 0x89

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 395
    const/16 v2, 0x90

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 397
    const-string v2, "used_modules"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v1, "fetch_new"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 400
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 401
    sget-object v2, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->MD5:Lcom/bd/android/shared/BDHashing$ALGORITHMS;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/bd/android/shared/BDHashing;->make_hash(Lcom/bd/android/shared/BDHashing$ALGORITHMS;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 403
    const-string v2, "serials"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-object v0

    .line 405
    :catch_0
    move-exception v0

    .line 407
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->g:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 373
    :cond_0
    return-void

    .line 365
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->g:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bd/android/shared/LicenseActivator$IOnSDKLicenseStatusChanged;

    .line 368
    if-eqz v0, :cond_2

    .line 370
    invoke-interface {v0, p1}, Lcom/bd/android/shared/LicenseActivator$IOnSDKLicenseStatusChanged;->onSDKLicenseStatusChanged(I)V

    .line 365
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/bd/android/shared/LicenseActivator;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/bd/android/shared/LicenseActivator;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 258
    .line 259
    iget-object v2, p0, Lcom/bd/android/shared/LicenseActivator;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 261
    :try_start_0
    iget-boolean v3, p0, Lcom/bd/android/shared/LicenseActivator;->b:Z

    if-nez v3, :cond_0

    .line 263
    iget-object v3, p0, Lcom/bd/android/shared/LicenseActivator;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    .line 265
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bd/android/shared/LicenseActivator;->d:Ljava/lang/String;

    .line 269
    :goto_0
    invoke-direct {p0}, Lcom/bd/android/shared/LicenseActivator;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    if-eqz v0, :cond_1

    .line 274
    new-instance v0, Lcom/bd/android/shared/h;

    iget-object v1, p0, Lcom/bd/android/shared/LicenseActivator;->d:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/bd/android/shared/h;-><init>(Lcom/bd/android/shared/LicenseActivator;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bd/android/shared/g;

    const/4 v3, 0x0

    sget-object v4, Lcom/bd/android/shared/g;->b:Lcom/bd/android/shared/g;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/bd/android/shared/h;

    iput-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->f:Lcom/bd/android/shared/h;

    .line 280
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bd/android/shared/LicenseActivator;->b:Z

    .line 287
    :cond_0
    :goto_2
    monitor-exit v2

    .line 288
    return-void

    .line 278
    :cond_1
    new-instance v0, Lcom/bd/android/shared/h;

    iget-object v1, p0, Lcom/bd/android/shared/LicenseActivator;->d:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/bd/android/shared/h;-><init>(Lcom/bd/android/shared/LicenseActivator;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bd/android/shared/g;

    const/4 v3, 0x0

    sget-object v4, Lcom/bd/android/shared/g;->a:Lcom/bd/android/shared/g;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/bd/android/shared/h;

    iput-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->f:Lcom/bd/android/shared/h;

    goto :goto_1

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 284
    :cond_2
    const/16 v0, 0xc8

    :try_start_1
    invoke-direct {p0, v0}, Lcom/bd/android/shared/LicenseActivator;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/bd/android/shared/LicenseActivator;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/bd/android/shared/LicenseActivator;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/bd/android/shared/LicenseActivator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private b(I)Z
    .locals 2

    .prologue
    .line 648
    invoke-virtual {p0, p1}, Lcom/bd/android/shared/LicenseActivator;->CanStartSDK(I)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/bd/android/shared/LicenseActivator;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/bd/android/shared/LicenseActivator;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/bd/android/shared/LicenseActivator;->b:Z

    return v0
.end method

.method private d()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 170
    iget-object v1, p0, Lcom/bd/android/shared/LicenseActivator;->m:Lcom/bd/android/shared/u;

    if-nez v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    sget-object v1, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->MD5:Lcom/bd/android/shared/BDHashing$ALGORITHMS;

    iget-object v2, p0, Lcom/bd/android/shared/LicenseActivator;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/bd/android/shared/BDHashing;->make_hash(Lcom/bd/android/shared/BDHashing$ALGORITHMS;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/bd/android/shared/LicenseActivator;->m:Lcom/bd/android/shared/u;

    invoke-virtual {v2}, Lcom/bd/android/shared/u;->b()Lcom/bd/android/shared/s;

    move-result-object v2

    .line 177
    if-eqz v1, :cond_2

    iget-object v3, v2, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    :cond_2
    invoke-virtual {v2}, Lcom/bd/android/shared/s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v4, v2, Lcom/bd/android/shared/s;->h:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v2, v2, Lcom/bd/android/shared/s;->h:J

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/bd/android/shared/LicenseActivator;
    .locals 2

    .prologue
    .line 109
    const-class v1, Lcom/bd/android/shared/LicenseActivator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/LicenseActivator;->a:Lcom/bd/android/shared/LicenseActivator;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/bd/android/shared/LicenseActivator;

    invoke-direct {v0, p0}, Lcom/bd/android/shared/LicenseActivator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bd/android/shared/LicenseActivator;->a:Lcom/bd/android/shared/LicenseActivator;

    .line 113
    :cond_0
    sget-object v0, Lcom/bd/android/shared/LicenseActivator;->a:Lcom/bd/android/shared/LicenseActivator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initLicense(Landroid/content/Context;Ljava/lang/String;)Lcom/bd/android/shared/LicenseActivator;
    .locals 3

    .prologue
    .line 68
    const-class v0, Lcom/bd/android/shared/LicenseActivator;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/bd/android/shared/LicenseActivator;->initLicense(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/bd/android/shared/LicenseActivator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initLicense(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/bd/android/shared/LicenseActivator;
    .locals 4

    .prologue
    .line 73
    const-class v1, Lcom/bd/android/shared/LicenseActivator;

    monitor-enter v1

    .line 75
    :try_start_0
    sput-boolean p2, Lcom/bd/android/shared/LicenseActivator;->j:Z

    if-eqz p2, :cond_0

    .line 77
    sput p3, Lcom/bd/android/shared/LicenseActivator;->k:I

    .line 80
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1

    .line 82
    const/4 v0, 0x0

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bd/android/shared/LicenseActivator;->i:Ljava/lang/String;

    .line 90
    :goto_0
    invoke-static {p0}, Lcom/bd/android/shared/LicenseActivator;->getInstance(Landroid/content/Context;)Lcom/bd/android/shared/LicenseActivator;

    move-result-object v2

    invoke-direct {v2, v0}, Lcom/bd/android/shared/LicenseActivator;->a(Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/bd/android/shared/LicenseActivator;->a:Lcom/bd/android/shared/LicenseActivator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 87
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setFreemiumComponents(I)V
    .locals 0

    .prologue
    .line 628
    sput p0, Lcom/bd/android/shared/LicenseActivator;->k:I

    .line 629
    return-void
.end method


# virtual methods
.method public CanStartModule(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 238
    sget-boolean v1, Lcom/bd/android/shared/LicenseActivator;->j:Z

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseActivator;->getThirdPartyLicenseStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    sget v1, Lcom/bd/android/shared/LicenseActivator;->k:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized CanStartSDK(I)I
    .locals 3

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->m:Lcom/bd/android/shared/u;

    invoke-virtual {v0}, Lcom/bd/android/shared/u;->b()Lcom/bd/android/shared/s;

    move-result-object v1

    .line 203
    const/4 v0, 0x0

    .line 205
    sget-object v2, Lcom/bd/android/shared/LicenseActivator;->a:Lcom/bd/android/shared/LicenseActivator;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/bd/android/shared/LicenseActivator;->a:Lcom/bd/android/shared/LicenseActivator;

    iget-object v2, v2, Lcom/bd/android/shared/LicenseActivator;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 207
    sget-object v0, Lcom/bd/android/shared/LicenseActivator;->a:Lcom/bd/android/shared/LicenseActivator;

    iget-object v0, v0, Lcom/bd/android/shared/LicenseActivator;->d:Ljava/lang/String;

    .line 212
    :cond_0
    invoke-virtual {v1}, Lcom/bd/android/shared/s;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iget-object v0, v1, Lcom/bd/android/shared/s;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 221
    const/16 v0, 0xc8

    .line 231
    :goto_0
    monitor-exit p0

    return v0

    .line 225
    :cond_1
    const/16 v0, 0xc9

    goto :goto_0

    .line 230
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/bd/android/shared/LicenseActivator;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    const/16 v0, -0xcb

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/bd/android/shared/LicenseActivator;->k:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/bd/android/shared/LicenseActivator;->j:Z

    return v0
.end method

.method public getPartnerID()I
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->m:Lcom/bd/android/shared/u;

    invoke-virtual {v0}, Lcom/bd/android/shared/u;->b()Lcom/bd/android/shared/s;

    move-result-object v0

    .line 623
    iget v0, v0, Lcom/bd/android/shared/s;->i:I

    return v0
.end method

.method public getThirdPartyLicenseStatus()Z
    .locals 1

    .prologue
    .line 606
    sget-boolean v0, Lcom/bd/android/shared/LicenseActivator;->j:Z

    if-nez v0, :cond_0

    .line 608
    const/4 v0, 0x1

    .line 617
    :goto_0
    return v0

    .line 612
    :cond_0
    sget-object v0, Lcom/bd/android/shared/LicenseActivator;->a:Lcom/bd/android/shared/LicenseActivator;

    iget-object v0, v0, Lcom/bd/android/shared/LicenseActivator;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 614
    const/4 v0, 0x0

    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->m:Lcom/bd/android/shared/u;

    invoke-virtual {v0}, Lcom/bd/android/shared/u;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public moduleOK(II)Z
    .locals 1

    .prologue
    .line 639
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getEulaAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bd/android/shared/LicenseActivator;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/bd/android/shared/LicenseActivator;->CanStartModule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x1

    .line 643
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshLicense()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/bd/android/shared/LicenseActivator;->a:Lcom/bd/android/shared/LicenseActivator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bd/android/shared/LicenseActivator;->a:Lcom/bd/android/shared/LicenseActivator;

    iget-object v0, v0, Lcom/bd/android/shared/LicenseActivator;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/bd/android/shared/LicenseActivator;->a:Lcom/bd/android/shared/LicenseActivator;

    iget-object v0, v0, Lcom/bd/android/shared/LicenseActivator;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bd/android/shared/LicenseActivator;->a(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public registerOnSDKLicenseStatusChanged(Lcom/bd/android/shared/LicenseActivator$IOnSDKLicenseStatusChanged;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public setThirdPartyLicenseStatus(Z)V
    .locals 1

    .prologue
    .line 594
    sget-boolean v0, Lcom/bd/android/shared/LicenseActivator;->j:Z

    if-nez v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->m:Lcom/bd/android/shared/u;

    invoke-virtual {v0, p1}, Lcom/bd/android/shared/u;->c(Z)V

    .line 601
    const/16 v0, -0xcc

    invoke-direct {p0, v0}, Lcom/bd/android/shared/LicenseActivator;->a(I)V

    goto :goto_0
.end method

.method public unregisterOnSDKLicenseStatusChanged(Lcom/bd/android/shared/LicenseActivator$IOnSDKLicenseStatusChanged;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bd/android/shared/LicenseActivator;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method
