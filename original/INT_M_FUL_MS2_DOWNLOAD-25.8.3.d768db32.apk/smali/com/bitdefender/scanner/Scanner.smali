.class public Lcom/bitdefender/scanner/Scanner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/bitdefender/scanner/Scanner;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Lcom/bd/android/shared/LicenseActivator;

.field private e:Lcom/bd/android/shared/LicenseProdActivator;

.field private f:Lcom/bitdefender/scanner/k;

.field private g:I

.field private h:Lcom/bitdefender/scanner/DBHandler;

.field private i:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/bitdefender/scanner/IResponseScan;",
            "Lcom/bitdefender/scanner/f;",
            ">;"
        }
    .end annotation
.end field

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    .line 49
    iput-object v1, p0, Lcom/bitdefender/scanner/Scanner;->c:Landroid/content/pm/PackageManager;

    .line 50
    iput-object v1, p0, Lcom/bitdefender/scanner/Scanner;->d:Lcom/bd/android/shared/LicenseActivator;

    .line 51
    iput-object v1, p0, Lcom/bitdefender/scanner/Scanner;->e:Lcom/bd/android/shared/LicenseProdActivator;

    .line 52
    iput-object v1, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/bitdefender/scanner/Scanner;->g:I

    .line 55
    iput-object v1, p0, Lcom/bitdefender/scanner/Scanner;->h:Lcom/bitdefender/scanner/DBHandler;

    .line 56
    iput-object v1, p0, Lcom/bitdefender/scanner/Scanner;->i:Landroid/os/AsyncTask;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bitdefender/scanner/Scanner;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    const/16 v0, 0x535f

    iput v0, p0, Lcom/bitdefender/scanner/Scanner;->k:I

    .line 75
    iput-object p1, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    .line 76
    invoke-static {p1}, Lcom/bd/android/shared/LicenseActivator;->getInstance(Landroid/content/Context;)Lcom/bd/android/shared/LicenseActivator;

    move-result-object v0

    iput-object v0, p0, Lcom/bitdefender/scanner/Scanner;->d:Lcom/bd/android/shared/LicenseActivator;

    .line 77
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bitdefender/scanner/Scanner;->c:Landroid/content/pm/PackageManager;

    .line 78
    invoke-static {p1}, Lcom/bitdefender/scanner/k;->a(Landroid/content/Context;)Lcom/bitdefender/scanner/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    .line 80
    invoke-static {p1}, Lcom/bitdefender/scanner/h;->a(Landroid/content/Context;)V

    .line 82
    invoke-static {p1}, Lcom/bitdefender/scanner/DBHandler;->create(Landroid/content/Context;)V

    .line 83
    invoke-static {}, Lcom/bitdefender/scanner/DBHandler;->getInstance()Lcom/bitdefender/scanner/DBHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/bitdefender/scanner/Scanner;->h:Lcom/bitdefender/scanner/DBHandler;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/bitdefender/scanner/Scanner;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/bitdefender/scanner/Scanner;->g:I

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/e;",
            ">;",
            "Lcom/bitdefender/scanner/f;",
            "Lcom/bitdefender/scanner/h;",
            ")I"
        }
    .end annotation

    .prologue
    .line 540
    const/4 v3, 0x0

    .line 542
    const/4 v1, 0x0

    .line 546
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x0

    move v5, v0

    move v0, v1

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v5, v1, :cond_7

    .line 549
    invoke-virtual {p4}, Lcom/bitdefender/scanner/f;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    const/4 v3, -0x1

    .line 610
    :cond_0
    :goto_1
    return v3

    .line 554
    :cond_1
    const/4 v2, 0x0

    .line 555
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 556
    const-string v4, "status_code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 557
    const/16 v4, 0x64

    if-eq v4, v1, :cond_2

    .line 547
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 564
    :cond_2
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitdefender/scanner/e;

    .line 565
    const/4 v1, 0x0

    .line 567
    invoke-direct {p0, v0}, Lcom/bitdefender/scanner/Scanner;->b(Lcom/bitdefender/scanner/e;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 569
    iget-object v7, v0, Lcom/bitdefender/scanner/e;->d:Lorg/json/JSONObject;

    invoke-direct {p0, v7}, Lcom/bitdefender/scanner/Scanner;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 570
    if-nez v7, :cond_4

    .line 572
    new-instance v1, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v1}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 573
    iget-object v0, v0, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 574
    const/16 v0, -0x12f

    iput v0, v1, Lcom/bitdefender/scanner/ResultInfo;->result:I

    move-object v0, v1

    move v1, v2

    move v2, v3

    :goto_3
    move v3, v2

    .line 594
    :goto_4
    if-nez v1, :cond_3

    .line 596
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v0, v4

    goto :goto_2

    .line 579
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p5, v0, v7}, Lcom/bitdefender/scanner/h;->a(ILorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 581
    const/16 v3, -0x138

    goto :goto_1

    .line 583
    :cond_5
    add-int/lit8 v2, v3, 0x1

    .line 584
    const/4 v0, 0x1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_3

    .line 589
    :cond_6
    new-instance v1, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v1}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 590
    iget-object v0, v0, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 591
    const/16 v0, -0x12f

    iput v0, v1, Lcom/bitdefender/scanner/ResultInfo;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    move v1, v2

    goto :goto_4

    .line 601
    :catch_0
    move-exception v0

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanSDK - Scanner - GetSecondRequestArray"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    .line 606
    :cond_7
    const/4 v0, 0x2

    invoke-virtual {p5, v0}, Lcom/bitdefender/scanner/h;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    const/16 v3, -0x138

    goto/16 :goto_1
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/e;",
            ">;",
            "Lcom/bitdefender/scanner/f;",
            "Lcom/bitdefender/scanner/h;",
            ")I"
        }
    .end annotation

    .prologue
    .line 616
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 617
    const/4 v1, 0x0

    .line 619
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 620
    const/4 v0, 0x1

    move v3, v1

    move v1, v0

    .line 622
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 625
    invoke-virtual {p3}, Lcom/bitdefender/scanner/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    const/4 v3, -0x1

    .line 759
    :cond_0
    :goto_1
    return v3

    .line 631
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitdefender/scanner/e;

    .line 632
    new-instance v7, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v7}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 633
    iget-object v2, v0, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    iput-object v2, v7, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 635
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 637
    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v5

    .line 638
    mul-int/lit8 v1, v1, 0x5a

    div-int/lit8 v1, v1, 0x64

    .line 640
    const/4 v8, 0x2

    iget-object v9, v0, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    invoke-direct {p0, p3, v8, v9, v1}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/f;ILjava/lang/String;I)V

    .line 642
    iget-boolean v1, v0, Lcom/bitdefender/scanner/e;->b:Z

    if-eqz v1, :cond_4

    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->c:Landroid/content/pm/PackageManager;

    iget-object v8, v0, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0x535f

    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 651
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/bd/android/shared/BDHashing;->file_md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bitdefender/scanner/e;->e:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    :goto_2
    move-object v4, v1

    .line 668
    :goto_3
    if-eqz v4, :cond_2

    .line 670
    :try_start_1
    const-string v1, "m"

    iget-object v8, v0, Lcom/bitdefender/scanner/e;->e:Ljava/lang/String;

    invoke-virtual {v4, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    iget-boolean v1, v0, Lcom/bitdefender/scanner/e;->b:Z

    if-eqz v1, :cond_5

    .line 673
    const-string v1, "l"

    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 686
    :cond_2
    :goto_4
    const/4 v1, 0x0

    .line 689
    if-nez v4, :cond_6

    move v10, v1

    move v1, v3

    move v3, v10

    .line 725
    :goto_5
    if-nez v3, :cond_3

    .line 727
    if-nez v4, :cond_d

    .line 729
    iget-boolean v0, v0, Lcom/bitdefender/scanner/e;->b:Z

    if-eqz v0, :cond_b

    .line 731
    const/16 v0, -0x12d

    iput v0, v7, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 750
    :goto_6
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    :cond_3
    move v3, v1

    move v1, v2

    .line 753
    goto :goto_0

    .line 654
    :catch_0
    move-exception v1

    .line 656
    const/4 v1, 0x0

    goto :goto_2

    .line 662
    :cond_4
    iget-object v1, v0, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/bd/android/shared/BDHashing;->file_md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bitdefender/scanner/e;->e:Ljava/lang/String;

    goto :goto_3

    .line 677
    :cond_5
    :try_start_2
    const-string v1, "l"

    const/4 v8, 0x1

    invoke-virtual {v4, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 681
    :catch_1
    move-exception v1

    goto :goto_4

    .line 694
    :cond_6
    iget-boolean v8, v0, Lcom/bitdefender/scanner/e;->b:Z

    if-nez v8, :cond_7

    iget-object v8, v0, Lcom/bitdefender/scanner/e;->e:Ljava/lang/String;

    const-string v9, "digesterror"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 696
    const/4 v4, 0x0

    move v10, v1

    move v1, v3

    move v3, v10

    .line 697
    goto :goto_5

    .line 700
    :cond_7
    invoke-direct {p0, v4}, Lcom/bitdefender/scanner/Scanner;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 701
    if-nez v8, :cond_8

    move v10, v1

    move v1, v3

    move v3, v10

    .line 703
    goto :goto_5

    .line 707
    :cond_8
    invoke-direct {p0, v8}, Lcom/bitdefender/scanner/Scanner;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 708
    if-nez v8, :cond_9

    move v10, v1

    move v1, v3

    move v3, v10

    .line 710
    goto :goto_5

    .line 713
    :cond_9
    const/4 v1, 0x1

    invoke-virtual {p4, v1, v8}, Lcom/bitdefender/scanner/h;->a(ILorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 715
    const/16 v3, -0x138

    goto/16 :goto_1

    .line 717
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 721
    const/4 v1, 0x1

    move v10, v1

    move v1, v3

    move v3, v10

    .line 722
    goto :goto_5

    .line 735
    :cond_b
    invoke-static {}, Lcom/bitdefender/scanner/l;->a()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_c

    .line 737
    const/16 v0, -0x136

    iput v0, v7, Lcom/bitdefender/scanner/ResultInfo;->result:I

    goto :goto_6

    .line 741
    :cond_c
    const/16 v0, -0x12f

    iput v0, v7, Lcom/bitdefender/scanner/ResultInfo;->result:I

    goto :goto_6

    .line 747
    :cond_d
    const/16 v0, -0x12f

    iput v0, v7, Lcom/bitdefender/scanner/ResultInfo;->result:I

    goto :goto_6

    .line 755
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lcom/bitdefender/scanner/h;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    const/16 v3, -0x138

    goto/16 :goto_1
.end method

.method private a(Lorg/json/JSONObject;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x133

    .line 495
    :try_start_0
    const-string v2, "status_code"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 496
    sparse-switch v2, :sswitch_data_0

    .line 535
    :goto_0
    :sswitch_0
    return v0

    .line 503
    :sswitch_1
    const/4 v0, 0x1

    .line 504
    goto :goto_0

    .line 507
    :sswitch_2
    const/4 v0, 0x2

    .line 508
    goto :goto_0

    .line 511
    :sswitch_3
    const/4 v0, 0x4

    .line 512
    goto :goto_0

    .line 515
    :sswitch_4
    const/16 v0, 0x8

    .line 516
    goto :goto_0

    :sswitch_5
    move v0, v1

    .line 524
    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    move v0, v1

    .line 533
    goto :goto_0

    .line 496
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0xff -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic a(Lcom/bitdefender/scanner/Scanner;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bitdefender/scanner/Scanner;->i:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic a(Lcom/bitdefender/scanner/Scanner;Lcom/bd/android/shared/LicenseProdActivator;)Lcom/bd/android/shared/LicenseProdActivator;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bitdefender/scanner/Scanner;->e:Lcom/bd/android/shared/LicenseProdActivator;

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bitdefender/scanner/ResultInfo;
    .locals 6

    .prologue
    const/16 v5, 0xc8

    .line 1407
    new-instance v0, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v0}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 1422
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bitdefender/scanner/Scanner;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 1423
    if-nez v1, :cond_0

    .line 1425
    iput-object p2, v0, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 1426
    const/16 v1, -0x12f

    iput v1, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 1483
    :goto_0
    return-object v0

    .line 1430
    :cond_0
    new-instance v2, Lcom/bd/android/shared/HTTPManager2$Builder;

    invoke-direct {v2}, Lcom/bd/android/shared/HTTPManager2$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/bd/android/shared/HTTPManager2$Builder;->build()Lcom/bd/android/shared/HTTPManager2;

    move-result-object v2

    .line 1432
    sget-object v3, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_SCANNER:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    invoke-virtual {v2, v3, v1}, Lcom/bd/android/shared/HTTPManager2;->SendToCloud(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v1

    .line 1433
    iget v3, v1, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    if-eq v5, v3, :cond_1

    .line 1435
    iget v1, v1, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    iput v1, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1476
    :catch_0
    move-exception v1

    .line 1478
    const/16 v1, -0x3e8

    iput v1, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    goto :goto_0

    .line 1440
    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1441
    const-string v1, "status_code"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1442
    const/16 v4, 0x64

    if-eq v4, v1, :cond_2

    .line 1445
    invoke-direct {p0, v3, v0}, Lcom/bitdefender/scanner/Scanner;->a(Lorg/json/JSONObject;Lcom/bitdefender/scanner/ResultInfo;)V

    .line 1446
    invoke-direct {p0, v0}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/ResultInfo;)V

    goto :goto_0

    .line 1450
    :cond_2
    new-instance v1, Lcom/bitdefender/scanner/e;

    invoke-direct {v1, p0}, Lcom/bitdefender/scanner/e;-><init>(Lcom/bitdefender/scanner/Scanner;)V

    .line 1451
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/bitdefender/scanner/e;->b:Z

    .line 1452
    iput-object p1, v1, Lcom/bitdefender/scanner/e;->d:Lorg/json/JSONObject;

    .line 1453
    iput-object p2, v1, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    .line 1454
    const-string v3, "m"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bitdefender/scanner/e;->e:Ljava/lang/String;

    .line 1457
    invoke-direct {p0, v1}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/e;)Ljava/lang/String;

    move-result-object v1

    .line 1458
    if-nez v1, :cond_3

    .line 1460
    const/16 v1, -0x12f

    iput v1, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    goto :goto_0

    .line 1463
    :cond_3
    sget-object v3, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_SCANNER:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    invoke-virtual {v2, v3, v1}, Lcom/bd/android/shared/HTTPManager2;->SendToCloud(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v1

    .line 1464
    iget v2, v1, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    if-eq v5, v2, :cond_4

    .line 1466
    iget v1, v1, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    iput v1, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    goto :goto_0

    .line 1469
    :cond_4
    new-instance v2, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1471
    invoke-direct {p0, v2, v0}, Lcom/bitdefender/scanner/Scanner;->a(Lorg/json/JSONObject;Lcom/bitdefender/scanner/ResultInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/bitdefender/scanner/Scanner;)Lcom/bitdefender/scanner/k;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    return-object v0
.end method

.method private a(Lcom/bitdefender/scanner/e;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1488
    const/4 v0, 0x0

    .line 1489
    invoke-direct {p0, p1}, Lcom/bitdefender/scanner/Scanner;->b(Lcom/bitdefender/scanner/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1491
    iget-object v0, p1, Lcom/bitdefender/scanner/e;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1494
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bitdefender/scanner/Scanner;Ljava/lang/String;Lcom/bitdefender/scanner/f;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/lang/String;Lcom/bitdefender/scanner/f;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bitdefender/scanner/Scanner;Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bitdefender/scanner/f;",
            "Lcom/bitdefender/scanner/h;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1325
    .line 1326
    invoke-direct {p0}, Lcom/bitdefender/scanner/Scanner;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 1327
    invoke-direct {p0, v0, p1, p2}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1329
    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/bitdefender/scanner/f;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bitdefender/scanner/f;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 984
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 985
    new-instance v0, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v0}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 987
    iput-object p1, v0, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 991
    if-nez p1, :cond_0

    .line 993
    const/16 v1, -0x12c

    iput v1, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 1049
    :goto_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    return-object v3

    .line 999
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1001
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1004
    const/16 v1, -0x131

    iput v1, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1039
    :catch_0
    move-exception v1

    .line 1041
    const/16 v1, -0x3e8

    iput v1, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    goto :goto_0

    .line 1008
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1010
    const/16 v1, -0x130

    iput v1, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    goto :goto_0

    .line 1014
    :cond_2
    const/4 v4, 0x2

    const/16 v5, 0x5a

    invoke-direct {p0, p2, v4, p1, v5}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/f;ILjava/lang/String;I)V

    .line 1017
    invoke-static {p1}, Lcom/bd/android/shared/BDHashing;->file_md5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 1021
    :try_start_2
    const-string v5, "m"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1022
    const-string v4, "l"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1029
    :goto_1
    if-nez v1, :cond_3

    .line 1031
    const/16 v1, -0x12f

    :try_start_3
    iput v1, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    goto :goto_0

    .line 1024
    :catch_1
    move-exception v1

    move-object v1, v2

    .line 1026
    goto :goto_1

    .line 1035
    :cond_3
    const/4 v2, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x5a

    invoke-direct {p0, p2, v2, v4, v5}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/f;ILjava/lang/String;I)V

    .line 1036
    invoke-direct {p0, v1, p1}, Lcom/bitdefender/scanner/Scanner;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bitdefender/scanner/ResultInfo;

    move-result-object v0

    .line 1037
    iput-object p1, v0, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bitdefender/scanner/f;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/e;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 765
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 766
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 767
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 769
    if-nez p2, :cond_0

    .line 771
    const/4 v0, 0x0

    .line 832
    :goto_1
    return-object v0

    .line 774
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 775
    new-instance v5, Lcom/bitdefender/scanner/e;

    invoke-direct {v5, p0}, Lcom/bitdefender/scanner/e;-><init>(Lcom/bitdefender/scanner/Scanner;)V

    .line 777
    const/16 v6, 0x2f

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v8, v6, :cond_4

    .line 779
    iput-boolean v2, v5, Lcom/bitdefender/scanner/e;->b:Z

    .line 781
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 784
    const/16 v6, -0x131

    iput v6, v5, Lcom/bitdefender/scanner/e;->c:I

    .line 785
    iput-object v0, v5, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    .line 786
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 790
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 792
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 794
    iput-object v0, v5, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    .line 795
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 800
    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 805
    :cond_4
    invoke-direct {p0, p2, v9, v0, v8}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/f;ILjava/lang/String;I)V

    .line 807
    iput-boolean v9, v5, Lcom/bitdefender/scanner/e;->b:Z

    .line 808
    iput-object v0, v5, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    .line 809
    iget-object v6, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/bitdefender/scanner/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 811
    const/16 v0, -0x12d

    iput v0, v5, Lcom/bitdefender/scanner/e;->c:I

    .line 813
    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 817
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-direct {p0, v0, p2}, Lcom/bitdefender/scanner/Scanner;->a([Ljava/io/File;Lcom/bitdefender/scanner/f;)Ljava/util/Collection;

    move-result-object v0

    .line 819
    if-nez v0, :cond_7

    move-object v0, v3

    .line 821
    goto :goto_1

    .line 824
    :cond_7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 826
    new-instance v4, Lcom/bitdefender/scanner/e;

    invoke-direct {v4, p0}, Lcom/bitdefender/scanner/e;-><init>(Lcom/bitdefender/scanner/Scanner;)V

    .line 827
    iput-boolean v2, v4, Lcom/bitdefender/scanner/e;->b:Z

    .line 828
    iput-object v0, v4, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    .line 829
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object v0, v3

    .line 832
    goto/16 :goto_1
.end method

.method private a(Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bitdefender/scanner/f;",
            "Lcom/bitdefender/scanner/h;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0xc8

    const/16 v9, -0x133

    const/16 v8, -0x138

    const/4 v6, 0x0

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;)Ljava/util/ArrayList;

    move-result-object v3

    .line 265
    if-nez v3, :cond_1

    move-object v2, v6

    .line 426
    :cond_0
    :goto_0
    return-object v2

    .line 270
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    new-instance v0, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v0}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 273
    const/4 v1, 0x0

    iput v1, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 274
    iput-object v6, v0, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 275
    iput-object v6, v0, Lcom/bitdefender/scanner/ResultInfo;->sThreatName:Ljava/lang/String;

    .line 276
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 283
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitdefender/scanner/e;

    .line 286
    iget v4, v0, Lcom/bitdefender/scanner/e;->c:I

    if-eqz v4, :cond_3

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 289
    new-instance v4, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v4}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 290
    iget-object v5, v0, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    iput-object v5, v4, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 291
    iget v0, v0, Lcom/bitdefender/scanner/e;->c:I

    iput v0, v4, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 292
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 311
    :cond_4
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)I

    move-result v0

    .line 312
    if-ne v0, v8, :cond_5

    .line 314
    invoke-direct {p0, v2, v3, v0}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 317
    :cond_5
    if-gez v0, :cond_6

    move-object v2, v6

    .line 319
    goto :goto_0

    .line 322
    :cond_6
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p3}, Lcom/bitdefender/scanner/h;->a()Ljava/io/File;

    move-result-object v0

    .line 329
    if-nez v0, :cond_7

    move-object v2, v6

    .line 331
    goto :goto_0

    .line 334
    :cond_7
    invoke-virtual {p2}, Lcom/bitdefender/scanner/f;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v2, v6

    .line 336
    goto :goto_0

    .line 340
    :cond_8
    new-instance v1, Lcom/bd/android/shared/HTTPManager2$Builder;

    invoke-direct {v1}, Lcom/bd/android/shared/HTTPManager2$Builder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/bd/android/shared/HTTPManager2$Builder;->UseBatchMode(Z)Lcom/bd/android/shared/HTTPManager2$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bd/android/shared/HTTPManager2$Builder;->build()Lcom/bd/android/shared/HTTPManager2;

    move-result-object v7

    .line 343
    invoke-virtual {p2}, Lcom/bitdefender/scanner/f;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v2, v6

    .line 345
    goto :goto_0

    .line 348
    :cond_9
    const/4 v1, 0x3

    const/16 v4, 0x5a

    invoke-direct {p0, p2, v1, v6, v4}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/f;ILjava/lang/String;I)V

    .line 351
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_SCANNER:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    invoke-virtual {v7, v1, v0}, Lcom/bd/android/shared/HTTPManager2;->SendToCloud(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Ljava/io/File;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    .line 353
    invoke-virtual {p2}, Lcom/bitdefender/scanner/f;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v2, v6

    .line 355
    goto/16 :goto_0

    .line 358
    :cond_a
    iget v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    if-eq v10, v1, :cond_c

    .line 360
    iget v0, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    invoke-direct {p0, v2, v3, v0}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 421
    :cond_b
    :goto_2
    invoke-virtual {p2}, Lcom/bitdefender/scanner/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, v6

    .line 423
    goto/16 :goto_0

    .line 364
    :cond_c
    iget-object v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 366
    invoke-direct {p0, v2, v3, v9}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_2

    .line 370
    :cond_d
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 382
    iget-object v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)I

    move-result v0

    .line 383
    if-ne v0, v8, :cond_e

    .line 385
    invoke-direct {p0, v2, v3, v0}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    .line 388
    :cond_e
    if-gez v0, :cond_f

    move-object v2, v6

    .line 390
    goto/16 :goto_0

    .line 393
    :cond_f
    invoke-virtual {p3}, Lcom/bitdefender/scanner/h;->b()Ljava/io/File;

    move-result-object v0

    .line 394
    if-nez v0, :cond_10

    move-object v2, v6

    .line 396
    goto/16 :goto_0

    .line 399
    :cond_10
    sget-object v1, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_SCANNER:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    invoke-virtual {v7, v1, v0}, Lcom/bd/android/shared/HTTPManager2;->SendToCloud(Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Ljava/io/File;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    .line 401
    invoke-virtual {p2}, Lcom/bitdefender/scanner/f;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_11

    move-object v2, v6

    .line 403
    goto/16 :goto_0

    .line 406
    :cond_11
    iget v1, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    if-eq v10, v1, :cond_12

    .line 408
    iget v0, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    invoke-direct {p0, v2, v3, v0}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_2

    .line 412
    :cond_12
    iget-object v0, v0, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 414
    invoke-direct {p0, v2, v3, v9}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_2
.end method

.method private a([Ljava/io/File;Lcom/bitdefender/scanner/f;)Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Lcom/bitdefender/scanner/f;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 837
    if-nez p1, :cond_0

    move-object v0, v1

    .line 921
    :goto_0
    return-object v0

    .line 842
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 843
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 844
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 848
    :try_start_0
    array-length v3, p1

    move v0, v4

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v7, p1, v0

    .line 850
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 853
    :catch_0
    move-exception v0

    .line 855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ScanSDK - Scanner - GetAPKsFromDir: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    .line 858
    :cond_1
    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 860
    invoke-virtual {p2}, Lcom/bitdefender/scanner/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 862
    goto :goto_0

    .line 864
    :cond_2
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 865
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 866
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 874
    if-eqz v7, :cond_1

    .line 878
    array-length v8, v7

    move v3, v4

    :goto_2
    if-ge v3, v8, :cond_1

    aget-object v0, v7, v3

    .line 882
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 883
    const-string v9, "/storage/emulated/legacy"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 878
    :cond_3
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 887
    :cond_4
    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-direct {p0, p2, v9, v0, v10}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/f;ILjava/lang/String;I)V

    .line 888
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p2}, Lcom/bitdefender/scanner/f;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v0, v1

    .line 892
    goto/16 :goto_0

    .line 894
    :cond_5
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 899
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 901
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v6, v0}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 903
    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 914
    :catch_1
    move-exception v0

    .line 916
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ScanSDK - Scanner - GetAPKsFromDir: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    goto :goto_3

    .line 908
    :cond_6
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 910
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :cond_7
    move-object v0, v2

    .line 921
    goto/16 :goto_0
