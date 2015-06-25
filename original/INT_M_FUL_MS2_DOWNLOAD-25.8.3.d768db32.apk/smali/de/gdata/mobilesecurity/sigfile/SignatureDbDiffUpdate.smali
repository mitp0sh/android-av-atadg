.class public Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILE_SUFFIX:Ljava/lang/String; = ".dupd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private a(I[BII)V
    .locals 2

    .prologue
    .line 300
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 301
    rem-int/lit16 v0, p1, 0x100

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 302
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    rem-int/lit16 v1, v1, 0x100

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 304
    :cond_0
    const/4 v0, 0x4

    if-ne p4, v0, :cond_1

    .line 305
    rem-int/lit16 v0, p1, 0x100

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 306
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    rem-int/lit16 v1, v1, 0x100

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 307
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    rem-int/lit16 v1, v1, 0x100

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 308
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    rem-int/lit16 v1, v1, 0x100

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 310
    :cond_1
    return-void
.end method


# virtual methods
.method public copySigFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;I)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/math/BigInteger;",
            "Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/math/BigInteger;",
            "Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 226
    const/4 v6, 0x0

    .line 227
    const/4 v5, 0x0

    .line 228
    const/4 v4, 0x0

    .line 229
    const/4 v3, 0x0

    .line 232
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 233
    :try_start_1
    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 235
    const/4 v7, 0x0

    .line 236
    :try_start_2
    move/from16 v0, p6

    new-array v10, v0, [B

    .line 238
    :goto_0
    invoke-virtual {v4, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    move/from16 v0, p6

    if-ne v2, v0, :cond_5

    .line 239
    new-instance v11, Ljava/math/BigInteger;

    const/4 v2, 0x4

    move/from16 v0, p6

    invoke-static {v10, v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 241
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;

    .line 243
    iget-object v8, v2, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    array-length v12, v8

    .line 244
    const/4 v8, 0x1

    .line 245
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v12, :cond_7

    .line 246
    iget-object v13, v2, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    aget-byte v13, v13, v9

    add-int/lit8 v14, v9, 0x4

    aget-byte v14, v10, v14

    if-eq v13, v14, :cond_0

    .line 247
    const/4 v2, 0x0

    .line 251
    :goto_2
    if-eqz v2, :cond_1

    .line 252
    const/4 v2, 0x4

    :goto_3
    move/from16 v0, p6

    if-ge v2, v0, :cond_1

    .line 253
    const/4 v8, 0x0

    aput-byte v8, v10, v2

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 245
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 257
    :cond_1
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 258
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;

    .line 259
    iget-object v8, v2, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    array-length v8, v8

    add-int/lit8 v11, v8, -0x4

    .line 260
    const/4 v8, 0x1

    .line 261
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v11, :cond_2

    .line 262
    iget-object v12, v2, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    add-int/lit8 v13, v9, 0x4

    aget-byte v12, v12, v13

    add-int/lit8 v13, v9, 0x4

    aget-byte v13, v10, v13

    if-eq v12, v13, :cond_3

    .line 263
    const/4 v8, 0x0

    .line 267
    :cond_2
    if-eqz v8, :cond_4

    .line 268
    add-int/lit8 v7, v7, 0x1

    .line 269
    const/4 v8, 0x0

    :goto_5
    const/4 v9, 0x4

    if-ge v8, v9, :cond_4

    .line 270
    iget-object v9, v2, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    aget-byte v9, v9, v8

    aput-byte v9, v10, v8

    .line 269
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 261
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    move v2, v7

    .line 274
    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 275
    add-int v3, v3, p6

    move v7, v2

    .line 276
    goto/16 :goto_0

    .line 278
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Changed sig for "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " entries"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 279
    const/4 v2, 0x1

    move v15, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v2

    move v2, v15

    .line 283
    :goto_6
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/io/InputStream;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    const/4 v7, 0x0

    aput-object v7, v6, v3

    invoke-static {v6}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V

    .line 284
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/OutputStream;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput-object v6, v3, v4

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/OutputStream;)V

    .line 286
    if-nez v5, :cond_6

    .line 287
    const/4 v2, -0x1

    .line 289
    :cond_6
    return v2

    .line 280
    :catch_0
    move-exception v2

    move-object v15, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v15

    .line 281
    :goto_7
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move v5, v6

    goto :goto_6

    .line 280
    :catch_1
    move-exception v2

    move-object v15, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v15

    goto :goto_7

    :catch_2
    move-exception v2

    move-object v15, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v15

    goto :goto_7

    :cond_7
    move v2, v8

    goto/16 :goto_2
.end method

.method public writeNamesSig(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lde/gdata/mobilesecurity/sigfile/MalwareType;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 87
    const/4 v1, 0x0

    .line 89
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".dupd"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 91
    :try_start_1
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/sigfile/MalwareType;

    .line 93
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sigfile/MalwareType;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 94
    array-length v6, v5

    add-int/lit8 v6, v6, 0x9

    .line 96
    new-array v7, v6, [B

    .line 97
    const/4 v8, 0x0

    add-int/lit8 v9, v6, -0x2

    rem-int/lit16 v9, v9, 0x100

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 98
    const/4 v8, 0x1

    add-int/lit8 v6, v6, -0x2

    div-int/lit16 v6, v6, 0x100

    int-to-byte v6, v6

    aput-byte v6, v7, v8

    .line 99
    const/4 v6, 0x2

    const/4 v8, 0x0

    aput-byte v8, v7, v6

    .line 100
    const/4 v6, 0x3

    const/4 v8, 0x4

    invoke-direct {p0, v3, v7, v6, v8}, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;->a(I[BII)V

    .line 101
    const/4 v3, 0x7

    array-length v6, v5

    int-to-byte v6, v6

    aput-byte v6, v7, v3

    .line 102
    const/4 v3, 0x0

    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 103
    add-int/lit8 v6, v3, 0x8

    aget-byte v8, v5, v3

    aput-byte v8, v7, v6

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104
    :cond_0
    array-length v3, v5

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sigfile/MalwareType;->getCategory()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v7, v3

    .line 105
    const/4 v0, 0x0

    array-length v3, v7

    invoke-virtual {v1, v7, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 125
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move v1, v2

    .line 127
    :goto_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/OutputStream;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput-object v3, v2, v0

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/OutputStream;)V

    .line 129
    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".dupd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {p1, v0, v2}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyPrivateFileToExternalStoradeFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    :cond_1
    return v1

    .line 108
    :cond_2
    :try_start_2
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "UTF8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 110
    array-length v0, v5

    add-int/lit8 v0, v0, 0x8

    .line 112
    new-array v6, v0, [B

    .line 113
    const/4 v7, 0x0

    add-int/lit8 v8, v0, -0x2

    rem-int/lit16 v8, v8, 0x100

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 114
    const/4 v7, 0x1

    add-int/lit8 v0, v0, -0x2

    div-int/lit16 v0, v0, 0x100

    int-to-byte v0, v0

    aput-byte v0, v6, v7

    .line 115
    const/4 v0, 0x2

    const/4 v7, 0x1

    aput-byte v7, v6, v0

    .line 116
    const/4 v0, 0x3

    const/4 v7, 0x4

    invoke-direct {p0, v4, v6, v0, v7}, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;->a(I[BII)V

    .line 117
    const/4 v0, 0x7

    array-length v4, v5

    int-to-byte v4, v4

    aput-byte v4, v6, v0

    .line 118
    const/4 v0, 0x0

    :goto_5
    array-length v4, v5

    if-ge v0, v4, :cond_3

    .line 119
    add-int/lit8 v4, v0, 0x8

    aget-byte v7, v5, v0

    aput-byte v7, v6, v4

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 120
    :cond_3
    const/4 v0, 0x0

    array-length v4, v6

    invoke-virtual {v1, v6, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 123
    :cond_4
    const/4 v0, 0x1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    .line 126
    goto/16 :goto_3

    .line 124
    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_2
.end method

.method public writeSig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/math/BigInteger;",
            "Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/math/BigInteger;",
            "Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dupd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyPrivateFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 151
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p6}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dupd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyPrivateFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 167
    :goto_0
    const/4 v1, -0x1

    if-eq v7, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    :cond_0
    const/4 v1, 0x0

    .line 211
    :cond_1
    :goto_1
    return v1

    .line 156
    :cond_2
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 157
    invoke-virtual {p4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;

    .line 158
    iget-object v0, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    array-length v0, v0

    add-int/lit8 v6, v0, 0x4

    .line 163
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dupd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;->copySigFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;I)I

    move-result v0

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;

    .line 161
    iget-object v0, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    array-length v6, v0

    goto :goto_2

    .line 170
    :cond_4
    const/4 v2, 0x0

    .line 171
    const/4 v1, 0x0

    .line 173
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dupd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x8000

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    :try_start_1
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;

    .line 175
    iget-object v5, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 176
    iput v3, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->a:I

    .line 177
    iget-object v0, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    array-length v0, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    add-int/2addr v0, v3

    move v3, v0

    .line 178
    goto :goto_3

    .line 179
    :cond_5
    const/4 v0, 0x1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 183
    :goto_4
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/OutputStream;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput-object v3, v2, v0

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/OutputStream;)V

    .line 185
    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto/16 :goto_1

    .line 180
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 181
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move v1, v2

    goto :goto_4

    .line 188
    :cond_6
    const/4 v2, 0x0

    .line 189
    const/4 v1, 0x0

    .line 190
    const/4 v0, 0x4

    new-array v3, v0, [B

    .line 192
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".dupd"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v4, 0x8000

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 193
    :try_start_3
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;

    .line 194
    iget-object v5, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->hash:[B

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 195
    iget v0, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-direct {p0, v0, v3, v5, v6}, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;->a(I[BII)V

    .line 196
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 199
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 200
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move v1, v2

    .line 202
    :goto_8
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/OutputStream;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput-object v3, v2, v0

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/OutputStream;)V

    .line 204
    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".dupd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {p1, v0, v2}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyPrivateFileToExternalStoradeFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".dupd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {p1, v0, v2}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyPrivateFileToExternalStoradeFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 198
    :cond_7
    const/4 v0, 0x1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 201
    goto :goto_8

    .line 199
    :catch_2
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_7

    .line 180
    :catch_3
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_5
.end method

.method public writeVersionSig(Landroid/content/Context;Ljava/lang/String;ILjava/util/Date;)Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    :cond_0
    move v1, v3

    .line 72
    :cond_1
    :goto_0
    return v1

    .line 48
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dupd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    const/16 v1, 0x8

    :try_start_1
    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 52
    const/16 v1, 0x13

    .line 53
    new-array v5, v1, [B

    .line 54
    const/4 v1, 0x0

    const/16 v6, 0x11

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 55
    const/4 v1, 0x1

    int-to-byte v6, v3

    aput-byte v6, v5, v1

    .line 56
    const/4 v1, 0x2

    const/4 v6, 0x1

    aput-byte v6, v5, v1

    .line 57
    const/4 v1, 0x3

    const/4 v6, 0x4

    invoke-direct {p0, p3, v5, v1, v6}, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;->a(I[BII)V

    .line 58
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmm"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move v1, v3

    .line 59
    :goto_1
    const/16 v7, 0xc

    if-ge v1, v7, :cond_3

    .line 60
    add-int/lit8 v7, v1, 0x7

    aget-byte v8, v6, v1

    aput-byte v8, v5, v7

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    :cond_3
    const/4 v1, 0x0

    array-length v6, v5

    invoke-virtual {v0, v5, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 66
    :goto_2
    new-array v5, v9, [Ljava/io/OutputStream;

    aput-object v0, v5, v3

    aput-object v4, v5, v2

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/OutputStream;)V

    .line 68
    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".dupd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {p1, v0, v2}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyPrivateFileToExternalStoradeFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 63
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v4

    .line 64
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move v1, v3

    goto :goto_2

    .line 63
    :catch_1
    move-exception v1

    goto :goto_3
.end method
