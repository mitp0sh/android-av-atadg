.class public Lorg/codehaus/jackson/format/InputAccessor$Std;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/format/InputAccessor;


# instance fields
.field protected final _buffer:[B

.field protected _bufferedAmount:I

.field protected final _in:Ljava/io/InputStream;

.field protected _ptr:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_in:Ljava/io/InputStream;

    .line 68
    iput-object p2, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    .line 70
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_in:Ljava/io/InputStream;

    .line 79
    iput-object p1, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    .line 81
    array-length v0, p1

    iput v0, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    .line 82
    return-void
.end method


# virtual methods
.method public createMatcher(Lorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/format/MatchStrength;)Lorg/codehaus/jackson/format/DataFormatMatcher;
    .locals 6

    .prologue
    .line 127
    new-instance v0, Lorg/codehaus/jackson/format/DataFormatMatcher;

    iget-object v1, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_in:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    iget v3, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/format/DataFormatMatcher;-><init>(Ljava/io/InputStream;[BILorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/format/MatchStrength;)V

    return-object v0
.end method

.method public hasMoreBytes()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 87
    iget v2, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    iget v3, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    if-ge v2, v3, :cond_0

    .line 99
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    array-length v2, v2

    iget v3, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    sub-int/2addr v2, v3

    .line 91
    if-ge v2, v0, :cond_1

    move v0, v1

    .line 92
    goto :goto_0

    .line 94
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    iget v5, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 95
    if-gtz v2, :cond_2

    move v0, v1

    .line 96
    goto :goto_0

    .line 98
    :cond_2
    iget v1, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    goto :goto_0
.end method

.method public nextByte()B
    .locals 3

    .prologue
    .line 106
    iget v0, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    iget v1, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    neg-int v1, v1

    if-le v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/codehaus/jackson/format/InputAccessor$Std;->hasMoreBytes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes (max buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    iget v1, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    .line 117
    return-void
.end method