.end method

.method static a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1923
    sget-object v0, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-virtual {v0}, Lcom/bitdefender/scanner/Scanner;->getUploadStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1926
    sget-object v0, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;

    iget-object v0, v0, Lcom/bitdefender/scanner/Scanner;->i:Landroid/os/AsyncTask;

    if-nez v0, :cond_1

    .line 1928
    sget-object v0, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;

    new-instance v1, Lcom/bitdefender/scanner/g;

    sget-object v2, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v4}, Lcom/bitdefender/scanner/g;-><init>(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/d;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/bitdefender/scanner/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, v0, Lcom/bitdefender/scanner/Scanner;->i:Landroid/os/AsyncTask;

    .line 1939
    :cond_0
    :goto_0
    return-void

    .line 1932
    :cond_1
    sget-object v0, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;

    iget-object v0, v0, Lcom/bitdefender/scanner/Scanner;->i:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 1934
    sget-object v0, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;

    new-instance v1, Lcom/bitdefender/scanner/g;

    sget-object v2, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v4}, Lcom/bitdefender/scanner/g;-><init>(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/d;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/bitdefender/scanner/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, v0, Lcom/bitdefender/scanner/Scanner;->i:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Lcom/bitdefender/scanner/ResultInfo;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1736
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/bitdefender/scanner/ResultInfo;->snd:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bitdefender/scanner/Scanner;->getUploadStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1738
    iget-object v1, p1, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 1739
    iget-object v0, p1, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 1740
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1741
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x1900000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    .line 1744
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1746
    const-string v0, "KATASTIF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++++++addtoLocalDB "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_0
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->h:Lcom/bitdefender/scanner/DBHandler;

    iget-object v4, p1, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    iget-object v0, p1, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {v1, v4, v0}, Lcom/bitdefender/scanner/DBHandler;->addPackage(Ljava/lang/String;I)V

    .line 1751
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 1739
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 1740
    goto :goto_1

    :cond_4
    move v0, v3

    .line 1748
    goto :goto_2
.end method

.method private a(Lcom/bitdefender/scanner/f;ILjava/lang/String;I)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 926
    invoke-static {p1}, Lcom/bitdefender/scanner/f;->a(Lcom/bitdefender/scanner/f;)I

    move-result v0

    if-nez v0, :cond_1

    .line 928
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    aput-object p3, v0, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-virtual {p1, v0}, Lcom/bitdefender/scanner/f;->onProgressUpdate([Ljava/lang/Object;)V

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 939
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 941
    invoke-static {p1}, Lcom/bitdefender/scanner/f;->b(Lcom/bitdefender/scanner/f;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const/16 v4, 0x3e8

    invoke-static {p1}, Lcom/bitdefender/scanner/f;->a(Lcom/bitdefender/scanner/f;)I

    move-result v5

    div-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 943
    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p3, v2, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p1, v2}, Lcom/bitdefender/scanner/f;->onProgressUpdate([Ljava/lang/Object;)V

    .line 944
    invoke-static {p1, v0, v1}, Lcom/bitdefender/scanner/f;->a(Lcom/bitdefender/scanner/f;J)J

    goto :goto_0

    .line 935
    :pswitch_0
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    aput-object p3, v0, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-virtual {p1, v0}, Lcom/bitdefender/scanner/f;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 932
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/e;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitdefender/scanner/e;

    .line 433
    if-eqz v0, :cond_0

    .line 435
    new-instance v2, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v2}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 436
    iget-object v0, v0, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 437
    iput p3, v2, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 438
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 442
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/bitdefender/scanner/ResultInfo;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1376
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    invoke-direct {p0, p1}, Lcom/bitdefender/scanner/Scanner;->a(Lorg/json/JSONObject;)I

    move-result v2

    .line 1382
    packed-switch v2, :pswitch_data_0

    .line 1398
    :pswitch_0
    iput v2, p2, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 1402
    :goto_1
    const-string v2, "snd"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_2
    iput-boolean v0, p2, Lcom/bitdefender/scanner/ResultInfo;->snd:Z

    goto :goto_0

    .line 1385
    :pswitch_1
    iput v2, p2, Lcom/bitdefender/scanner/ResultInfo;->result:I

    goto :goto_1

    .line 1393
    :pswitch_2
    const-string v3, "status_message"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/bitdefender/scanner/ResultInfo;->sThreatName:Ljava/lang/String;

    .line 1394
    iput v2, p2, Lcom/bitdefender/scanner/ResultInfo;->result:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1402
    goto :goto_2

    .line 1382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/e;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 446
    .line 449
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    .line 450
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 454
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 455
    const-string v0, "status_code"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 457
    const/16 v5, 0x64

    if-eq v5, v0, :cond_0

    const/16 v5, 0xff

    if-eq v5, v0, :cond_0

    .line 459
    new-instance v5, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v5}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 460
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitdefender/scanner/e;

    .line 461
    iget-object v0, v0, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    iput-object v0, v5, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 463
    invoke-direct {p0, v4, v5}, Lcom/bitdefender/scanner/Scanner;->a(Lorg/json/JSONObject;Lcom/bitdefender/scanner/ResultInfo;)V

    .line 464
    invoke-direct {p0, v5}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/ResultInfo;)V

    .line 466
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 471
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 473
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 475
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    add-int/lit8 v0, v0, -0x1

    .line 471
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 480
    :cond_3
    const/4 v0, 0x1

    .line 487
    :goto_2
    return v0

    .line 482
    :catch_0
    move-exception v0

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScanSDK - Scanner - ParseRequestAnswer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    move v0, v1

    goto :goto_2
