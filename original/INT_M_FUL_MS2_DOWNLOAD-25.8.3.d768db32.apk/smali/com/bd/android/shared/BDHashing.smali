.class public Lcom/bd/android/shared/BDHashing;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private static a(Lcom/bd/android/shared/BDHashing$ALGORITHMS;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 19
    sget-object v1, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->MD5:Lcom/bd/android/shared/BDHashing$ALGORITHMS;

    if-ne v1, p0, :cond_0

    .line 21
    const-string v0, "MD5"

    .line 23
    :cond_0
    sget-object v1, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->SHA1:Lcom/bd/android/shared/BDHashing$ALGORITHMS;

    if-ne v1, p0, :cond_1

    .line 25
    const-string v0, "SHA1"

    .line 28
    :cond_1
    return-object v0
.end method

.method private static a(Lcom/bd/android/shared/BDHashing$ALGORITHMS;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 36
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/bd/android/shared/BDHashing;->a(Lcom/bd/android/shared/BDHashing$ALGORITHMS;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 42
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 44
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 45
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 62
    :goto_1
    const-string v0, "digesterror"

    :goto_2
    return-object v0

    .line 48
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 50
    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v4, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_2

    .line 58
    :catch_1
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error file_digest in BDHashing for Alghoritm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static file_md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->MD5:Lcom/bd/android/shared/BDHashing$ALGORITHMS;

    invoke-static {v0, p0}, Lcom/bd/android/shared/BDHashing;->a(Lcom/bd/android/shared/BDHashing$ALGORITHMS;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static file_sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->SHA1:Lcom/bd/android/shared/BDHashing$ALGORITHMS;

    invoke-static {v0, p0}, Lcom/bd/android/shared/BDHashing;->a(Lcom/bd/android/shared/BDHashing$ALGORITHMS;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hash_String(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    move v1, v0

    .line 118
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 119
    shl-int/lit8 v2, v1, 0x5

    sub-int v1, v2, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return v1
.end method

.method public static make_hash(Lcom/bd/android/shared/BDHashing$ALGORITHMS;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 81
    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/bd/android/shared/BDHashing;->a(Lcom/bd/android/shared/BDHashing$ALGORITHMS;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 87
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 88
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz p2, :cond_0

    .line 94
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    const-string v0, ""

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->MD5:Lcom/bd/android/shared/BDHashing$ALGORITHMS;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bd/android/shared/BDHashing;->make_hash(Lcom/bd/android/shared/BDHashing$ALGORITHMS;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
