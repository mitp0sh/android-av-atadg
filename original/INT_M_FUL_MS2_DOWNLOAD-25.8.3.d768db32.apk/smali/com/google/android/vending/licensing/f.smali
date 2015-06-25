.class Lcom/google/android/vending/licensing/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/vending/licensing/Policy;

.field private final c:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/vending/licensing/DeviceLimiter;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/vending/licensing/f;->a:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/google/android/vending/licensing/f;->b:Lcom/google/android/vending/licensing/Policy;

    .line 63
    iput-object p3, p0, Lcom/google/android/vending/licensing/f;->g:Lcom/google/android/vending/licensing/DeviceLimiter;

    .line 64
    iput-object p4, p0, Lcom/google/android/vending/licensing/f;->c:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 65
    iput p5, p0, Lcom/google/android/vending/licensing/f;->d:I

    .line 66
    iput-object p6, p0, Lcom/google/android/vending/licensing/f;->e:Ljava/lang/String;

    .line 67
    iput-object p7, p0, Lcom/google/android/vending/licensing/f;->f:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/vending/licensing/f;->c:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V

    .line 228
    return-void
.end method

.method private a(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/vending/licensing/f;->b:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/vending/licensing/f;->b:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/android/vending/licensing/f;->a:Landroid/content/Context;

    const-string v1, "com.android.vending.licensing.LicenseChecker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    const-string v1, "SIGNED_DATA"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    const-string v2, "SIGNATURE"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v2, p0, Lcom/google/android/vending/licensing/f;->c:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v2, p1, v1, v0}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(ILjava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/f;->c:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/vending/licensing/f;->c:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    const/16 v1, 0x231

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    .line 232
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/vending/licensing/f;->c:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    return-object v0
.end method

.method public a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x123

    .line 92
    .line 95
    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    if-ne p2, v5, :cond_6

    .line 99
    :cond_0
    :try_start_0
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 101
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 103
    invoke-static {p4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const-string v0, "LicenseValidator"

    const-string v1, "Signature verification failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/google/android/vending/licensing/f;->d()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    .line 201
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 111
    :catch_1
    move-exception v0

    .line 112
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/f;->a(I)V

    goto :goto_0

    .line 114
    :catch_2
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 116
    :catch_3
    move-exception v0

    .line 117
    const-string v0, "LicenseValidator"

    const-string v1, "Could not Base64-decode signature."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/google/android/vending/licensing/f;->d()V

    goto :goto_0

    .line 120
    :catch_4
    move-exception v0

    .line 121
    invoke-direct {p0}, Lcom/google/android/vending/licensing/f;->d()V

    goto :goto_0

    .line 127
    :cond_1
    :try_start_1
    invoke-static {p3}, Lcom/google/android/vending/licensing/ResponseData;->parse(Ljava/lang/String;)Lcom/google/android/vending/licensing/ResponseData;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    .line 134
    iget v1, v0, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    if-eq v1, p2, :cond_2

    .line 135
    const-string v0, "LicenseValidator"

    const-string v1, "Response codes don\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/google/android/vending/licensing/f;->d()V

    goto :goto_0

    .line 128
    :catch_5
    move-exception v0

    .line 129
    const-string v0, "LicenseValidator"

    const-string v1, "Could not parse response."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/google/android/vending/licensing/f;->d()V

    goto :goto_0

    .line 140
    :cond_2
    iget v1, v0, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    iget v2, p0, Lcom/google/android/vending/licensing/f;->d:I

    if-eq v1, v2, :cond_3

    .line 141
    const-string v0, "LicenseValidator"

    const-string v1, "Nonce doesn\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/google/android/vending/licensing/f;->d()V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v1, v0, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/vending/licensing/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 147
    const-string v0, "LicenseValidator"

    const-string v1, "Package name doesn\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/google/android/vending/licensing/f;->d()V

    goto :goto_0

    .line 152
    :cond_4
    iget-object v1, v0, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/vending/licensing/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 153
    const-string v0, "LicenseValidator"

    const-string v1, "Version codes don\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lcom/google/android/vending/licensing/f;->d()V

    goto :goto_0

    .line 159
    :cond_5
    iget-object v1, v0, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    .line 160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 161
    const-string v0, "LicenseValidator"

    const-string v1, "User identifier is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/google/android/vending/licensing/f;->d()V

    goto/16 :goto_0

    :cond_6
    move-object v1, v0

    .line 167
    :cond_7
    sparse-switch p2, :sswitch_data_0

    .line 198
    const-string v0, "LicenseValidator"

    const-string v1, "Unknown response code for license check."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/google/android/vending/licensing/f;->d()V

    goto/16 :goto_0

    .line 170
    :sswitch_0
    iget-object v2, p0, Lcom/google/android/vending/licensing/f;->g:Lcom/google/android/vending/licensing/DeviceLimiter;

    invoke-interface {v2, v1}, Lcom/google/android/vending/licensing/DeviceLimiter;->isDeviceAllowed(Ljava/lang/String;)I

    move-result v1

    .line 171
    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/licensing/f;->a(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 174
    :sswitch_1
    const/16 v1, 0x231

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/licensing/f;->a(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 177
    :sswitch_2
    const-string v1, "LicenseValidator"

    const-string v2, "Error contacting licensing server."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0, v3, v0}, Lcom/google/android/vending/licensing/f;->a(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 181
    :sswitch_3
    const-string v1, "LicenseValidator"

    const-string v2, "An error has occurred on the licensing server."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0, v3, v0}, Lcom/google/android/vending/licensing/f;->a(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 185
    :sswitch_4
    const-string v1, "LicenseValidator"

    const-string v2, "Licensing server is refusing to talk to this device, over quota."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, v3, v0}, Lcom/google/android/vending/licensing/f;->a(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 189
    :sswitch_5
    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/f;->a(I)V

    goto/16 :goto_0

    .line 192
    :sswitch_6
    invoke-direct {p0, v5}, Lcom/google/android/vending/licensing/f;->a(I)V

    goto/16 :goto_0

    .line 195
    :sswitch_7
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/f;->a(I)V

    goto/16 :goto_0

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x101 -> :sswitch_2
        0x102 -> :sswitch_5
        0x103 -> :sswitch_6
    .end sparse-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/vending/licensing/f;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/vending/licensing/f;->e:Ljava/lang/String;

    return-object v0
.end method
