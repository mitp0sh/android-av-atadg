.class Lcom/bitdefender/scanner/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[F

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 113
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bitdefender/scanner/j;->a:[F

    .line 114
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "px"

    aput-object v1, v0, v4

    const-string v1, "dip"

    aput-object v1, v0, v5

    const-string v1, "sp"

    aput-object v1, v0, v6

    const-string v1, "pt"

    aput-object v1, v0, v7

    const-string v1, "in"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "mm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/bitdefender/scanner/j;->b:[Ljava/lang/String;

    .line 115
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%"

    aput-object v1, v0, v4

    const-string v1, "%p"

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/bitdefender/scanner/j;->c:[Ljava/lang/String;

    return-void

    .line 113
    nop

    :array_0
    .array-data 4
        0x3b800000    # 0.00390625f
        0x38000001
        0x34000001
        0x30000000
    .end array-data
.end method

.method static a(I)F
    .locals 3

    .prologue
    .line 110
    and-int/lit16 v0, p0, -0x100

    int-to-float v0, v0

    sget-object v1, Lcom/bitdefender/scanner/j;->a:[F

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private static a(Ln/a;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Ln/a;->a(I)I

    move-result v0

    .line 37
    invoke-virtual {p0, p1}, Ln/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v0, "package"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sharedUserId"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Ln/a;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 37

    .prologue
    .line 245
    :try_start_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 246
    const/4 v12, 0x0

    .line 247
    const/4 v11, 0x0

    .line 248
    const/4 v10, 0x0

    .line 249
    const/4 v9, 0x0

    .line 250
    const/4 v8, 0x0

    .line 257
    const/4 v7, 0x0

    .line 260
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 262
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 263
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 265
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 266
    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    .line 267
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 268
    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    .line 271
    new-instance v25, Lorg/json/JSONArray;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONArray;-><init>()V

    .line 272
    new-instance v26, Lorg/json/JSONArray;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONArray;-><init>()V

    .line 273
    new-instance v27, Lorg/json/JSONArray;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONArray;-><init>()V

    .line 274
    new-instance v28, Lorg/json/JSONArray;

    invoke-direct/range {v28 .. v28}, Lorg/json/JSONArray;-><init>()V

    .line 276
    new-instance v29, Lorg/json/JSONArray;

    invoke-direct/range {v29 .. v29}, Lorg/json/JSONArray;-><init>()V

    .line 278
    new-instance v30, Lorg/json/JSONArray;

    invoke-direct/range {v30 .. v30}, Lorg/json/JSONArray;-><init>()V

    .line 280
    new-instance v31, Lorg/json/JSONArray;

    invoke-direct/range {v31 .. v31}, Lorg/json/JSONArray;-><init>()V

    .line 281
    const/4 v3, 0x0

    .line 283
    new-instance v32, Ln/a;

    invoke-direct/range {v32 .. v32}, Ln/a;-><init>()V

    .line 284
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ln/a;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 287
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v14, 0x0

    .line 290
    :try_start_1
    invoke-virtual/range {v32 .. v32}, Ln/a;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-result v13

    .line 298
    :goto_1
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_8

    .line 302
    :try_start_2
    invoke-virtual/range {v32 .. v32}, Ln/a;->next()I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    move-result v13

    .line 313
    :goto_2
    if-nez v14, :cond_1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_1

    .line 315
    const/4 v14, 0x1

    .line 318
    :cond_1
    :try_start_3
    const-string v16, "c"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    const-string v16, "n"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 320
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 1229
    :catch_0
    move-exception v3

    .line 1232
    throw v3

    .line 292
    :catch_1
    move-exception v13

    .line 294
    const/4 v14, 0x1

    .line 295
    const/4 v13, 0x1

    goto :goto_1

    .line 304
    :catch_2
    move-exception v14

    .line 306
    const/4 v14, 0x1

    .line 311
    goto :goto_2

    .line 308
    :catch_3
    move-exception v3

    .line 310
    :try_start_4
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1234
    :catch_4
    move-exception v3

    .line 1237
    const/4 v3, 0x0

    :goto_3
    return-object v3

    .line 323
    :cond_3
    if-eqz v14, :cond_8

    .line 325
    const/4 v3, 0x4

    if-ge v9, v3, :cond_5

    const/4 v3, 0x4

    if-ge v8, v3, :cond_5

    .line 334
    const-string v3, "WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v29

    invoke-static {v0, v3}, Lcom/bitdefender/scanner/j;->a(Lorg/json/JSONArray;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 336
    const-string v3, "WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 339
    :cond_4
    const-string v3, "READ_PHONE_STATE"

    move-object/from16 v0, v29

    invoke-static {v0, v3}, Lcom/bitdefender/scanner/j;->a(Lorg/json/JSONArray;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 341
    const-string v3, "READ_PHONE_STATE"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 345
    :cond_5
    const-string v3, "a"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v3, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v3, "r"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v3, "s"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v3, "a"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v3, "u"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    if-eqz p3, :cond_6

    .line 354
    const-string v3, "usesPermissionsOther"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    :cond_6
    const-string v3, "m"

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v3, "m"

    move-object/from16 v0, v22

    invoke-virtual {v15, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v3, "h"

    move-object/from16 v0, v24

    invoke-virtual {v15, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v3, "l"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    if-eqz p3, :cond_7

    .line 377
    const-string v3, "w"

    move-object/from16 v0, v31

    invoke-virtual {v15, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    move-object v3, v15

    .line 380
    goto/16 :goto_3

    .line 384
    :cond_8
    packed-switch v13, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_0

    .line 392
    :pswitch_2
    invoke-virtual/range {v32 .. v32}, Ln/a;->getName()Ljava/lang/String;

    move-result-object v17

    .line 394
    invoke-virtual/range {v32 .. v32}, Ln/a;->getDepth()I

    move-result v33

    .line 396
    const-string v13, "application"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v13, 0x2

    move/from16 v0, v33

    if-ne v0, v13, :cond_c

    if-nez v10, :cond_c

    .line 398
    const/4 v11, 0x1

    .line 399
    if-eqz p3, :cond_0

    .line 404
    const/4 v13, 0x0

    move v14, v13

    :goto_4
    invoke-virtual/range {v32 .. v32}, Ln/a;->getAttributeCount()I

    move-result v13

    if-eq v14, v13, :cond_c

    .line 406
    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ln/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    .line 407
    const/4 v13, 0x0

    .line 410
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 412
    const-string v19, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 414
    move-object/from16 v0, v32

    invoke-static {v0, v14}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v13

    .line 417
    :cond_9
    const-string v19, "process"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 419
    move-object/from16 v0, v32

    invoke-static {v0, v14}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v16

    .line 420
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 423
    :cond_a
    if-nez v13, :cond_b

    .line 425
    const-string v13, "name"

    const-string v16, "null"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    :goto_5
    const-string v13, "process"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_4

    .line 429
    :cond_b
    const-string v16, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 436
    :cond_c
    const-string v13, "manifest"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    const/4 v13, 0x1

    move/from16 v0, v33

    if-ne v0, v13, :cond_17

    .line 438
    const/16 v19, 0x0

    .line 439
    const/high16 v18, -0x80000000

    .line 440
    const/16 v16, 0x0

    .line 443
    invoke-virtual/range {v32 .. v32}, Ln/a;->getDepth()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ln/a;->getNamespaceCount(I)I

    move-result v13

    .line 444
    invoke-virtual/range {v32 .. v32}, Ln/a;->getDepth()I

    move-result v14

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ln/a;->getNamespaceCount(I)I

    move-result v20

    .line 445
    const/4 v14, 0x0

    move/from16 v36, v13

    move-object v13, v14

    move/from16 v14, v36

    .line 447
    :goto_6
    move/from16 v0, v20

    if-ge v14, v0, :cond_e

    .line 449
    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ln/a;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v34

    .line 451
    if-eqz v34, :cond_d

    const-string v35, "http://schemas.android.com/apk/res/android"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 453
    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ln/a;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v13

    .line 454
    if-eqz v13, :cond_d

    const-string v34, ""

    move-object/from16 v0, v34

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_d

    .line 456
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 460
    :cond_e
    if-eqz v13, :cond_f

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 462
    :cond_f
    const-string v13, "android"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_10
    const/4 v14, 0x0

    .line 467
    const/4 v13, 0x0

    move/from16 v20, v13

    move-object v13, v14

    move/from16 v14, v18

    move/from16 v18, v19

    move-object/from16 v36, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v36

    :goto_7
    invoke-virtual/range {v32 .. v32}, Ln/a;->getAttributeCount()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_71

    .line 469
    if-nez v13, :cond_11

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->a(Ln/a;I)Ljava/lang/String;

    move-result-object v13

    .line 471
    :cond_11
    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ln/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 473
    const-string v34, "versionCode"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-result v34

    if-eqz v34, :cond_12

    .line 479
    :try_start_5
    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    move-result v14

    .line 489
    :goto_8
    :try_start_6
    const-string v34, "c"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    add-int/lit8 v18, v18, 0x1

    .line 493
    :cond_12
    const-string v34, "versionName"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 495
    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v3

    .line 496
    const-string v34, "n"

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    add-int/lit8 v18, v18, 0x1

    .line 500
    :cond_13
    const-string v34, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 502
    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v19

    .line 503
    const-string v16, "p"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    add-int/lit8 v16, v18, 0x1

    move/from16 v18, v16

    move-object/from16 v16, v19

    .line 507
    :cond_14
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    move-object/from16 v36, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v36

    .line 513
    :goto_9
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    if-ne v14, v0, :cond_15

    .line 515
    const/4 v14, 0x0

    .line 516
    const-string v18, "c"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    :cond_15
    if-nez v16, :cond_17

    .line 521
    if-nez v14, :cond_19

    .line 523
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 536
    :cond_16
    :goto_a
    const-string v14, "n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v13}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 540
    :cond_17
    const-string v13, "activity-alias"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    const/4 v13, 0x3

    move/from16 v0, v33

    if-ne v0, v13, :cond_24

    if-nez v10, :cond_24

    .line 543
    if-eqz v11, :cond_0

    .line 548
    if-eqz v7, :cond_1a

    .line 550
    const/4 v12, 0x1

    .line 551
    goto/16 :goto_0

    .line 481
    :catch_5
    move-exception v14

    .line 483
    const/4 v14, 0x0

    .line 488
    goto/16 :goto_8

    .line 485
    :catch_6
    move-exception v14

    .line 487
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 467
    :cond_18
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto/16 :goto_7

    .line 527
    :cond_19
    if-nez v13, :cond_16

    .line 533
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    .line 556
    :cond_1a
    const/16 v18, 0x0

    .line 557
    const/4 v14, 0x0

    .line 558
    const/4 v13, 0x0

    .line 560
    const/16 v16, 0x0

    .line 562
    const/4 v7, 0x0

    move/from16 v36, v7

    move v7, v13

    move-object v13, v14

    move-object/from16 v14, v18

    move/from16 v18, v36

    :goto_b
    invoke-virtual/range {v32 .. v32}, Ln/a;->getAttributeCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1e

    .line 564
    if-nez v16, :cond_1b

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->a(Ln/a;I)Ljava/lang/String;

    move-result-object v16

    .line 566
    :cond_1b
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ln/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 567
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ln/a;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v20

    .line 569
    if-eqz v19, :cond_1c

    .line 571
    const-string v34, "targetActivity"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    if-nez v7, :cond_1c

    .line 573
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1d

    .line 575
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v14

    .line 562
    :cond_1c
    :goto_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 580
    :cond_1d
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v13

    .line 581
    const/4 v7, 0x1

    goto :goto_c

    .line 596
    :cond_1e
    if-nez v7, :cond_70

    .line 598
    const-string v7, "c"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 600
    if-nez v14, :cond_1f

    if-eqz v16, :cond_1f

    move-object/from16 v14, v16

    .line 606
    :cond_1f
    :goto_d
    if-eqz v14, :cond_20

    .line 608
    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 610
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 611
    const-string v13, "name"

    invoke-virtual {v6, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    :cond_20
    :goto_e
    if-eqz v6, :cond_23

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 639
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Malformed file: activity-alias without NAME"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 616
    :cond_21
    const-string v7, "."

    invoke-virtual {v14, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_22

    .line 618
    const-string v7, "name"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_e

    .line 622
    :cond_22
    const-string v7, "name"

    invoke-virtual {v6, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_e

    :cond_23
    move-object/from16 v7, v17

    .line 643
    :cond_24
    const-string v13, "activity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    const/4 v13, 0x3

    move/from16 v0, v33

    if-ne v0, v13, :cond_30

    if-nez v10, :cond_30

    .line 646
    if-eqz v11, :cond_0

    .line 651
    if-eqz v7, :cond_25

    .line 653
    const/4 v12, 0x1

    .line 654
    goto/16 :goto_0

    .line 659
    :cond_25
    const/16 v18, 0x0

    .line 660
    const/4 v14, 0x0

    .line 661
    const/4 v13, 0x0

    .line 663
    const/16 v16, 0x0

    .line 665
    const/4 v7, 0x0

    move/from16 v36, v7

    move v7, v13

    move-object v13, v14

    move-object/from16 v14, v18

    move/from16 v18, v36

    :goto_f
    invoke-virtual/range {v32 .. v32}, Ln/a;->getAttributeCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2a

    .line 667
    if-nez v16, :cond_26

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->a(Ln/a;I)Ljava/lang/String;

    move-result-object v16

    .line 669
    :cond_26
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ln/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 670
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ln/a;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v20

    .line 672
    if-eqz v19, :cond_27

    .line 674
    const-string v34, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_29

    if-nez v7, :cond_29

    .line 676
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_28

    .line 678
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v14

    .line 665
    :cond_27
    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 683
    :cond_28
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v13

    .line 684
    const/4 v7, 0x1

    .line 688
    :cond_29
    if-eqz p3, :cond_27

    .line 690
    const-string v20, "process"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27

    .line 692
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v19

    .line 693
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_10

    .line 699
    :cond_2a
    if-nez v7, :cond_6f

    .line 701
    const-string v7, "c"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 703
    if-nez v14, :cond_2b

    if-eqz v16, :cond_2b

    move-object/from16 v14, v16

    .line 709
    :cond_2b
    :goto_11
    if-eqz v14, :cond_2c

    .line 711
    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 713
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 714
    const-string v13, "name"

    invoke-virtual {v6, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    :cond_2c
    :goto_12
    if-eqz v6, :cond_2f

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 732
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Malformed file: activity without NAME"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 719
    :cond_2d
    const-string v7, "."

    invoke-virtual {v14, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 721
    const-string v7, "name"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    .line 725
    :cond_2e
    const-string v7, "name"

    invoke-virtual {v6, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    :cond_2f
    move-object/from16 v7, v17

    .line 736
    :cond_30
    const-string v13, "service"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3c

    const/4 v13, 0x3

    move/from16 v0, v33

    if-ne v0, v13, :cond_3c

    if-nez v10, :cond_3c

    .line 738
    if-eqz v11, :cond_0

    .line 743
    if-eqz v7, :cond_31

    .line 745
    const/4 v12, 0x1

    .line 746
    goto/16 :goto_0

    .line 751
    :cond_31
    const/16 v18, 0x0

    .line 752
    const/4 v14, 0x0

    .line 753
    const/4 v13, 0x0

    .line 755
    const/16 v16, 0x0

    .line 757
    const/4 v7, 0x0

    move/from16 v36, v7

    move v7, v13

    move-object v13, v14

    move-object/from16 v14, v18

    move/from16 v18, v36

    :goto_13
    invoke-virtual/range {v32 .. v32}, Ln/a;->getAttributeCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_36

    .line 759
    if-nez v16, :cond_32

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->a(Ln/a;I)Ljava/lang/String;

    move-result-object v16

    .line 761
    :cond_32
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ln/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 762
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ln/a;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v20

    .line 764
    if-eqz v19, :cond_33

    .line 766
    const-string v34, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_35

    if-nez v7, :cond_35

    .line 768
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_34

    .line 770
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v14

    .line 757
    :cond_33
    :goto_14
    add-int/lit8 v18, v18, 0x1

    goto :goto_13

    .line 775
    :cond_34
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v13

    .line 776
    const/4 v7, 0x1

    .line 780
    :cond_35
    if-eqz p3, :cond_33

    .line 782
    const-string v20, "process"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_33

    .line 784
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v19

    .line 785
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_14

    .line 791
    :cond_36
    if-nez v7, :cond_6e

    .line 793
    const-string v7, "c"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 795
    if-nez v14, :cond_37

    if-eqz v16, :cond_37

    move-object/from16 v14, v16

    .line 801
    :cond_37
    :goto_15
    if-eqz v14, :cond_38

    .line 803
    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 805
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 806
    const-string v13, "name"

    invoke-virtual {v6, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 822
    :cond_38
    :goto_16
    if-eqz v6, :cond_3b

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 824
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Malformed file: service without NAME"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 811
    :cond_39
    const-string v7, "."

    invoke-virtual {v14, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3a

    .line 813
    const-string v7, "name"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_16

    .line 817
    :cond_3a
    const-string v7, "name"

    invoke-virtual {v6, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_16

    :cond_3b
    move-object/from16 v7, v17

    .line 828
    :cond_3c
    const-string v13, "receiver"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_48

    const/4 v13, 0x3

    move/from16 v0, v33

    if-ne v0, v13, :cond_48

    if-nez v10, :cond_48

    .line 830
    if-eqz v11, :cond_0

    .line 835
    if-eqz v7, :cond_3d

    .line 837
    const/4 v12, 0x1

    .line 838
    goto/16 :goto_0

    .line 843
    :cond_3d
    const/16 v18, 0x0

    .line 844
    const/4 v14, 0x0

    .line 845
    const/4 v13, 0x0

    .line 847
    const/16 v16, 0x0

    .line 849
    const/4 v7, 0x0

    move/from16 v36, v7

    move v7, v13

    move-object v13, v14

    move-object/from16 v14, v18

    move/from16 v18, v36

    :goto_17
    invoke-virtual/range {v32 .. v32}, Ln/a;->getAttributeCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_42

    .line 851
    if-nez v16, :cond_3e

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->a(Ln/a;I)Ljava/lang/String;

    move-result-object v16

    .line 853
    :cond_3e
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ln/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 854
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ln/a;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v20

    .line 856
    if-eqz v19, :cond_3f

    .line 858
    const-string v34, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_41

    if-nez v7, :cond_41

    .line 860
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_40

    .line 862
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v14

    .line 849
    :cond_3f
    :goto_18
    add-int/lit8 v18, v18, 0x1

    goto :goto_17

    .line 867
    :cond_40
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v13

    .line 868
    const/4 v7, 0x1

    .line 872
    :cond_41
    if-eqz p3, :cond_3f

    .line 874
    const-string v20, "process"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3f

    .line 876
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v19

    .line 877
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_18

    .line 883
    :cond_42
    if-nez v7, :cond_6d

    .line 885
    const-string v7, "c"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 887
    if-nez v14, :cond_43

    if-eqz v16, :cond_43

    move-object/from16 v14, v16

    .line 893
    :cond_43
    :goto_19
    if-eqz v14, :cond_44

    .line 895
    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 897
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 898
    const-string v13, "name"

    invoke-virtual {v6, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 914
    :cond_44
    :goto_1a
    if-eqz v6, :cond_47

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_47

    .line 916
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Malformed file: receiver without NAME"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 903
    :cond_45
    const-string v7, "."

    invoke-virtual {v14, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_46

    .line 905
    const-string v7, "name"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1a

    .line 909
    :cond_46
    const-string v7, "name"

    invoke-virtual {v6, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1a

    :cond_47
    move-object/from16 v7, v17

    .line 920
    :cond_48
    const-string v13, "provider"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_54

    const/4 v13, 0x3

    move/from16 v0, v33

    if-ne v0, v13, :cond_54

    if-nez v10, :cond_54

    .line 922
    if-eqz v11, :cond_0

    .line 927
    if-eqz v7, :cond_49

    .line 929
    const/4 v12, 0x1

    .line 930
    goto/16 :goto_0

    .line 935
    :cond_49
    const/16 v18, 0x0

    .line 936
    const/4 v14, 0x0

    .line 937
    const/4 v13, 0x0

    .line 939
    const/16 v16, 0x0

    .line 941
    const/4 v7, 0x0

    move/from16 v36, v7

    move v7, v13

    move-object v13, v14

    move-object/from16 v14, v18

    move/from16 v18, v36

    :goto_1b
    invoke-virtual/range {v32 .. v32}, Ln/a;->getAttributeCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4e

    .line 943
    if-nez v16, :cond_4a

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->a(Ln/a;I)Ljava/lang/String;

    move-result-object v16

    .line 945
    :cond_4a
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ln/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 946
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ln/a;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v20

    .line 948
    if-eqz v19, :cond_4b

    .line 950
    const-string v34, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4d

    if-nez v7, :cond_4d

    .line 952
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4c

    .line 954
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v14

    .line 941
    :cond_4b
    :goto_1c
    add-int/lit8 v18, v18, 0x1

    goto :goto_1b

    .line 959
    :cond_4c
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v13

    .line 960
    const/4 v7, 0x1

    .line 964
    :cond_4d
    if-eqz p3, :cond_4b

    .line 966
    const-string v20, "process"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4b

    .line 968
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v19

    .line 969
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1c

    .line 975
    :cond_4e
    if-nez v7, :cond_6c

    .line 977
    const-string v7, "c"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 979
    if-nez v14, :cond_4f

    if-eqz v16, :cond_4f

    move-object/from16 v14, v16

    .line 985
    :cond_4f
    :goto_1d
    if-eqz v14, :cond_50

    .line 987
    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 989
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 990
    const-string v13, "name"

    invoke-virtual {v6, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1006
    :cond_50
    :goto_1e
    if-eqz v6, :cond_53

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_53

    .line 1008
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Malformed file: provider without NAME"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 995
    :cond_51
    const-string v7, "."

    invoke-virtual {v14, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_52

    .line 997
    const-string v7, "name"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1e

    .line 1001
    :cond_52
    const-string v7, "name"

    invoke-virtual {v6, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1e

    :cond_53
    move-object/from16 v7, v17

    .line 1012
    :cond_54
    const-string v13, "uses-permission"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_59

    const/4 v13, 0x2

    move/from16 v0, v33

    if-ne v0, v13, :cond_59

    .line 1014
    const/16 v16, 0x0

    .line 1015
    const/4 v14, 0x0

    .line 1017
    const/4 v13, 0x0

    move/from16 v36, v13

    move-object v13, v14

    move-object/from16 v14, v16

    move/from16 v16, v36

    :goto_1f
    invoke-virtual/range {v32 .. v32}, Ln/a;->getAttributeCount()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_57

    .line 1019
    if-nez v14, :cond_55

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->a(Ln/a;I)Ljava/lang/String;

    move-result-object v14

    .line 1021
    :cond_55
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ln/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    .line 1022
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ln/a;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v19

    .line 1023
    const-string v20, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_56

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_56

    .line 1025
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v13

    .line 1017
    :goto_20
    add-int/lit8 v16, v16, 0x1

    goto :goto_1f

    .line 1029
    :cond_56
    const-string v18, "p"

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_20

    .line 1033
    :cond_57
    if-nez v13, :cond_58

    if-eqz v14, :cond_58

    move-object v13, v14

    .line 1038
    :cond_58
    if-eqz v13, :cond_59

    .line 1040
    const-string v14, "android.permission."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5c

    .line 1042
    const-string v14, "android.permission."

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1044
    move-object/from16 v0, v29

    invoke-static {v0, v13}, Lcom/bitdefender/scanner/j;->a(Lorg/json/JSONArray;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_59

    .line 1046
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1066
    :cond_59
    :goto_21
    const-string v13, "uses-sdk"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5e

    const/4 v13, 0x2

    move/from16 v0, v33

    if-ne v0, v13, :cond_5e

    .line 1068
    const/4 v13, 0x0

    :goto_22
    invoke-virtual/range {v32 .. v32}, Ln/a;->getAttributeCount()I

    move-result v14

    if-eq v13, v14, :cond_5d

    .line 1070
    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ln/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 1072
    const-string v16, "minSdkVersion"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5a

    .line 1074
    move-object/from16 v0, v32

    invoke-static {v0, v13}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v9

    .line 1077
    :try_start_7
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    move-result v9

    .line 1085
    :cond_5a
    :goto_23
    :try_start_8
    const-string v16, "targetSdkVersion"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5b

    .line 1087
    move-object/from16 v0, v32

    invoke-static {v0, v13}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v14

    .line 1090
    :try_start_9
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    move-result v8

    .line 1068
    :cond_5b
    :goto_24
    add-int/lit8 v13, v13, 0x1

    goto :goto_22

    .line 1055
    :cond_5c
    if-eqz p3, :cond_59

    .line 1057
    :try_start_a
    move-object/from16 v0, v30

    invoke-static {v0, v13}, Lcom/bitdefender/scanner/j;->a(Lorg/json/JSONArray;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_59

    .line 1059
    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_21

    .line 1079
    :catch_7
    move-exception v9

    .line 1081
    const/4 v9, 0x1

    goto :goto_23

    .line 1092
    :catch_8
    move-exception v14

    .line 1094
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ScanSDK - ScanSDFile - getApkInfo: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    goto :goto_24

    .line 1099
    :cond_5d
    if-nez v8, :cond_5e

    move v8, v9

    .line 1105
    :cond_5e
    const-string v13, "action"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x5

    move/from16 v0, v33

    if-ne v0, v13, :cond_0

    .line 1107
    if-eqz p3, :cond_0

    .line 1112
    if-eqz v7, :cond_0

    .line 1117
    if-nez v12, :cond_0

    .line 1122
    const-string v13, "service"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5f

    const-string v13, "receiver"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5f

    const-string v13, "activity"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5f

    const-string v13, "activity-alias"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1124
    :cond_5f
    const/4 v14, 0x0

    .line 1125
    const/4 v13, 0x0

    move/from16 v36, v13

    move-object v13, v14

    move/from16 v14, v36

    :goto_25
    invoke-virtual/range {v32 .. v32}, Ln/a;->getAttributeCount()I

    move-result v16

    move/from16 v0, v16

    if-eq v14, v0, :cond_62

    .line 1127
    if-nez v13, :cond_60

    move-object/from16 v0, v32

    invoke-static {v0, v14}, Lcom/bitdefender/scanner/j;->a(Ln/a;I)Ljava/lang/String;

    move-result-object v13

    .line 1128
    :cond_60
    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ln/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    .line 1129
    const-string v17, "name"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_61

    .line 1131
    move-object/from16 v0, v32

    invoke-static {v0, v14}, Lcom/bitdefender/scanner/j;->b(Ln/a;I)Ljava/lang/String;

    move-result-object v16

    .line 1133
    move-object/from16 v0, v16

    invoke-static {v5, v0}, Lcom/bitdefender/scanner/j;->a(Lorg/json/JSONArray;Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_61

    .line 1135
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1125
    :cond_61
    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    .line 1139
    :cond_62
    if-eqz v13, :cond_0

    invoke-static {v5, v13}, Lcom/bitdefender/scanner/j;->a(Lorg/json/JSONArray;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1141
    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 1150
    :pswitch_3
    invoke-virtual/range {v32 .. v32}, Ln/a;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1152
    const-string v14, "application"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_63

    if-nez v10, :cond_63

    invoke-virtual/range {v32 .. v32}, Ln/a;->getDepth()I

    move-result v14

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_63

    .line 1154
    const/4 v11, 0x0

    .line 1155
    const/4 v10, 0x1

    .line 1158
    :cond_63
    const-string v14, "activity"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_64

    const-string v14, "activity-alias"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_64

    const-string v14, "service"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_64

    const-string v14, "provider"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_64

    const-string v14, "receiver"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_65

    :cond_64
    invoke-virtual/range {v32 .. v32}, Ln/a;->getDepth()I

    move-result v14

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v14, v0, :cond_65

    .line 1160
    if-eqz v12, :cond_65

    .line 1162
    const/4 v12, 0x0

    .line 1163
    goto/16 :goto_0

    .line 1166
    :cond_65
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1168
    if-eqz v6, :cond_6b

    .line 1170
    if-eqz p3, :cond_66

    .line 1172
    const-string v13, "actions"

    invoke-virtual {v6, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1173
    const-string v5, "process"

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1176
    :cond_66
    const-string v4, "activity"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    const-string v4, "activity-alias"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1178
    :cond_67
    const-string v4, "name"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lcom/bitdefender/scanner/j;->a(Lorg/json/JSONArray;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 1180
    const-string v4, "name"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1185
    :cond_68
    const-string v4, "receiver"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1187
    const-string v4, "name"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/bitdefender/scanner/j;->a(Lorg/json/JSONArray;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 1189
    const-string v4, "name"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1194
    :cond_69
    const-string v4, "service"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1196
    const-string v4, "name"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-static {v0, v4}, Lcom/bitdefender/scanner/j;->a(Lorg/json/JSONArray;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 1198
    const-string v4, "name"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1203
    :cond_6a
    const-string v4, "provider"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 1205
    const-string v4, "name"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lcom/bitdefender/scanner/j;->a(Lorg/json/JSONArray;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 1207
    const-string v4, "name"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1212
    :cond_6b
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1213
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1214
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 1216
    const/4 v7, 0x0

    .line 1217
    goto/16 :goto_0

    :cond_6c
    move-object v14, v13

    goto/16 :goto_1d

    :cond_6d
    move-object v14, v13

    goto/16 :goto_19

    :cond_6e
    move-object v14, v13

    goto/16 :goto_15

    :cond_6f
    move-object v14, v13

    goto/16 :goto_11

    :cond_70
    move-object v14, v13

    goto/16 :goto_d

    :cond_71
    move-object/from16 v36, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v36

    goto/16 :goto_9

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lorg/json/JSONArray;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 126
    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 128
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const/4 v0, 0x1

    .line 135
    :cond_0
    :goto_1
    return v0

    .line 126
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    ushr-int/lit8 v0, p0, 0x18

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    const-string v0, "android:"

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static b(Ln/a;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x1f

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 48
    invoke-virtual {p0, p1}, Ln/a;->a(I)I

    move-result v0

    .line 49
    invoke-virtual {p0, p1}, Ln/a;->b(I)I

    move-result v1

    .line 50
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Ln/a;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 54
    :cond_0
    if-ne v0, v3, :cond_1

    .line 56
    const-string v0, "?%s%08X"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/bitdefender/scanner/j;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    if-ne v0, v4, :cond_2

    .line 60
    const-string v0, "@%s%08X"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/bitdefender/scanner/j;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 64
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_3
    const/16 v2, 0x12

    if-ne v0, v2, :cond_5

    .line 72
    if-eqz v1, :cond_4

    const-string v0, "true"

    goto :goto_0

    :cond_4
    const-string v0, "false"

    goto :goto_0

    .line 74
    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/bitdefender/scanner/j;->a(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/bitdefender/scanner/j;->b:[Ljava/lang/String;

    and-int/lit8 v1, v1, 0xf

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_6
    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/bitdefender/scanner/j;->a(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/bitdefender/scanner/j;->c:[Ljava/lang/String;

    and-int/lit8 v1, v1, 0xf

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 82
    :cond_7
    const/16 v2, 0x1c

    if-lt v0, v2, :cond_8

    if-gt v0, v6, :cond_8

    .line 84
    const-string v0, "#%08X"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 86
    :cond_8
    const/16 v2, 0x10

    if-lt v0, v2, :cond_9

    if-gt v0, v6, :cond_9

    .line 88
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 90
    :cond_9
    const-string v2, "<0x%X, type 0x%02X>"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
