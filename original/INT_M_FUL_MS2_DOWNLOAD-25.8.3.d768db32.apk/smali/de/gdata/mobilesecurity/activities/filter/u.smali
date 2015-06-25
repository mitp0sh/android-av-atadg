.class final Lde/gdata/mobilesecurity/activities/filter/u;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:D

.field final synthetic b:D

.field final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(DDLandroid/os/Handler;)V
    .locals 1

    .prologue
    .line 375
    iput-wide p1, p0, Lde/gdata/mobilesecurity/activities/filter/u;->a:D

    iput-wide p3, p0, Lde/gdata/mobilesecurity/activities/filter/u;->b:D

    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/filter/u;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 379
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://maps.googleapis.com/maps/api/geocode/json?latlng="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lde/gdata/mobilesecurity/activities/filter/u;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lde/gdata/mobilesecurity/activities/filter/u;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&sensor=true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&language="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReverseGeo:url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 386
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/RestClient;

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/RestClient;-><init>(Ljava/lang/String;)V

    .line 389
    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;->GET:Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/RestClient;->Execute(Lde/gdata/mobilesecurity/activities/filter/RestClient$RequestMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/RestClient;->getResponse()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/RestClient;->getResponseCode()I

    .line 397
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 398
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/u;->c:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 399
    if-eqz v0, :cond_2

    .line 403
    const/4 v3, 0x0

    .line 407
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 409
    const-string v0, "results"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 410
    const-string v0, "results"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 412
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 413
    const-string v4, "formatted_address"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 414
    const-string v1, "formatted_address"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_1
    const/4 v1, 0x1

    iput v1, v2, Landroid/os/Message;->what:I

    .line 419
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 420
    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->isValidString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 421
    const-string v4, "address"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_2
    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    const-string v0, "name"

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_3
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 444
    :goto_4
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 445
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 424
    :cond_0
    :try_start_2
    const-string v0, "address"

    const-string v4, ""

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 434
    :catch_1
    move-exception v0

    .line 436
    iput v5, v2, Landroid/os/Message;->what:I

    .line 437
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 429
    :cond_1
    :try_start_3
    const-string v0, "name"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 441
    :cond_2
    iput v5, v2, Landroid/os/Message;->what:I

    goto :goto_4

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
