.class final Lde/gdata/mobilesecurity/activities/filter/v;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/v;->a:Ljava/lang/String;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/filter/v;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 456
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://maps.googleapis.com/maps/api/geocode/json?address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/v;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReverseGeo:url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 463
    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/RestClient;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/activities/filter/RestClient;-><init>(Ljava/lang/String;)V

    .line 466
    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->GET:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/activities/filter/RestClient;->Execute(Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/RestClient;->getResponse()Ljava/lang/String;

    move-result-object v3

    .line 472
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/RestClient;->getResponseCode()I

    .line 474
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 475
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/v;->b:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 476
    if-eqz v3, :cond_3

    .line 478
    const/4 v2, 0x0

    .line 480
    const-string v1, ""

    .line 481
    const-string v0, ""

    .line 485
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 487
    const-string v3, "results"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 488
    const-string v3, "results"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 489
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 490
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 491
    const-string v5, "formatted_address"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 492
    const-string v2, "formatted_address"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    :cond_0
    const-string v5, "geometry"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 495
    const-string v5, "geometry"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 496
    const-string v5, "location"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 497
    const-string v0, "location"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 498
    const-string v1, "lng"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    const-string v3, "lat"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sput-wide v6, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->latitude:D

    .line 502
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sput-wide v6, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->longitude:D

    .line 508
    :cond_1
    const/4 v3, 0x2

    iput v3, v4, Landroid/os/Message;->what:I

    .line 509
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 510
    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->isValidString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 511
    const-string v5, "address"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_1
    const-string v2, "latitude"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v1, "lang"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    :goto_2
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 532
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 513
    :cond_2
    :try_start_2
    const-string v2, "address"

    const-string v5, ""

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 521
    :catch_1
    move-exception v0

    .line 523
    iput v8, v4, Landroid/os/Message;->what:I

    .line 524
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 528
    :cond_3
    iput v8, v4, Landroid/os/Message;->what:I

    goto :goto_2
.end method