.end method

.method private b()I
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 126
    const/16 v0, -0x3e8

    .line 131
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->d:Lcom/bd/android/shared/LicenseActivator;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/LicenseActivator;->CanStartSDK(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/bitdefender/scanner/Scanner;)I
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/bitdefender/scanner/Scanner;->b()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/bitdefender/scanner/Scanner;->c(Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/bitdefender/scanner/Scanner;Ljava/lang/String;Lcom/bitdefender/scanner/f;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/bitdefender/scanner/Scanner;->b(Ljava/lang/String;Lcom/bitdefender/scanner/f;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bitdefender/scanner/f;",
            "Lcom/bitdefender/scanner/h;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1340
    .line 1342
    invoke-static {}, Lcom/bitdefender/scanner/l;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    new-instance v1, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v1}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 1346
    const/16 v2, -0x136

    iput v2, v1, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 1348
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    :goto_0
    return-object v0

    .line 1352
    :cond_0
    invoke-virtual {p0}, Lcom/bitdefender/scanner/Scanner;->getAllMountedPaths()Ljava/util/ArrayList;

    move-result-object v0

    .line 1353
    invoke-direct {p0, v0, p1, p2}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/bitdefender/scanner/f;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bitdefender/scanner/f;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x5a

    .line 1063
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    new-instance v0, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v0}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 1067
    iput-object p1, v0, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 1069
    if-nez p1, :cond_0

    .line 1071
    const/16 v2, -0x12c

    iput v2, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 1125
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 1126
    :goto_1
    return-object v0

    .line 1077
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, p2, v2, p1, v6}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/f;ILjava/lang/String;I)V

    .line 1079
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1086
    invoke-virtual {p0, p1}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1088
    if-nez v4, :cond_1

    .line 1090
    const/16 v2, -0x12d

    iput v2, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 1091
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 1092
    goto :goto_1

    .line 1095
    :cond_1
    invoke-static {v4}, Lcom/bd/android/shared/BDHashing;->file_md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1099
    :try_start_0
    const-string v5, "m"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1100
    const-string v4, "l"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_2
    if-nez v2, :cond_2

    .line 1109
    const/16 v2, -0x12f

    iput v2, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    goto :goto_0

    .line 1102
    :catch_0
    move-exception v2

    move-object v2, v3

    .line 1104
    goto :goto_2

    .line 1113
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, p2, v0, v3, v6}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/f;ILjava/lang/String;I)V

    .line 1114
    invoke-direct {p0, v2, p1}, Lcom/bitdefender/scanner/Scanner;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bitdefender/scanner/ResultInfo;

    move-result-object v0

    .line 1115
    iput-object p1, v0, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 1116
    invoke-direct {p0, v0}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/ResultInfo;)V

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 953
    .line 957
    :try_start_0
    sget-object v0, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_SCANNER:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    iget-object v0, v0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;->sType:Ljava/lang/String;

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_SCANNER:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    iget-object v1, v1, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;->sVerb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 960
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 961
    const-string v2, "service"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 962
    const-string v1, "type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 963
    const-string v1, "transfer-encoding"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 964
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    :goto_0
    return-object v0

    .line 966
    :catch_0
    move-exception v0

    .line 968
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/bitdefender/scanner/e;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1529
    .line 1537
    if-nez p1, :cond_1

    .line 1614
    :cond_0
    :goto_0
    return v1

    .line 1542
    :cond_1
    :try_start_0
    iget-boolean v0, p1, Lcom/bitdefender/scanner/e;->b:Z

    if-eqz v0, :cond_3

    .line 1544
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->c:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x535f

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1545
    iget-object v3, p1, Lcom/bitdefender/scanner/e;->e:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/bitdefender/scanner/i;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p1, Lcom/bitdefender/scanner/e;->d:Lorg/json/JSONObject;

    .line 1552
    :goto_1
    iget-object v3, p1, Lcom/bitdefender/scanner/e;->d:Lorg/json/JSONObject;

    .line 1553
    if-eqz v3, :cond_0

    .line 1558
    iget-boolean v0, p1, Lcom/bitdefender/scanner/e;->b:Z

    if-eqz v0, :cond_4

    .line 1560
    iget-object v0, p1, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    if-eqz v0, :cond_0

    .line 1565
    iget-object v4, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v4}, Lcom/bitdefender/scanner/k;->g()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1567
    invoke-static {v0}, Lcom/bitdefender/scanner/l;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1578
    :goto_2
    const-string v4, "x"

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1580
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1582
    const-string v0, "_benchmarking"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1585
    :cond_2
    const-string v0, "v"

    const/16 v4, 0xc8

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1586
    const-string v0, "o"

    iget v4, p0, Lcom/bitdefender/scanner/Scanner;->g:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1587
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/bd/android/shared/BDUtils;->getDeviceIDMD5(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 1588
    if-eqz v0, :cond_0

    .line 1592
    const-string v1, "d"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    move v1, v2

    .line 1610
    goto :goto_0

    .line 1549
    :cond_3
    iget-object v0, p1, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/bitdefender/scanner/e;->e:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/bitdefender/scanner/i;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p1, Lcom/bitdefender/scanner/e;->d:Lorg/json/JSONObject;

    goto :goto_1

    .line 1605
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1572
    :cond_4
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v0}, Lcom/bitdefender/scanner/k;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1574
    iget-object v0, p1, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bitdefender/scanner/l;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_2

    .line 1578
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method static synthetic c(Lcom/bitdefender/scanner/Scanner;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1681
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->c:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1683
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1685
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 1689
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1692
    :cond_1
    return-object v1
.end method

.method static synthetic c(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/bitdefender/scanner/Scanner;->b(Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bitdefender/scanner/f;",
            "Lcom/bitdefender/scanner/h;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1366
    invoke-direct {p0}, Lcom/bitdefender/scanner/Scanner;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 1368
    invoke-virtual {p0}, Lcom/bitdefender/scanner/Scanner;->getAllMountedPaths()Ljava/util/ArrayList;

    move-result-object v1

    .line 1369
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1371
    invoke-direct {p0, v0, p1, p2}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 1639
    .line 1642
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1644
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1646
    const-string v1, "_benchmarking"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1649
    :cond_0
    const-string v1, "v"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1650
    const-string v1, "d"

    iget-object v2, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bd/android/shared/BDUtils;->getDeviceIDMD5(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1654
    const-string v1, "m"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1655
    const-string v2, "h"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1657
    const-string v1, "l"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1658
    const-string v2, "l"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1660
    const-string v1, "o"

    iget v2, p0, Lcom/bitdefender/scanner/Scanner;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    :goto_0
    return-object v0

    .line 1662
    :catch_0
    move-exception v0

    .line 1664
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/bitdefender/scanner/Scanner;)Lcom/bd/android/shared/LicenseProdActivator;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->e:Lcom/bd/android/shared/LicenseProdActivator;

    return-object v0
.end method

.method private d(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1672
    invoke-direct {p0, p1}, Lcom/bitdefender/scanner/Scanner;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1673
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1674
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/bitdefender/scanner/Scanner;)Lcom/bd/android/shared/LicenseActivator;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->d:Lcom/bd/android/shared/LicenseActivator;

    return-object v0
.end method

.method static synthetic f(Lcom/bitdefender/scanner/Scanner;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->i:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic g(Lcom/bitdefender/scanner/Scanner;)Lcom/bitdefender/scanner/DBHandler;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->h:Lcom/bitdefender/scanner/DBHandler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/bitdefender/scanner/Scanner;
    .locals 3

    .prologue
    .line 98
    const-class v1, Lcom/bitdefender/scanner/Scanner;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/bd/android/shared/BDNotInitializedException;

    const-string v2, "TODO: explain this exception"

    invoke-direct {v0, v2}, Lcom/bd/android/shared/BDNotInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 102
    :cond_0
    :try_start_1
    sget-object v0, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 90
    const-class v1, Lcom/bitdefender/scanner/Scanner;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/bitdefender/scanner/Scanner;

    invoke-direct {v0, p0}, Lcom/bitdefender/scanner/Scanner;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bitdefender/scanner/Scanner;->a:Lcom/bitdefender/scanner/Scanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit v1

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public GetNumberOnProgress()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x5

    .line 244
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v0}, Lcom/bitdefender/scanner/k;->d()I

    move-result v0

    goto :goto_0
.end method

.method public GetOnInstallScanStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->d:Lcom/bd/android/shared/LicenseActivator;

    const/16 v2, 0x65

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/bd/android/shared/LicenseActivator;->moduleOK(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v0}, Lcom/bitdefender/scanner/k;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public GetOnMountScanStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->d:Lcom/bd/android/shared/LicenseActivator;

    const/16 v2, 0x65

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/bd/android/shared/LicenseActivator;->moduleOK(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v0}, Lcom/bitdefender/scanner/k;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public GetScanAtBootStatus()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v0}, Lcom/bitdefender/scanner/k;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public ScanAll(Lcom/bitdefender/scanner/IResponseScan;)V
    .locals 2

    .prologue
    .line 1360
    new-instance v0, Lcom/bitdefender/scanner/f;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1}, Lcom/bitdefender/scanner/f;-><init>(Lcom/bitdefender/scanner/Scanner;ILcom/bitdefender/scanner/IResponseScan;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bitdefender/scanner/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/bitdefender/scanner/f;

    .line 1361
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    return-void
.end method

.method public ScanAllPackages(Lcom/bitdefender/scanner/IResponseScan;)V
    .locals 2

    .prologue
    .line 1319
    new-instance v0, Lcom/bitdefender/scanner/f;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Lcom/bitdefender/scanner/f;-><init>(Lcom/bitdefender/scanner/Scanner;ILcom/bitdefender/scanner/IResponseScan;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bitdefender/scanner/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/bitdefender/scanner/f;

    .line 1320
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    return-void
.end method

.method public ScanExternalStoragePackage(Ljava/lang/String;Lcom/bitdefender/scanner/IResponseScan;)V
    .locals 2

    .prologue
    .line 976
    new-instance v0, Lcom/bitdefender/scanner/f;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p2}, Lcom/bitdefender/scanner/f;-><init>(Lcom/bitdefender/scanner/Scanner;ILcom/bitdefender/scanner/IResponseScan;)V

    .line 977
    invoke-virtual {v0, p1}, Lcom/bitdefender/scanner/f;->b(Ljava/lang/String;)V

    .line 978
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bitdefender/scanner/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 979
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    return-void
.end method

.method public ScanInstalledPackage(Ljava/lang/String;Lcom/bitdefender/scanner/IResponseScan;)V
    .locals 2

    .prologue
    .line 1055
    new-instance v0, Lcom/bitdefender/scanner/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p2}, Lcom/bitdefender/scanner/f;-><init>(Lcom/bitdefender/scanner/Scanner;ILcom/bitdefender/scanner/IResponseScan;)V

    .line 1056
    invoke-virtual {v0, p1}, Lcom/bitdefender/scanner/f;->a(Ljava/lang/String;)V

    .line 1057
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bitdefender/scanner/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1058
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    return-void
.end method

.method public ScanPackages(Ljava/util/ArrayList;Lcom/bitdefender/scanner/IResponseScan;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bitdefender/scanner/IResponseScan;",
            ")V"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/bitdefender/scanner/f;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p2}, Lcom/bitdefender/scanner/f;-><init>(Lcom/bitdefender/scanner/Scanner;ILcom/bitdefender/scanner/IResponseScan;)V

    .line 250
    invoke-virtual {v0, p1}, Lcom/bitdefender/scanner/f;->a(Ljava/util/ArrayList;)V

    .line 251
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bitdefender/scanner/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 252
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method

.method public ScanStorage(Lcom/bitdefender/scanner/IResponseScan;)V
    .locals 2

    .prologue
    .line 1334
    new-instance v0, Lcom/bitdefender/scanner/f;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1}, Lcom/bitdefender/scanner/f;-><init>(Lcom/bitdefender/scanner/Scanner;ILcom/bitdefender/scanner/IResponseScan;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bitdefender/scanner/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/bitdefender/scanner/f;

    .line 1335
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    return-void
.end method

.method public SetNumberOnProgress(I)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 224
    :cond_0
    if-gez p1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/bitdefender/scanner/k;->a(I)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v0, p1}, Lcom/bitdefender/scanner/k;->a(I)V

    goto :goto_0
