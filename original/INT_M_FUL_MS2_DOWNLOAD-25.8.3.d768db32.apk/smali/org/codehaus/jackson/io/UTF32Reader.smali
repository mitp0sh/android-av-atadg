.class public Lorg/codehaus/jackson/io/UTF32Reader;
.super Lorg/codehaus/jackson/io/a;
.source "SourceFile"


# instance fields
.field protected final _bigEndian:Z

.field protected _byteCount:I

.field protected _charCount:I

.field protected final _managedBuffers:Z

.field protected _surrogate:C


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct/range {p0 .. p5}, Lorg/codehaus/jackson/io/a;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    .line 19
    iput-char v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_surrogate:C

    .line 24
    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_charCount:I

    .line 29
    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_byteCount:I

    .line 44
    iput-boolean p6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_bigEndian:Z

    .line 45
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_managedBuffers:Z

    .line 46
    return-void
.end method

.method private a(II)V
    .locals 5

    .prologue
    .line 141
    iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_byteCount:I

    add-int/2addr v0, p1

    .line 142
    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_charCount:I

    .line 144
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", byte #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private a(IILjava/lang/String;)V
    .locals 5

    .prologue
    .line 151
    iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_byteCount:I

    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 152
    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_charCount:I

    add-int/2addr v1, p2

    .line 154
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid UTF-32 character 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", byte #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private a(I)Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 167
    iget v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_byteCount:I

    iget v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    sub-int/2addr v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_byteCount:I

    .line 170
    if-lez p1, :cond_5

    .line 171
    iget v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    if-lez v3, :cond_1

    move v3, v0

    .line 172
    :goto_0
    if-ge v3, p1, :cond_0

    .line 173
    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    iget-object v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    iget v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    add-int/2addr v6, v3

    aget-byte v5, v5, v6

    aput-byte v5, v4, v3

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    .line 177
    :cond_1
    iput p1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    .line 201
    :goto_1
    iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    if-ge v0, v7, :cond_b

    .line 202
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v0, :cond_a

    move v0, v2

    .line 203
    :goto_2
    if-ge v0, v1, :cond_4

    .line 204
    if-gez v0, :cond_3

    .line 205
    iget-boolean v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v3, :cond_2

    .line 206
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->freeBuffers()V

    .line 208
    :cond_2
    iget v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    invoke-direct {p0, v3, v7}, Lorg/codehaus/jackson/io/UTF32Reader;->a(II)V

    .line 211
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->reportStrangeStream()V

    .line 213
    :cond_4
    iget v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    goto :goto_1

    .line 182
    :cond_5
    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    .line 183
    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v3, :cond_7

    move v3, v2

    .line 184
    :goto_3
    if-ge v3, v1, :cond_9

    .line 185
    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    .line 186
    if-gez v3, :cond_8

    .line 187
    iget-boolean v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v1, :cond_6

    .line 188
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->freeBuffers()V

    .line 215
    :cond_6
    :goto_4
    return v0

    .line 183
    :cond_7
    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_3

    .line 193
    :cond_8
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->reportStrangeStream()V

    .line 195
    :cond_9
    iput v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    goto :goto_1

    .line 202
    :cond_a
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    iget v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    iget-object v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    array-length v5, v5

    iget v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_2

    :cond_b
    move v0, v1

    .line 215
    goto :goto_4
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0}, Lorg/codehaus/jackson/io/a;->close()V

    return-void
.end method

.method public bridge synthetic read()I
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lorg/codehaus/jackson/io/a;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 7

    .prologue
    const v6, 0x10ffff

    const/4 v0, -0x1

    .line 59
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    if-nez v1, :cond_1

    move p3, v0

    .line 129
    :cond_0
    :goto_0
    return p3

    .line 62
    :cond_1
    const/4 v1, 0x1

    if-lt p3, v1, :cond_0

    .line 66
    if-ltz p2, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3

    .line 67
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/io/UTF32Reader;->reportBounds([CII)V

    .line 70
    :cond_3
    add-int v3, p3, p2

    .line 74
    iget-char v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_surrogate:C

    if-eqz v1, :cond_6

    .line 75
    add-int/lit8 v2, p2, 0x1

    iget-char v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_surrogate:C

    aput-char v0, p1, p2

    .line 76
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_surrogate:C

    .line 91
    :cond_4
    :goto_1
    if-ge v2, v3, :cond_a

    .line 92
    iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    .line 95
    iget-boolean v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_bigEndian:Z

    if-eqz v1, :cond_7

    .line 96
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    aget-byte v1, v1, v0

    shl-int/lit8 v1, v1, 0x18

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 102
    :goto_2
    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    .line 106
    const v1, 0xffff

    if-le v0, v1, :cond_8

    .line 107
    if-le v0, v6, :cond_5

    .line 108
    sub-int v1, v2, p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(above "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lorg/codehaus/jackson/io/UTF32Reader;->a(IILjava/lang/String;)V

    .line 111
    :cond_5
    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    .line 112
    add-int/lit8 v1, v2, 0x1

    const v4, 0xd800

    shr-int/lit8 v5, v0, 0xa

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p1, v2

    .line 114
    const v2, 0xdc00

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v2

    .line 116
    if-lt v1, v3, :cond_9

    .line 117
    int-to-char v0, v0

    iput-char v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_surrogate:C

    .line 127
    :goto_3
    sub-int p3, v1, p2

    .line 128
    iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_charCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_charCount:I

    goto/16 :goto_0

    .line 82
    :cond_6
    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    sub-int/2addr v1, v2

    .line 83
    const/4 v2, 0x4

    if-ge v1, v2, :cond_b

    .line 84
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF32Reader;->a(I)Z

    move-result v1

    if-nez v1, :cond_b

    move p3, v0

    .line 85
    goto/16 :goto_0

    .line 99
    :cond_7
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v4, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    goto/16 :goto_2

    :cond_8
    move v1, v2

    .line 121
    :cond_9
    add-int/lit8 v2, v1, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v1

    .line 122
    iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    if-lt v0, v1, :cond_4

    move v1, v2

    .line 123
    goto :goto_3

    :cond_a
    move v1, v2

    goto :goto_3

    :cond_b
    move v2, p2

    goto/16 :goto_1
.end method
