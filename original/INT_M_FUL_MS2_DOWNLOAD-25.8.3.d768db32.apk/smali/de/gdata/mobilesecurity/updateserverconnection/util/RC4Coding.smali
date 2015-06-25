.class public Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[I

.field b:[I

.field c:[I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->b:[I

    .line 71
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->c:[I

    .line 73
    return-void

    .line 68
    :array_0
    .array-data 4
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x2b
        0x2f
    .end array-data

    .line 71
    :array_1
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
    .end array-data
.end method

.method private a(II[II)I
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->f:I

    shl-int/2addr v0, p2

    or-int/2addr v0, p1

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->f:I

    .line 215
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    .line 217
    :goto_0
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 218
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->f:I

    iget v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    add-int/lit8 v1, v1, -0x8

    shr-int v1, v0, v1

    .line 219
    add-int/lit8 v0, p4, 0x1

    and-int/lit16 v1, v1, 0xff

    aput v1, p3, p4

    .line 220
    iget v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    move p4, v0

    goto :goto_0

    .line 222
    :cond_0
    return p4
.end method

.method private a(ILde/gdata/mobilesecurity/updateserverconnection/util/f;)I
    .locals 3

    .prologue
    .line 193
    :goto_0
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    if-ge v0, p1, :cond_0

    iget v0, p2, Lde/gdata/mobilesecurity/updateserverconnection/util/f;->b:I

    iget v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->d:I

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->a:[I

    iget v1, p2, Lde/gdata/mobilesecurity/updateserverconnection/util/f;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p2, Lde/gdata/mobilesecurity/updateserverconnection/util/f;->b:I

    aget v0, v0, v1

    .line 195
    iget v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->f:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->f:I

    .line 196
    iget v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->f:I

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->f:I

    .line 197
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    goto :goto_0

    .line 199
    :cond_0
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    if-ge v0, p1, :cond_1

    .line 200
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->f:I

    iget v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    sub-int v1, p1, v1

    shl-int/2addr v0, v1

    .line 201
    iget v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    iput v1, p2, Lde/gdata/mobilesecurity/updateserverconnection/util/f;->a:I

    .line 202
    const/4 v1, 0x0

    iput v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    .line 208
    :goto_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->c:[I

    aget v1, v1, p1

    and-int/2addr v0, v1

    return v0

    .line 204
    :cond_1
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->f:I

    iget v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    sub-int/2addr v1, p1

    shr-int/2addr v0, v1

    .line 205
    iput p1, p2, Lde/gdata/mobilesecurity/updateserverconnection/util/f;->a:I

    .line 206
    iget v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    sub-int/2addr v1, p1

    iput v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    goto :goto_1
.end method


# virtual methods
.method public Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x1e61

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Decode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x6

    const/4 v3, 0x3

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 127
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, ""

    .line 188
    :goto_0
    return-object v0

    .line 131
    :cond_0
    new-array v4, v10, [I

    and-int/lit16 v0, p2, 0xff

    aput v0, v4, v2

    const/4 v0, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    const/4 v0, 0x2

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    aput v0, v4, v3

    const/4 v0, 0x4

    const/16 v1, 0x9f

    aput v1, v4, v0

    const/4 v0, 0x5

    aput v3, v4, v0

    const/16 v0, 0xd3

    aput v0, v4, v9

    const/4 v0, 0x7

    const/16 v1, 0x11

    aput v1, v4, v0

    const/16 v0, 0x8

    const/16 v1, 0x85

    aput v1, v4, v0

    const/16 v0, 0x9

    const/16 v1, 0x6f

    aput v1, v4, v0

    const/16 v0, 0xa

    aput v2, v4, v0

    const/16 v0, 0xb

    const/16 v1, 0x80

    aput v1, v4, v0

    const/16 v0, 0xc

    const/16 v1, 0xad

    aput v1, v4, v0

    const/16 v0, 0xd

    const/16 v1, 0xa9

    aput v1, v4, v0

    const/16 v0, 0xe

    const/16 v1, 0x6e

    aput v1, v4, v0

    const/16 v0, 0xf

    const/16 v1, 0x9b

    aput v1, v4, v0

    .line 134
    const/16 v0, 0x80

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x32

    if-le v1, v3, :cond_1

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 139
    :cond_1
    new-array v5, v0, [I

    move v1, v2

    .line 140
    :goto_1
    if-ge v1, v0, :cond_2

    .line 141
    const/16 v3, 0xea

    aput v3, v5, v1

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_2
    const/16 v1, 0x100

    new-array v6, v1, [I

    move v1, v2

    .line 151
    :goto_2
    const/16 v3, 0x100

    if-ge v1, v3, :cond_3

    .line 152
    const/4 v3, -0x2

    aput v3, v6, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    .line 154
    :goto_3
    const/16 v3, 0x40

    if-ge v1, v3, :cond_4

    .line 155
    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->b:[I

    aget v3, v3, v1

    aput v1, v6, v3

    .line 156
    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->b:[I

    aget v3, v3, v1

    or-int/lit16 v3, v3, 0x80

    aput v1, v6, v3

    .line 157
    const/16 v3, 0x3d

    aput v8, v6, v3

    .line 158
    const/16 v3, 0xbd

    aput v8, v6, v3

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 161
    :cond_4
    iput v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    move v1, v2

    move v3, v2

    .line 166
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 167
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 168
    and-int/lit8 v7, v7, 0x7f

    aget v7, v6, v7

    .line 169
    if-ge v7, v8, :cond_6

    .line 166
    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 171
    :cond_6
    if-ltz v7, :cond_5

    .line 172
    and-int/lit8 v7, v7, 0x3f

    invoke-direct {p0, v7, v9, v5, v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->a(II[II)I

    move-result v1

    goto :goto_5

    .line 175
    :cond_7
    new-instance v3, Lde/gdata/mobilesecurity/updateserverconnection/util/g;

    invoke-direct {v3, p0, v4, v10}, Lde/gdata/mobilesecurity/updateserverconnection/util/g;-><init>(Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;[II)V

    .line 176
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v5, v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a([II)V

    .line 179
    const-string v1, ""

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    :goto_6
    aget v3, v5, v2

    if-eqz v3, :cond_8

    if-ge v2, v0, :cond_8

    .line 183
    aget v3, v5, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 187
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public Encode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 79
    new-array v2, v6, [I

    and-int/lit16 v0, p2, 0xff

    aput v0, v2, v1

    const/4 v0, 0x1

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    const/4 v0, 0x2

    shr-int/lit8 v3, p2, 0x10

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    aput v0, v2, v4

    const/4 v0, 0x4

    const/16 v3, 0x9f

    aput v3, v2, v0

    const/4 v0, 0x5

    aput v4, v2, v0

    const/16 v0, 0xd3

    aput v0, v2, v5

    const/4 v0, 0x7

    const/16 v3, 0x11

    aput v3, v2, v0

    const/16 v0, 0x8

    const/16 v3, 0x85

    aput v3, v2, v0

    const/16 v0, 0x9

    const/16 v3, 0x6f

    aput v3, v2, v0

    const/16 v0, 0xa

    aput v1, v2, v0

    const/16 v0, 0xb

    const/16 v3, 0x80

    aput v3, v2, v0

    const/16 v0, 0xc

    const/16 v3, 0xad

    aput v3, v2, v0

    const/16 v0, 0xd

    const/16 v3, 0xa9

    aput v3, v2, v0

    const/16 v0, 0xe

    const/16 v3, 0x6e

    aput v3, v2, v0

    const/16 v0, 0xf

    const/16 v3, 0x9b

    aput v3, v2, v0

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->d:I

    .line 83
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->a:[I

    move v0, v1

    .line 84
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 85
    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->a:[I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput v4, v3, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->a:[I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    aput v1, v0, v3

    .line 89
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;

    invoke-direct {v0, p0, v2, v6}, Lde/gdata/mobilesecurity/updateserverconnection/util/g;-><init>(Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;[II)V

    .line 90
    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->a:[I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a([II)V

    .line 92
    const-string v0, ""

    .line 94
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/util/f;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/f;-><init>(Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;Lde/gdata/mobilesecurity/updateserverconnection/util/e;)V

    .line 95
    iput v5, v2, Lde/gdata/mobilesecurity/updateserverconnection/util/f;->a:I

    .line 99
    iput v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->e:I

    .line 100
    iget v0, v2, Lde/gdata/mobilesecurity/updateserverconnection/util/f;->a:I

    invoke-direct {p0, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->a(ILde/gdata/mobilesecurity/updateserverconnection/util/f;)I

    move-result v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    :goto_1
    iget v3, v2, Lde/gdata/mobilesecurity/updateserverconnection/util/f;->a:I

    if-lez v3, :cond_1

    .line 103
    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->b:[I

    aget v0, v3, v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    iget v0, v2, Lde/gdata/mobilesecurity/updateserverconnection/util/f;->a:I

    invoke-direct {p0, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->a(ILde/gdata/mobilesecurity/updateserverconnection/util/f;)I

    move-result v0

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 109
    :goto_2
    rem-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 110
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    return-object v0
.end method
