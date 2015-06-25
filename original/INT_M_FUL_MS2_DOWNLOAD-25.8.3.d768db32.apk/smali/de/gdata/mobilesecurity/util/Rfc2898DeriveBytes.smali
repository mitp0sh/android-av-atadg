.class public Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljavax/crypto/Mac;

.field private b:[B

.field private c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0}, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;-><init>(Ljava/lang/String;[BI)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 1

    .prologue
    .line 57
    const-string v0, "UTF8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;-><init>([B[BI)V

    .line 58
    return-void
.end method

.method public constructor <init>([B[BI)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->d:[B

    .line 20
    iput v1, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->e:I

    .line 21
    iput v1, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->f:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->g:I

    .line 34
    if-eqz p2, :cond_0

    array-length v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 35
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Salt must be 8 bytes or more."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    if-nez p1, :cond_2

    .line 38
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Password cannot be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    iput-object p2, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->b:[B

    .line 41
    iput p3, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->c:I

    .line 42
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->a:Ljavax/crypto/Mac;

    .line 43
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->a:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA1"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 44
    return-void
.end method

.method private a()[B
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->a:Ljavax/crypto/Mac;

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->b:[B

    iget-object v2, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->b:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v4, v2}, Ljavax/crypto/Mac;->update([BII)V

    .line 112
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->a:Ljavax/crypto/Mac;

    iget v1, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->g:I

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->a(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 114
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->a:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->reset()V

    .line 116
    const/4 v0, 0x2

    move-object v1, v2

    :goto_0
    iget v3, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->c:I

    if-gt v0, v3, :cond_1

    .line 117
    iget-object v3, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->a:Ljavax/crypto/Mac;

    invoke-virtual {v3, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    move v3, v4

    .line 118
    :goto_1
    const/16 v5, 0x14

    if-ge v3, v5, :cond_0

    .line 119
    aget-byte v5, v2, v3

    aget-byte v6, v1, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget v0, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 123
    const/high16 v0, -0x80000000

    iput v0, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->g:I

    .line 128
    :goto_2
    return-object v2

    .line 125
    :cond_2
    iget v0, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->g:I

    goto :goto_2
.end method

.method private static a(I)[B
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public getBytes(I)[B
    .locals 6

    .prologue
    const/16 v5, 0x14

    const/4 v2, 0x0

    .line 79
    new-array v0, p1, [B

    .line 81
    iget v1, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->f:I

    iget v3, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->e:I

    sub-int/2addr v1, v3

    .line 83
    if-lez v1, :cond_3

    .line 84
    if-ge p1, v1, :cond_1

    .line 85
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->d:[B

    iget v3, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->e:I

    invoke-static {v1, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget v1, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->e:I

    add-int/2addr v1, p1

    iput v1, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->e:I

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    iget-object v3, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->d:[B

    iget v4, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->e:I

    invoke-static {v3, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iput v2, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->f:I

    iput v2, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->e:I

    .line 91
    add-int/2addr v1, v2

    .line 94
    :goto_1
    if-ge v1, p1, :cond_0

    .line 95
    sub-int v3, p1, v1

    .line 96
    invoke-direct {p0}, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->a()[B

    move-result-object v4

    iput-object v4, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->d:[B

    .line 97
    if-le v3, v5, :cond_2

    .line 98
    iget-object v3, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->d:[B

    invoke-static {v3, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    add-int/lit8 v1, v1, 0x14

    goto :goto_1

    .line 101
    :cond_2
    iget-object v4, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->d:[B

    invoke-static {v4, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iput v3, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->e:I

    .line 103
    iput v5, p0, Lde/gdata/mobilesecurity/util/Rfc2898DeriveBytes;->f:I

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
