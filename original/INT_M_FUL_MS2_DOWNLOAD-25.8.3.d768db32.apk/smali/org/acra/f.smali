.class final Lorg/acra/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/acra/f;->a:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private declared-synchronized a(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;
    .locals 14

    .prologue
    .line 164
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 165
    const/16 v0, 0x28

    :try_start_0
    new-array v7, v0, [C

    .line 166
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 167
    const/4 v0, 0x1

    .line 169
    new-instance v9, Lorg/acra/collector/CrashReportData;

    invoke-direct {v9}, Lorg/acra/collector/CrashReportData;-><init>()V

    .line 170
    new-instance v10, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v10, p1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move v8, v0

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 173
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 174
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    .line 310
    const/4 v0, 0x2

    if-ne v5, v0, :cond_12

    const/4 v0, 0x4

    if-gt v3, v0, :cond_12

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.08"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_0
    int-to-char v0, v0

    .line 179
    :try_start_1
    array-length v6, v7

    if-ne v1, v6, :cond_1

    .line 180
    array-length v6, v7

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [C

    .line 181
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v7, v11, v6, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v6

    .line 184
    :cond_1
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1a

    .line 185
    const/16 v6, 0x10

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 186
    if-ltz v6, :cond_2

    .line 187
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v6, v4

    .line 188
    add-int/lit8 v4, v3, 0x1

    const/4 v3, 0x4

    if-ge v4, v3, :cond_19

    move v3, v4

    move v4, v6

    .line 189
    goto :goto_0

    .line 191
    :cond_2
    const/4 v5, 0x4

    if-gt v3, v5, :cond_3

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.09"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v5, v4

    move v4, v3

    .line 195
    :goto_1
    const/4 v6, 0x0

    .line 196
    add-int/lit8 v3, v1, 0x1

    int-to-char v11, v5

    aput-char v11, v7, v1

    .line 197
    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x85

    if-eq v0, v1, :cond_4

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 198
    goto :goto_0

    :cond_4
    move v1, v3

    move v3, v6

    .line 201
    :goto_2
    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    .line 202
    const/4 v3, 0x0

    .line 203
    sparse-switch v0, :sswitch_data_0

    :goto_3
    move v13, v0

    move v0, v3

    move v3, v13

    .line 303
    :goto_4
    const/4 v6, 0x0

    .line 304
    const/4 v8, 0x4

    if-ne v0, v8, :cond_5

    .line 306
    const/4 v0, 0x0

    move v2, v1

    .line 308
    :cond_5
    add-int/lit8 v8, v1, 0x1

    aput-char v3, v7, v1

    move v1, v8

    move v3, v4

    move v8, v6

    move v4, v5

    move v5, v0

    goto :goto_0

    .line 205
    :sswitch_0
    const/4 v3, 0x3

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 206
    goto :goto_0

    .line 209
    :sswitch_1
    const/4 v3, 0x5

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 210
    goto/16 :goto_0

    .line 212
    :sswitch_2
    const/16 v0, 0x8

    .line 213
    goto :goto_3

    .line 215
    :sswitch_3
    const/16 v0, 0xc

    .line 216
    goto :goto_3

    .line 218
    :sswitch_4
    const/16 v0, 0xa

    .line 219
    goto :goto_3

    .line 221
    :sswitch_5
    const/16 v0, 0xd

    .line 222
    goto :goto_3

    .line 224
    :sswitch_6
    const/16 v0, 0x9

    .line 225
    goto :goto_3

    .line 227
    :sswitch_7
    const/4 v3, 0x2

    .line 228
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .line 229
    goto/16 :goto_0

    .line 232
    :cond_6
    sparse-switch v0, :sswitch_data_1

    .line 286
    :cond_7
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 287
    const/4 v6, 0x3

    if-ne v3, v6, :cond_8

    .line 288
    const/4 v3, 0x5

    .line 291
    :cond_8
    if-eqz v1, :cond_17

    if-eq v1, v2, :cond_17

    const/4 v6, 0x5

    if-ne v3, v6, :cond_f

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 292
    goto/16 :goto_0

    .line 235
    :sswitch_8
    if-eqz v8, :cond_7

    .line 237
    :cond_9
    invoke-virtual {v10}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 238
    const/4 v6, -0x1

    if-ne v0, v6, :cond_a

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 239
    goto/16 :goto_0

    .line 241
    :cond_a
    int-to-char v0, v0

    .line 244
    const/16 v6, 0xd

    if-eq v0, v6, :cond_17

    const/16 v6, 0xa

    if-eq v0, v6, :cond_17

    const/16 v6, 0x85

    if-ne v0, v6, :cond_9

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 245
    goto/16 :goto_0

    .line 252
    :sswitch_9
    const/4 v0, 0x3

    if-ne v3, v0, :cond_b

    .line 253
    const/4 v3, 0x5

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 254
    goto/16 :goto_0

    .line 259
    :cond_b
    :sswitch_a
    const/4 v3, 0x0

    .line 260
    const/4 v0, 0x1

    .line 261
    if-gtz v1, :cond_c

    if-nez v1, :cond_e

    if-nez v2, :cond_e

    .line 262
    :cond_c
    const/4 v6, -0x1

    if-ne v2, v6, :cond_d

    move v2, v1

    .line 265
    :cond_d
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v1}, Ljava/lang/String;-><init>([CII)V

    .line 266
    const-class v1, Lorg/acra/ReportField;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_e
    const/4 v2, -0x1

    .line 269
    const/4 v1, 0x0

    move v8, v0

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 270
    goto/16 :goto_0

    .line 272
    :sswitch_b
    const/4 v0, 0x4

    if-ne v3, v0, :cond_18

    move v0, v1

    .line 275
    :goto_5
    const/4 v3, 0x1

    move v2, v0

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 276
    goto/16 :goto_0

    .line 279
    :sswitch_c
    const/4 v6, -0x1

    if-ne v2, v6, :cond_7

    .line 280
    const/4 v3, 0x0

    move v2, v1

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 282
    goto/16 :goto_0

    .line 294
    :cond_f
    const/4 v6, -0x1

    if-ne v2, v6, :cond_10

    .line 295
    const/4 v3, 0x4

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 296
    goto/16 :goto_0

    .line 299
    :cond_10
    const/4 v6, 0x5

    if-eq v3, v6, :cond_11

    const/4 v6, 0x3

    if-ne v3, v6, :cond_16

    .line 300
    :cond_11
    const/4 v3, 0x0

    move v13, v0

    move v0, v3

    move v3, v13

    goto/16 :goto_4

    .line 314
    :cond_12
    const/4 v0, -0x1

    if-ne v2, v0, :cond_13

    if-lez v1, :cond_13

    move v2, v1

    .line 317
    :cond_13
    if-ltz v2, :cond_15

    .line 318
    new-instance v3, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v3, v7, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 319
    const-class v0, Lorg/acra/ReportField;

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    .line 320
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 321
    const/4 v2, 0x1

    if-ne v5, v2, :cond_14

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    :cond_14
    invoke-virtual {v9, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_15
    invoke-static {p1}, Lorg/acra/collector/CollectorUtil;->safeClose(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    monitor-exit p0

    return-object v9

    :cond_16
    move v13, v0

    move v0, v3

    move v3, v13

    goto/16 :goto_4

    :cond_17
    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    goto/16 :goto_0

    :cond_18
    move v0, v2

    goto :goto_5

    :cond_19
    move v5, v6

    goto/16 :goto_1

    :cond_1a
    move v13, v3

    move v3, v5

    move v5, v4

    move v4, v13

    goto/16 :goto_2

    .line 203
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
        0x85 -> :sswitch_1
    .end sparse-switch

    .line 232
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
        0x85 -> :sswitch_a
    .end sparse-switch
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x20

    .line 340
    .line 341
    if-nez p3, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_5

    .line 342
    const-string v0, "\\ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const/4 v0, 0x1

    .line 346
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 347
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 348
    packed-switch v2, :pswitch_data_0

    .line 362
    :pswitch_0
    const-string v3, "\\#!=:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    if-eqz p3, :cond_1

    if-ne v2, v5, :cond_1

    .line 363
    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    :cond_1
    if-lt v2, v5, :cond_2

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_2

    .line 366
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :pswitch_1
    const-string v2, "\\t"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 353
    :pswitch_2
    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 356
    :pswitch_3
    const-string v2, "\\f"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 359
    :pswitch_4
    const-string v2, "\\r"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 368
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 369
    const-string v2, "\\u"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 370
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_3

    .line 371
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 373
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 377
    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/io/BufferedInputStream;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 120
    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_2

    .line 132
    :cond_1
    :goto_0
    return v0

    .line 123
    :cond_2
    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    .line 124
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/acra/collector/CrashReportData;
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lorg/acra/f;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 66
    if-nez v1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid crash report fileName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 72
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 73
    invoke-direct {p0, v0}, Lorg/acra/f;->a(Ljava/io/BufferedInputStream;)Z

    move-result v2

    .line 74
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 76
    if-nez v2, :cond_1

    .line 77
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "ISO8859-1"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/acra/f;->a(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 82
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_0
    return-object v0

    .line 79
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Lorg/acra/f;->a(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 82
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method public a(Lorg/acra/collector/CrashReportData;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lorg/acra/f;->a:Landroid/content/Context;

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 99
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0xc8

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v0, "ISO8859_1"

    invoke-direct {v4, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lorg/acra/collector/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    const/4 v6, 0x1

    invoke-direct {p0, v3, v1, v6}, Lorg/acra/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 105
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v3, v0, v1}, Lorg/acra/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 107
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v0

    .line 111
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 115
    return-void
.end method
