.class Lcom/bd/android/shared/n;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/bd/android/shared/s;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x17a17a92e35efac4L


# instance fields
.field final synthetic a:Lcom/bd/android/shared/LicenseResponseParser;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/bd/android/shared/LicenseResponseParser;)V
    .locals 1

    .prologue
    .line 215
    iput-object p1, p0, Lcom/bd/android/shared/n;->a:Lcom/bd/android/shared/LicenseResponseParser;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 222
    const/16 v0, 0xc8

    iput v0, p0, Lcom/bd/android/shared/n;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bd/android/shared/LicenseResponseParser;Lcom/bd/android/shared/m;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/bd/android/shared/n;-><init>(Lcom/bd/android/shared/LicenseResponseParser;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;JJ)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    const/16 v3, -0xca

    .line 391
    :try_start_0
    const-string v2, "interval"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    const/16 v2, -0xca

    iput v2, p0, Lcom/bd/android/shared/n;->b:I

    .line 405
    :goto_0
    return-wide v0

    .line 397
    :cond_0
    const-string v2, "interval"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 398
    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    add-long/2addr v0, p2

    .line 399
    sub-long/2addr v0, p4

    goto :goto_0

    .line 401
    :catch_0
    move-exception v2

    .line 403
    iput v3, p0, Lcom/bd/android/shared/n;->b:I

    goto :goto_0
.end method

