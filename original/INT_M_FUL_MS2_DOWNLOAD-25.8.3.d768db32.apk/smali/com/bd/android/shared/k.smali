.class Lcom/bd/android/shared/k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bd/android/shared/LicenseProdActivator;

.field private b:[Ljava/lang/String;

.field private c:Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;


# direct methods
.method public constructor <init>(Lcom/bd/android/shared/LicenseProdActivator;[Ljava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 494
    iput-object p1, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 490
    iput-object v0, p0, Lcom/bd/android/shared/k;->b:[Ljava/lang/String;

    .line 491
    iput-object v0, p0, Lcom/bd/android/shared/k;->c:Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;

    .line 495
    iput-object p2, p0, Lcom/bd/android/shared/k;->b:[Ljava/lang/String;

    .line 496
    iput-object p3, p0, Lcom/bd/android/shared/k;->c:Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;

    .line 497
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;)Ljava/lang/Integer;
    .locals 11

    .prologue
    const/16 v10, 0xcd

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 503
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 505
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseProdActivator;->b(Lcom/bd/android/shared/LicenseProdActivator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    :try_start_1
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    goto :goto_0

    .line 516
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/bd/android/shared/LicenseProdActivator;->b(Lcom/bd/android/shared/LicenseProdActivator;Z)Z

    .line 517
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    aget-object v4, p1, v2

    .line 521
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$Builder;

    invoke-direct {v0}, Lcom/bd/android/shared/HTTPManager2$Builder;-><init>()V

    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getLicenseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bd/android/shared/HTTPManager2$Builder;->SetURL(Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bd/android/shared/HTTPManager2$Builder;->build()Lcom/bd/android/shared/HTTPManager2;

    move-result-object v5

    .line 525
    sget-object v0, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->UNLINK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    if-ne v0, v4, :cond_c

    .line 527
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseProdActivator;->c(Lcom/bd/android/shared/LicenseProdActivator;)Lcom/bd/android/shared/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v0

    .line 528
    iget-object v3, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v3}, Lcom/bd/android/shared/LicenseProdActivator;->c(Lcom/bd/android/shared/LicenseProdActivator;)Lcom/bd/android/shared/u;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v3

    .line 530
    iget-object v0, v0, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    iget-object v6, p0, Lcom/bd/android/shared/k;->b:[Ljava/lang/String;

    iget-object v3, v3, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    invoke-static {v0, v6, v3}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 536
    :goto_1
    iget-object v3, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    iget-object v6, p0, Lcom/bd/android/shared/k;->b:[Ljava/lang/String;

    invoke-static {v3, v5, v4, v6, v2}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;[Ljava/lang/String;Z)I

    move-result v3

    .line 538
    invoke-static {v3}, Lcom/bd/android/shared/BDUtils;->isHTTPError(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 540
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 590
    :goto_2
    return-object v0

    .line 517
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 544
    :cond_1
    const/16 v6, 0xcb

    if-ne v6, v3, :cond_5

    .line 546
    sget-object v3, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->LOGOUT:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    if-eq v4, v3, :cond_4

    .line 548
    if-eqz v0, :cond_2

    .line 550
    iget-object v3, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    iget-object v6, p0, Lcom/bd/android/shared/k;->b:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v3, v6}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;Ljava/lang/String;)V

    .line 553
    :cond_2
    iget-object v3, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v3}, Lcom/bd/android/shared/LicenseProdActivator;->c(Lcom/bd/android/shared/LicenseProdActivator;)Lcom/bd/android/shared/u;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v3

    .line 555
    iget-object v6, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    sget-object v7, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->CHECK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    new-array v8, v1, [Ljava/lang/String;

    iget-object v3, v3, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    aput-object v3, v8, v2

    if-nez v0, :cond_3

    :goto_3
    invoke-static {v6, v5, v7, v8, v1}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;[Ljava/lang/String;Z)I

    move-result v0

    .line 568
    :goto_4
    invoke-static {v0}, Lcom/bd/android/shared/BDUtils;->isHTTPError(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 570
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v1, v2

    .line 555
    goto :goto_3

    .line 559
    :cond_4
    const/16 v0, 0xc8

    goto :goto_4

    .line 563
    :cond_5
    const/16 v0, 0xcc

    if-ne v0, v3, :cond_b

    .line 565
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    sget-object v1, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->LINK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    iget-object v3, p0, Lcom/bd/android/shared/k;->b:[Ljava/lang/String;

    invoke-static {v0, v5, v1, v3, v2}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;[Ljava/lang/String;Z)I

    move-result v0

    goto :goto_4

    .line 577
    :cond_6
    const/16 v1, -0xca

    if-eq v1, v0, :cond_a

    .line 579
    sget-object v1, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->UNLINK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    if-eq v1, v4, :cond_7

    sget-object v1, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->CHECK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    if-ne v1, v4, :cond_a

    :cond_7
    iget-object v1, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-virtual {v1}, Lcom/bd/android/shared/LicenseProdActivator;->GetTimeLeft()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_8

    if-ne v10, v0, :cond_a

    .line 581
    :cond_8
    if-ne v10, v0, :cond_9

    .line 583
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    iget-object v1, p0, Lcom/bd/android/shared/k;->b:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;Ljava/lang/String;)V

    .line 586
    :cond_9
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    sget-object v1, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->CHECK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    iget-object v3, p0, Lcom/bd/android/shared/k;->b:[Ljava/lang/String;

    invoke-static {v0, v5, v1, v3, v2}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;[Ljava/lang/String;Z)I

    move-result v0

    .line 590
    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    :cond_b
    move v0, v3

    goto :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/bd/android/shared/k;->c:Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/bd/android/shared/k;->c:Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;->onProductLicenseChanged(I)V

    .line 602
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;I)V

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseProdActivator;->b(Lcom/bd/android/shared/LicenseProdActivator;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 620
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/bd/android/shared/LicenseProdActivator;->b(Lcom/bd/android/shared/LicenseProdActivator;Z)Z

    .line 621
    iget-object v0, p0, Lcom/bd/android/shared/k;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-static {v0}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 625
    :cond_3
    monitor-exit v1

    .line 627
    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 488
    check-cast p1, [Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/bd/android/shared/k;->a([Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 488
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/bd/android/shared/k;->a(Ljava/lang/Integer;)V

    return-void
.end method