.end method

.method public SetOnInstallScanStatus(Z)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v0, p1}, Lcom/bitdefender/scanner/k;->a(Z)V

    goto :goto_0
.end method

.method public SetOnMountScanStatus(Z)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v0, p1}, Lcom/bitdefender/scanner/k;->b(Z)V

    goto :goto_0
.end method

.method public SetScanAtBootStatus(Z)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v0, p1}, Lcom/bitdefender/scanner/k;->c(Z)V

    goto :goto_0
.end method

.method public StopScan(Lcom/bitdefender/scanner/IResponseScan;)V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitdefender/scanner/f;

    .line 1132
    if-eqz v0, :cond_0

    .line 1134
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitdefender/scanner/f;->cancel(Z)Z

    .line 1136
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1619
    .line 1622
    :try_start_0
    iget-object v1, p0, Lcom/bitdefender/scanner/Scanner;->c:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1629
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1

    .line 1634
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0

    .line 1624
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public clearUploadDB()V
    .locals 1

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->h:Lcom/bitdefender/scanner/DBHandler;

    invoke-virtual {v0}, Lcom/bitdefender/scanner/DBHandler;->deletePackages()V

    .line 1968
    return-void
.end method

.method public getAllMountedPaths()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1697
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1698
    const-string v0, "/mnt"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1702
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "mount"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1703
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1705
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1707
    const-string v0, "tmpfs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    const-string v0, ""

    .line 1710
    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1711
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 1713
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 1715
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_1

    .line 1717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v7, v0

    move-object v0, v1

    move v1, v7

    goto :goto_1

    .line 1720
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1722
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1727
    :catch_0
    move-exception v0

    .line 1729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScanSDK - Scanner - getAllMountedPaths: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    .line 1731
    :cond_2
    return-object v2
.end method

.method public getUploadStatus()Z
    .locals 3

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1954
    const/4 v0, 0x0

    .line 1962
    :goto_0
    return v0

    .line 1957
    :cond_0
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1959
    const-string v0, "KATASTIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING UPLOAD STATUS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v2}, Lcom/bitdefender/scanner/k;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :cond_1
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v0}, Lcom/bitdefender/scanner/k;->h()Z

    move-result v0

    goto :goto_0
.end method

.method public setUploadStatus(Z)V
    .locals 1

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1948
    :goto_0
    return-void

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/bitdefender/scanner/Scanner;->f:Lcom/bitdefender/scanner/k;

    invoke-virtual {v0, p1}, Lcom/bitdefender/scanner/k;->d(Z)V

    goto :goto_0
.end method
