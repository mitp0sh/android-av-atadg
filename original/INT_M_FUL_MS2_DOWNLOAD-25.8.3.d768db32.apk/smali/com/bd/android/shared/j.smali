.class Lcom/bd/android/shared/j;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bd/android/shared/LicenseProdActivator;


# direct methods
.method private constructor <init>(Lcom/bd/android/shared/LicenseProdActivator;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bd/android/shared/LicenseProdActivator;Lcom/bd/android/shared/t;)V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/bd/android/shared/j;-><init>(Lcom/bd/android/shared/LicenseProdActivator;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 635
    aget-object v0, p1, v8

    .line 636
    if-nez v0, :cond_0

    .line 638
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 697
    :goto_0
    return-object v0

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v1}, Lcom/bd/android/shared/LicenseProdActivator;->d(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v1}, Lcom/bd/android/shared/LicenseProdActivator;->e(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v1}, Lcom/bd/android/shared/LicenseProdActivator;->d(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v1}, Lcom/bd/android/shared/LicenseProdActivator;->e(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 643
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 646
    :cond_2
    iget-object v1, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v1}, Lcom/bd/android/shared/LicenseProdActivator;->f(Lcom/bd/android/shared/LicenseProdActivator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bd/android/shared/BDUtils;->isInternetOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 648
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 653
    :cond_3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 655
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 656
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 657
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 660
    const-string v5, "device_id"

    iget-object v6, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v6}, Lcom/bd/android/shared/LicenseProdActivator;->f(Lcom/bd/android/shared/LicenseProdActivator;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/bd/android/shared/BDUtils;->getDeviceIDMD5(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    const-string v5, "package_name"

    iget-object v6, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v6}, Lcom/bd/android/shared/LicenseProdActivator;->f(Lcom/bd/android/shared/LicenseProdActivator;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    const-string v5, "api_version"

    const/16 v6, 0x8

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 663
    const-string v5, "license_status"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 666
    const-string v0, "user_token"

    iget-object v5, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v5}, Lcom/bd/android/shared/LicenseProdActivator;->e(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    const-string v0, "user_email"

    iget-object v5, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v5}, Lcom/bd/android/shared/LicenseProdActivator;->d(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 668
    const-string v0, "partner_id"

    iget-object v5, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v5}, Lcom/bd/android/shared/LicenseProdActivator;->g(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 670
    const-string v0, "device_info"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    const-string v0, "nimbus_source"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    const-string v0, "id"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 674
    const-string v0, "method"

    const-string v2, "mobile_feeder"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    const-string v0, "params"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    sget-boolean v0, Lcom/bd/android/shared/BDUtils;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 680
    const-string v0, "CloudMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendC2DM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDUtils;->sendCloudMessage(Ljava/lang/String;)I

    move-result v0

    .line 685
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    .line 687
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 691
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 694
    :catch_0
    move-exception v0

    .line 696
    const-string v0, "Error MOBILE_UPDATE_LICENSE_STATUS in LicenseProdActivator"

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    .line 697
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 704
    iget-object v2, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v2}, Lcom/bd/android/shared/LicenseProdActivator;->c(Lcom/bd/android/shared/LicenseProdActivator;)Lcom/bd/android/shared/u;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/bd/android/shared/u;->b(Z)V

    .line 705
    iget-object v0, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseProdActivator;->h(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseProdActivator;->i(Lcom/bd/android/shared/LicenseProdActivator;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 709
    iget-object v0, p0, Lcom/bd/android/shared/j;->a:Lcom/bd/android/shared/LicenseProdActivator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bd/android/shared/LicenseProdActivator;->c(Lcom/bd/android/shared/LicenseProdActivator;Z)Z

    .line 711
    :cond_1
    monitor-exit v2

    .line 712
    return-void

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 630
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bd/android/shared/j;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 630
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/bd/android/shared/j;->a(Ljava/lang/Boolean;)V

    return-void
.end method