.method private a(Lcom/bd/android/shared/s;)Lcom/bd/android/shared/o;
    .locals 4

    .prologue
    .line 343
    iget-object v1, p1, Lcom/bd/android/shared/s;->l:Lorg/json/JSONArray;

    .line 345
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 347
    sget-object v0, Lcom/bd/android/shared/o;->c:Lcom/bd/android/shared/o;

    .line 384
    :goto_0
    return-object v0

    .line 350
    :cond_0
    iget-object v0, p1, Lcom/bd/android/shared/s;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 354
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 356
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 358
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 360
    const/16 v0, -0xca

    iput v0, p0, Lcom/bd/android/shared/n;->b:I

    .line 361
    sget-object v0, Lcom/bd/android/shared/o;->c:Lcom/bd/android/shared/o;

    goto :goto_0

    .line 364
    :cond_1
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 365
    iget-object v3, p1, Lcom/bd/android/shared/s;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    :catch_0
    move-exception v0

    .line 370
    sget-object v0, Lcom/bd/android/shared/o;->c:Lcom/bd/android/shared/o;

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p1, Lcom/bd/android/shared/s;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/bd/android/shared/n;->a:Lcom/bd/android/shared/LicenseResponseParser;

    invoke-static {v1}, Lcom/bd/android/shared/LicenseResponseParser;->a(Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    sget-object v0, Lcom/bd/android/shared/o;->b:Lcom/bd/android/shared/o;

    goto :goto_0

    .line 379
    :cond_3
    iget-object v0, p1, Lcom/bd/android/shared/s;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/bd/android/shared/n;->a:Lcom/bd/android/shared/LicenseResponseParser;

    invoke-static {v1}, Lcom/bd/android/shared/LicenseResponseParser;->b(Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    sget-object v0, Lcom/bd/android/shared/o;->a:Lcom/bd/android/shared/o;

    goto :goto_0

    .line 384
    :cond_4
    sget-object v0, Lcom/bd/android/shared/o;->c:Lcom/bd/android/shared/o;

    goto :goto_0
.end method

.method private a(Lcom/bd/android/shared/s;I)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 412
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/bd/android/shared/s;->l:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 414
    iget-object v0, p1, Lcom/bd/android/shared/s;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 416
    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 421
    :cond_1
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 423
    const/16 v0, -0xca

    iput v0, p0, Lcom/bd/android/shared/n;->b:I

    goto :goto_1

    .line 451
    :catch_0
    move-exception v0

    .line 453
    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 427
    :cond_3
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 429
    const/16 v0, -0xca

    iput v0, p0, Lcom/bd/android/shared/n;->b:I

    goto :goto_1

    .line 433
    :cond_4
    const-string v2, "interval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 435
    const/16 v0, -0xca

    iput v0, p0, Lcom/bd/android/shared/n;->b:I

    goto :goto_1

    .line 439
    :cond_5
    const-string v2, "first_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 441
    const/16 v0, -0xca

    iput v0, p0, Lcom/bd/android/shared/n;->b:I

    goto :goto_1

    .line 445
    :cond_6
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, p2, :cond_0

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bd/android/shared/s;)Lcom/bd/android/shared/s;
    .locals 6

    .prologue
    .line 227
    .line 229
    invoke-direct {p0, p2}, Lcom/bd/android/shared/n;->a(Lcom/bd/android/shared/s;)Lcom/bd/android/shared/o;

    move-result-object v0

    .line 233
    sget-object v1, Lcom/bd/android/shared/o;->c:Lcom/bd/android/shared/o;

    if-ne v1, v0, :cond_0

    .line 235
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bd/android/shared/s;

    .line 255
    :goto_0
    return-object v0

    .line 237
    :cond_0
    sget-object v1, Lcom/bd/android/shared/o;->b:Lcom/bd/android/shared/o;

    if-ne v1, v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/bd/android/shared/n;->a:Lcom/bd/android/shared/LicenseResponseParser;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseResponseParser;->a(Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/bd/android/shared/n;->a(Lcom/bd/android/shared/s;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 246
    :goto_1
    if-eqz v1, :cond_1

    const/16 v0, -0xca

    iget v2, p0, Lcom/bd/android/shared/n;->b:I

    if-ne v0, v2, :cond_3

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/bd/android/shared/n;->a:Lcom/bd/android/shared/LicenseResponseParser;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseResponseParser;->b(Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/bd/android/shared/n;->a(Lcom/bd/android/shared/s;I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    .line 251
    :cond_3
    iget-wide v2, p2, Lcom/bd/android/shared/s;->e:J

    iget-wide v4, p2, Lcom/bd/android/shared/s;->f:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bd/android/shared/n;->a(Lorg/json/JSONObject;JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/bd/android/shared/s;->g:J

    .line 253
    iget v0, p0, Lcom/bd/android/shared/n;->b:I

    iput v0, p2, Lcom/bd/android/shared/s;->n:I

    .line 255
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bd/android/shared/s;

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 10

    .prologue
    .line 278
    const/4 v4, 0x0

    .line 279
    const-wide/high16 v2, -0x8000000000000000L

    .line 281
    invoke-virtual {p0}, Lcom/bd/android/shared/n;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    invoke-virtual {p0, v0}, Lcom/bd/android/shared/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bd/android/shared/s;

    .line 285
    iget-object v6, v1, Lcom/bd/android/shared/s;->k:Ljava/util/List;

    iget-object v7, p0, Lcom/bd/android/shared/n;->a:Lcom/bd/android/shared/LicenseResponseParser;

    invoke-static {v7}, Lcom/bd/android/shared/LicenseResponseParser;->b(Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/bd/android/shared/s;->k:Ljava/util/List;

    iget-object v7, p0, Lcom/bd/android/shared/n;->a:Lcom/bd/android/shared/LicenseResponseParser;

    invoke-static {v7}, Lcom/bd/android/shared/LicenseResponseParser;->a(Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-wide v6, v1, Lcom/bd/android/shared/s;->g:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    .line 288
    iget-wide v2, v1, Lcom/bd/android/shared/s;->g:J

    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    :goto_1
    move-object v4, v2

    move-wide v2, v0

    .line 290
    goto :goto_0

    .line 292
    :cond_0
    return-object v4

    :cond_1
    move-wide v0, v2

    move-object v2, v4

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 10

    .prologue
    .line 297
    const/4 v4, 0x0

    .line 298
    const-wide/high16 v2, -0x8000000000000000L

    .line 300
    invoke-virtual {p0}, Lcom/bd/android/shared/n;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    invoke-virtual {p0, v0}, Lcom/bd/android/shared/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bd/android/shared/s;

    .line 304
    iget-object v6, v1, Lcom/bd/android/shared/s;->k:Ljava/util/List;

    iget-object v7, p0, Lcom/bd/android/shared/n;->a:Lcom/bd/android/shared/LicenseResponseParser;

    invoke-static {v7}, Lcom/bd/android/shared/LicenseResponseParser;->a(Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, v1, Lcom/bd/android/shared/s;->g:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    .line 307
    iget-wide v2, v1, Lcom/bd/android/shared/s;->g:J

    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    :goto_1
    move-object v4, v2

    move-wide v2, v0

    .line 309
    goto :goto_0

    .line 310
    :cond_0
    return-object v4

    :cond_1
    move-wide v0, v2

    move-object v2, v4

    goto :goto_1
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/bd/android/shared/n;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bd/android/shared/s;

    .line 325
    iget-object v2, v0, Lcom/bd/android/shared/s;->k:Ljava/util/List;

    iget-object v3, p0, Lcom/bd/android/shared/n;->a:Lcom/bd/android/shared/LicenseResponseParser;

    invoke-static {v3}, Lcom/bd/android/shared/LicenseResponseParser;->b(Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/bd/android/shared/s;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/bd/android/shared/n;->a:Lcom/bd/android/shared/LicenseResponseParser;

    invoke-static {v2}, Lcom/bd/android/shared/LicenseResponseParser;->a(Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/bd/android/shared/n;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bd/android/shared/s;

    .line 335
    iget-object v0, v0, Lcom/bd/android/shared/s;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/bd/android/shared/n;->a:Lcom/bd/android/shared/LicenseResponseParser;

    invoke-static {v2}, Lcom/bd/android/shared/LicenseResponseParser;->a(Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/bd/android/shared/s;

    invoke-virtual {p0, p1, p2}, Lcom/bd/android/shared/n;->a(Ljava/lang/String;Lcom/bd/android/shared/s;)Lcom/bd/android/shared/s;

    move-result-object v0

    return-object v0
.end method
