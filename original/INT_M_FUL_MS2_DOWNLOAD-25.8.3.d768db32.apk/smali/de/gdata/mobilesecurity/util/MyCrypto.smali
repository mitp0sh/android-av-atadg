.class public Lde/gdata/mobilesecurity/util/MyCrypto;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CIPHER_INIT:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field public static final CIPHER_NAME:Ljava/lang/String; = "AES"

.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 33
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lde/gdata/mobilesecurity/util/MyCrypto;->a:[B

    .line 37
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lde/gdata/mobilesecurity/util/MyCrypto;->b:[B

    return-void

    .line 33
    nop

    :array_0
    .array-data 1
        -0x45t
        -0x45t
        -0x45t
        -0x45t
        -0x45t
        -0x45t
        -0x45t
        -0x45t
        -0x45t
        -0x45t
        -0x45t
        -0x45t
        -0x45t
        -0x23t
        -0x23t
        -0x34t
    .end array-data

    .line 37
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)I
    .locals 8

    .prologue
    .line 341
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0

    .line 342
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 343
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    .line 344
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    .line 345
    add-int/lit8 v6, p1, 0x3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    int-to-long v6, v6

    .line 346
    or-long/2addr v0, v2

    or-long/2addr v0, v4

    or-long/2addr v0, v6

    long-to-int v0, v0

    goto :goto_0
.end method

.method private static a([B)V
    .locals 4

    .prologue
    .line 354
    array-length v1, p0

    .line 355
    const/4 v0, 0x0

    :goto_0
    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_0

    .line 356
    aget-byte v2, p0, v0

    .line 357
    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, v0

    aget-byte v3, p0, v3

    aput-byte v3, p0, v0

    .line 358
    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, v0

    aput-byte v2, p0, v3

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method public static decodeFromBase64(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decrypt([B)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 60
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lde/gdata/mobilesecurity/util/MyCrypto;->a:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 64
    :try_start_0
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 73
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lde/gdata/mobilesecurity/util/MyCrypto;->b:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 76
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {v2, v4, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    .line 87
    :try_start_2
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v1

    .line 96
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 68
    :catch_1
    move-exception v1

    .line 69
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :catch_2
    move-exception v1

    .line 78
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    :catch_3
    move-exception v1

    .line 81
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    :catch_4
    move-exception v1

    .line 89
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :catch_5
    move-exception v1

    .line 92
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static decrypt([B[B[BI)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 107
    .line 109
    :try_start_0
    new-instance v1, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;

    invoke-direct {v1, p1, p2, p3}, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;-><init>([B[BI)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :try_start_1
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 129
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->getBytes(I)[B

    move-result-object v3

    .line 130
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->getBytes(I)[B

    move-result-object v1

    .line 132
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 133
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 136
    const/4 v1, 0x2

    :try_start_2
    invoke-virtual {v2, v1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_5

    .line 147
    :try_start_3
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v1

    .line 156
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    :catch_1
    move-exception v1

    .line 114
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 121
    :catch_2
    move-exception v1

    .line 122
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    :catch_3
    move-exception v1

    .line 125
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    :catch_4
    move-exception v1

    .line 138
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    :catch_5
    move-exception v1

    .line 141
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 148
    :catch_6
    move-exception v1

    .line 149
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 151
    :catch_7
    move-exception v1

    .line 152
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static decryptInputStream(Ljava/io/FileInputStream;)Ljavax/crypto/CipherInputStream;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 303
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lde/gdata/mobilesecurity/util/MyCrypto;->a:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 307
    :try_start_0
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 316
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lde/gdata/mobilesecurity/util/MyCrypto;->b:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 319
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {v2, v4, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    .line 328
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {v0, p0, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 330
    :goto_0
    return-object v0

    .line 308
    :catch_0
    move-exception v1

    .line 309
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 311
    :catch_1
    move-exception v1

    .line 312
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 320
    :catch_2
    move-exception v1

    .line 321
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 323
    :catch_3
    move-exception v1

    .line 324
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static encodeToBase64([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypOutputStream(Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 268
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lde/gdata/mobilesecurity/util/MyCrypto;->a:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 272
    :try_start_0
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 281
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lde/gdata/mobilesecurity/util/MyCrypto;->b:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 284
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v2, v4, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    .line 293
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v0, p0, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 295
    :goto_0
    return-object v0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 276
    :catch_1
    move-exception v1

    .line 277
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 285
    :catch_2
    move-exception v1

    .line 286
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 288
    :catch_3
    move-exception v1

    .line 289
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 164
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lde/gdata/mobilesecurity/util/MyCrypto;->a:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 168
    :try_start_0
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 177
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lde/gdata/mobilesecurity/util/MyCrypto;->b:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 180
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v2, v4, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    .line 191
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 172
    :catch_1
    move-exception v1

    .line 173
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 181
    :catch_2
    move-exception v1

    .line 182
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 184
    :catch_3
    move-exception v1

    .line 185
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 192
    :catch_4
    move-exception v1

    .line 193
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 195
    :catch_5
    move-exception v1

    .line 196
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static encrypt([B[B[BI)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 211
    .line 213
    :try_start_0
    new-instance v1, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;

    invoke-direct {v1, p1, p2, p3}, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;-><init>([B[BI)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    :try_start_1
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 233
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->getBytes(I)[B

    move-result-object v3

    .line 234
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->getBytes(I)[B

    move-result-object v1

    .line 236
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 237
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 240
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v2, v1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_5

    .line 251
    :try_start_3
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 217
    :catch_1
    move-exception v1

    .line 218
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 225
    :catch_2
    move-exception v1

    .line 226
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 228
    :catch_3
    move-exception v1

    .line 229
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 241
    :catch_4
    move-exception v1

    .line 242
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 244
    :catch_5
    move-exception v1

    .line 245
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 252
    :catch_6
    move-exception v1

    .line 253
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 255
    :catch_7
    move-exception v1

    .line 256
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getRsaPublicKeyFromModulusAndExponent([B[B)Ljava/security/PublicKey;
    .locals 5

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 373
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 374
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 376
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 378
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v4, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 379
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 380
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getRsaPublicKeyFromWinCspBlob([B)Ljava/security/PublicKey;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 393
    array-length v1, p0

    if-ge v1, v6, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-object v0

    .line 395
    :cond_1
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyCrypto;->a([BI)I

    move-result v1

    .line 396
    div-int/lit8 v1, v1, 0x8

    .line 397
    array-length v2, p0

    add-int/lit8 v2, v2, -0x10

    sub-int/2addr v2, v1

    .line 399
    array-length v3, p0

    add-int/lit8 v4, v1, 0x10

    add-int/2addr v4, v2

    if-lt v3, v4, :cond_0

    .line 401
    new-array v0, v1, [B

    .line 402
    new-array v3, v2, [B

    .line 404
    invoke-static {p0, v6, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    add-int/lit8 v2, v2, 0x10

    invoke-static {p0, v2, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyCrypto;->a([B)V

    .line 408
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyCrypto;->a([B)V

    .line 410
    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/util/MyCrypto;->getRsaPublicKeyFromModulusAndExponent([B[B)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0
.end method
