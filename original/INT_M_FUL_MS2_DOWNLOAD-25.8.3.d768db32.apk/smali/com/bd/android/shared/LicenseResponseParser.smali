.class public Lcom/bd/android/shared/LicenseResponseParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/json/JSONObject;

.field private c:Lcom/bd/android/shared/n;

.field private d:I

.field private e:I

.field private f:I

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/bd/android/shared/LicenseResponseParser;->b:Lorg/json/JSONObject;

    .line 19
    const/16 v0, 0xc8

    iput v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    .line 23
    const-string v0, "trial"

    iput-object v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->g:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/bd/android/shared/LicenseResponseParser;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/bd/android/shared/n;

    invoke-direct {v0, p0, v1}, Lcom/bd/android/shared/n;-><init>(Lcom/bd/android/shared/LicenseResponseParser;Lcom/bd/android/shared/m;)V

    iput-object v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->c:Lcom/bd/android/shared/n;

    .line 30
    iput p2, p0, Lcom/bd/android/shared/LicenseResponseParser;->e:I

    .line 31
    iput p3, p0, Lcom/bd/android/shared/LicenseResponseParser;->f:I

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/bd/android/shared/LicenseResponseParser;)I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->f:I

    return v0
.end method

.method static synthetic b(Lcom/bd/android/shared/LicenseResponseParser;)I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->e:I

    return v0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/bd/android/shared/LicenseResponseParser;
    .locals 14

    .prologue
    .line 37
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    iget-object v1, p0, Lcom/bd/android/shared/LicenseResponseParser;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 39
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    const-string v0, "LicenseProdActivator"

    const-string v1, "... end parseValidateLicenseResponse(..) E_LICENSE_BAD_RESPONSE"

    invoke-static {v0, v1}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/16 v0, -0xca

    iput v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    .line 167
    :cond_0
    :goto_0
    return-object p0

    .line 46
    :cond_1
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 48
    const-string v0, "LicenseProdActivator"

    const-string v1, "... end parseValidateLicenseResponse(..) E_LICENSE_BAD_RESPONSE"

    invoke-static {v0, v1}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/16 v0, -0xca

    iput v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0

    .line 53
    :cond_2
    const-string v1, "server_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 55
    const-string v0, "LicenseProdActivator"

    const-string v1, "... end parseValidateLicenseResponse(..) E_LICENSE_BAD_RESPONSE"

    invoke-static {v0, v1}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/16 v0, -0xca

    iput v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    goto :goto_0

    .line 60
    :cond_3
    const-string v1, "serials"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 62
    const-string v0, "LicenseProdActivator"

    const-string v1, "... end parseValidateLicenseResponse(..) E_LICENSE_BAD_RESPONSE"

    invoke-static {v0, v1}, Lcom/bd/android/shared/BDUtils;->logDebugError(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/16 v0, -0xca

    iput v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    goto :goto_0

    .line 67
    :cond_4
    const-string v1, "account"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    const-string v1, "account"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/bd/android/shared/LicenseResponseParser;->b:Lorg/json/JSONObject;

    .line 72
    :cond_5
    const-string v1, "serials"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 74
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 78
    if-nez v5, :cond_7

    .line 80
    const/16 v2, -0xca

    iput v2, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    .line 74
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_7
    const-string v2, "status"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 86
    const/16 v2, -0xca

    iput v2, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    goto :goto_2

    .line 90
    :cond_8
    const-string v2, "modules"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 92
    const/16 v2, -0xca

    iput v2, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    goto :goto_2

    .line 96
    :cond_9
    const-string v2, "first_time"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 98
    const/16 v2, -0xca

    iput v2, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    goto :goto_2

    .line 102
    :cond_a
    const-string v2, "md5"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 104
    const/16 v2, -0xca

    iput v2, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    goto :goto_2

    .line 108
    :cond_b
    const-string v2, "partner"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 110
    const/16 v2, -0xca

    iput v2, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    goto :goto_2

    .line 114
    :cond_c
    const-string v2, "license"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 116
    const/16 v2, -0xca

    iput v2, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    goto :goto_2

    .line 120
    :cond_d
    new-instance v6, Lcom/bd/android/shared/s;

    invoke-direct {v6}, Lcom/bd/android/shared/s;-><init>()V

    .line 122
    const-string v2, "license"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 123
    const-string v2, "partner"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 124
    const-string v2, "first_time"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 125
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v2

    .line 127
    const-string v2, "server_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 128
    invoke-static {p1}, Lcom/bd/android/shared/BDUtils;->isDebugBuild(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 137
    :goto_3
    const-string v9, "md5"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    const-string v12, "modules"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 141
    iput v8, v6, Lcom/bd/android/shared/s;->i:I

    .line 143
    iput-wide v10, v6, Lcom/bd/android/shared/s;->e:J

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v6, Lcom/bd/android/shared/s;->h:J

    .line 145
    const-wide/16 v10, 0x0

    iput-wide v10, v6, Lcom/bd/android/shared/s;->g:J

    .line 146
    iput-object v7, v6, Lcom/bd/android/shared/s;->c:Ljava/lang/String;

    .line 147
    iput-object v9, v6, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    .line 148
    iput-wide v2, v6, Lcom/bd/android/shared/s;->f:J

    .line 149
    iput-object v12, v6, Lcom/bd/android/shared/s;->l:Lorg/json/JSONArray;

    .line 150
    const-string v2, "status"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/bd/android/shared/s;->d:Ljava/lang/String;

    .line 152
    if-nez v12, :cond_e

    .line 154
    const/16 v2, -0xca

    iput v2, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    .line 157
    :cond_e
    const/16 v2, 0xc8

    iget v3, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    if-ne v2, v3, :cond_6

    .line 159
    iget-object v2, p0, Lcom/bd/android/shared/LicenseResponseParser;->c:Lcom/bd/android/shared/n;

    invoke-virtual {v2, v9, v6}, Lcom/bd/android/shared/n;->a(Ljava/lang/String;Lcom/bd/android/shared/s;)Lcom/bd/android/shared/s;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 134
    :cond_f
    const-wide/16 v12, 0x3e8

    mul-long/2addr v2, v12

    goto :goto_3
.end method

.method public getAccountdData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getBMSSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->c:Lcom/bd/android/shared/n;

    invoke-virtual {v0}, Lcom/bd/android/shared/n;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLicenseData(Ljava/lang/String;)Lcom/bd/android/shared/s;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->c:Lcom/bd/android/shared/n;

    invoke-virtual {v0, p1}, Lcom/bd/android/shared/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bd/android/shared/s;

    return-object v0
.end method

.method public getParseError()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->d:I

    return v0
.end method

.method public getTSMDSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->c:Lcom/bd/android/shared/n;

    invoke-virtual {v0}, Lcom/bd/android/shared/n;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBMS()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->c:Lcom/bd/android/shared/n;

    invoke-virtual {v0}, Lcom/bd/android/shared/n;->c()Z

    move-result v0

    return v0
.end method

.method public hasTSMD()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bd/android/shared/LicenseResponseParser;->c:Lcom/bd/android/shared/n;

    invoke-virtual {v0}, Lcom/bd/android/shared/n;->d()Z

    move-result v0

    return v0
.end method
