.class Lcom/bd/android/shared/h;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/bd/android/shared/g;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bd/android/shared/LicenseActivator;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bd/android/shared/LicenseActivator;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 295
    iput-object p1, p0, Lcom/bd/android/shared/h;->a:Lcom/bd/android/shared/LicenseActivator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bd/android/shared/h;->b:Ljava/lang/String;

    .line 296
    iput-object p2, p0, Lcom/bd/android/shared/h;->b:Ljava/lang/String;

    .line 297
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/bd/android/shared/g;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/bd/android/shared/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bd/android/shared/LicenseActivator;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 305
    :cond_0
    const/16 v0, -0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/bd/android/shared/h;->a:Lcom/bd/android/shared/LicenseActivator;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseActivator;->a(Lcom/bd/android/shared/LicenseActivator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDUtils;->isInternetOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    const/16 v0, -0x6d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_2
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$Builder;

    invoke-direct {v0}, Lcom/bd/android/shared/HTTPManager2$Builder;-><init>()V

    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getLicenseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/HTTPManager2$Builder;->SetURL(Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bd/android/shared/HTTPManager2$Builder;->build()Lcom/bd/android/shared/HTTPManager2;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/bd/android/shared/h;->a:Lcom/bd/android/shared/LicenseActivator;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/bd/android/shared/h;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/bd/android/shared/LicenseActivator;->a(Lcom/bd/android/shared/LicenseActivator;Lcom/bd/android/shared/g;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 323
    if-nez v1, :cond_3

    .line 325
    const/16 v0, -0xc9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/HTTPManager2;->PerformPOST(Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    .line 329
    iget v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_4

    .line 331
    iget v0, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_4
    iget-object v1, p0, Lcom/bd/android/shared/h;->a:Lcom/bd/android/shared/LicenseActivator;

    iget-object v0, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    iget-object v2, p0, Lcom/bd/android/shared/h;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/bd/android/shared/LicenseActivator;->a(Lcom/bd/android/shared/LicenseActivator;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 336
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/bd/android/shared/h;->a:Lcom/bd/android/shared/LicenseActivator;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseActivator;->b(Lcom/bd/android/shared/LicenseActivator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/h;->a:Lcom/bd/android/shared/LicenseActivator;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseActivator;->c(Lcom/bd/android/shared/LicenseActivator;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 347
    iget-object v0, p0, Lcom/bd/android/shared/h;->a:Lcom/bd/android/shared/LicenseActivator;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/bd/android/shared/LicenseActivator;->a(Lcom/bd/android/shared/LicenseActivator;Z)Z

    .line 349
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    iget-object v0, p0, Lcom/bd/android/shared/h;->a:Lcom/bd/android/shared/LicenseActivator;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bd/android/shared/LicenseActivator;->a(Lcom/bd/android/shared/LicenseActivator;I)V

    .line 355
    return-void

    .line 349
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    check-cast p1, [Lcom/bd/android/shared/g;

    invoke-virtual {p0, p1}, Lcom/bd/android/shared/h;->a([Lcom/bd/android/shared/g;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 290
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/bd/android/shared/h;->a(Ljava/lang/Integer;)V

    return-void
.end method
