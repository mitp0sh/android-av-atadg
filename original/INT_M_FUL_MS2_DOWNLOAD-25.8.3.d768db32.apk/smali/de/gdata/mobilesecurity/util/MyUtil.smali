.class public Lde/gdata/mobilesecurity/util/MyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENCLOSING_QUOTATION_MARKS:Ljava/lang/String; = "^\"(.*)\"$"

.field public static final EXTRA_STARTED_FROM_WIZARD:Ljava/lang/String; = "STARTED_FROM_WIZARD"

.field public static final LOCALE_ISO3_COUNTRY_CODE_AUSTRIA:Ljava/lang/String; = "AUT"

.field public static final LOCALE_ISO3_COUNTRY_CODE_BELGIUM:Ljava/lang/String; = "BEL"

.field public static final LOCALE_ISO3_COUNTRY_CODE_CHINA:Ljava/lang/String; = "CHN"

.field public static final LOCALE_ISO3_COUNTRY_CODE_FRANCE:Ljava/lang/String; = "FRA"

.field public static final LOCALE_ISO3_COUNTRY_CODE_GERMANY:Ljava/lang/String; = "DEU"

.field public static final LOCALE_ISO3_COUNTRY_CODE_ITALY:Ljava/lang/String; = "ITA"

.field public static final LOCALE_ISO3_COUNTRY_CODE_NETHERLANDS:Ljava/lang/String; = "NLD"

.field public static final LOCALE_ISO3_COUNTRY_CODE_POLAND:Ljava/lang/String; = "POL"

.field public static final LOCALE_ISO3_COUNTRY_CODE_SPAIN:Ljava/lang/String; = "ESP"

.field public static final LOCALE_ISO3_COUNTRY_CODE_SWITZERLAND:Ljava/lang/String; = "CHE"

.field public static final LOCALE_ISO3_COUNTRY_CODE_UNITED_KINGDOM:Ljava/lang/String; = "GBR"

.field public static final LOCALE_ISO3_COUNTRY_CODE_UNITED_STATES:Ljava/lang/String; = "USA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2127
    return-void
.end method

.method private static a(Landroid/content/Context;Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEsterInstall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 239
    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 241
    if-eqz v3, :cond_2

    .line 242
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 244
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static addTextChangeListener(Landroid/app/Activity;ILandroid/text/TextWatcher;)Z
    .locals 2

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 606
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 607
    check-cast v0, Landroid/widget/EditText;

    .line 608
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 610
    const/4 v0, 0x1

    .line 613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addWifiNetWork(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 287
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 288
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 292
    packed-switch p1, :pswitch_data_0

    .line 312
    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 314
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 315
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 316
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 317
    return-void

    .line 294
    :pswitch_0
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 300
    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 301
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 302
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 307
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Z)Z
    .locals 2

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    if-eqz p1, :cond_0

    .line 410
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 411
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result v0

    .line 417
    :cond_0
    return v0
.end method

.method public static buildInPlaceholders(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1407
    mul-int/lit8 v0, p0, 0x3

    add-int/lit8 v1, v0, -0x2

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1409
    if-lez p0, :cond_1

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1411
    const/4 v1, 0x1

    :goto_0
    if-gt v1, p0, :cond_1

    .line 1412
    if-ge v1, p0, :cond_0

    .line 1413
    const-string v2, "?, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1415
    :cond_0
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1419
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertStreamToSB(Ljava/io/InputStream;)Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 505
    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 516
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 521
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input stream conversion failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 525
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 531
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 537
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 543
    :goto_4
    return-object v4

    .line 525
    :cond_0
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 531
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 537
    :goto_6
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 538
    :catch_1
    move-exception v0

    goto :goto_4

    .line 524
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 525
    :goto_7
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 531
    :goto_8
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 537
    :goto_9
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 540
    :goto_a
    throw v0

    .line 526
    :catch_2
    move-exception v0

    goto :goto_5

    .line 532
    :catch_3
    move-exception v0

    goto :goto_6

    .line 526
    :catch_4
    move-exception v0

    goto :goto_2

    .line 532
    :catch_5
    move-exception v0

    goto :goto_3

    .line 538
    :catch_6
    move-exception v0

    goto :goto_4

    .line 526
    :catch_7
    move-exception v1

    goto :goto_8

    .line 532
    :catch_8
    move-exception v1

    goto :goto_9

    .line 538
    :catch_9
    move-exception v1

    goto :goto_a

    .line 524
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_7

    .line 520
    :catch_a
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_b
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public static copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 634
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 635
    if-nez p2, :cond_0

    .line 636
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 648
    :goto_0
    const/16 v0, 0x800

    :try_start_2
    new-array v1, v0, [B

    .line 649
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_1
    if-lez v0, :cond_5

    .line 650
    if-eqz p3, :cond_4

    .line 651
    new-instance v0, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v0, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 652
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v6, v0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 653
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    move-object v6, v0

    .line 654
    goto :goto_2

    .line 639
    :cond_0
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 642
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 643
    const/4 v1, 0x1

    const/4 v4, 0x1

    invoke-virtual {v6, v1, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 645
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 667
    :catch_0
    move-exception v1

    move-object v1, v5

    .line 668
    :goto_3
    if-eqz v1, :cond_1

    .line 669
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 672
    :cond_1
    :goto_4
    if-eqz v0, :cond_2

    .line 673
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_5
    move v0, v3

    .line 677
    :goto_6
    return v0

    .line 655
    :cond_3
    :try_start_6
    const-string v0, "UTF-8"

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 656
    array-length v0, v1

    .line 658
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 649
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    .line 661
    :cond_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 662
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 663
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move v0, v2

    .line 665
    goto :goto_6

    .line 670
    :catch_1
    move-exception v1

    goto :goto_4

    .line 674
    :catch_2
    move-exception v0

    goto :goto_5

    .line 667
    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v4

    move-object v1, v5

    goto :goto_3
.end method

.method public static copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 689
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static copyOfRange([BII)[B
    .locals 3

    .prologue
    .line 1760
    sub-int v0, p2, p1

    .line 1761
    new-array v1, v0, [B

    .line 1762
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1763
    return-object v1
.end method

.method public static daysToMs(J)J
    .locals 2

    .prologue
    .line 442
    const-wide/16 v0, 0x18

    mul-long/2addr v0, p0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->hoursToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static decodeAndDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    :try_start_0
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyCrypto;->decodeFromBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 192
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyCrypto;->decrypt([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 198
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    .line 199
    const-string v0, ""

    goto :goto_0
.end method

.method public static decompressGzipStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v1, 0x1000

    .line 1429
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1430
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1433
    const/16 v2, 0x1000

    :try_start_0
    new-array v2, v2, [B

    .line 1435
    :goto_0
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1436
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1440
    :catch_0
    move-exception v0

    .line 1441
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 1442
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1438
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method

.method public static disconnectFromWifi(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 260
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 261
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 264
    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 267
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^\"(.*)\"$"

    const-string v5, "$1"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 269
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 271
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 275
    :cond_0
    return-void
.end method

.method public static disconnectedFromWiFi(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->b(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static distanceBetweenTwoPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    .prologue
    .line 1779
    new-instance v0, Landroid/location/Location;

    const-string v1, "point A"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1780
    iget v1, p0, Landroid/graphics/PointF;->x:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 1781
    iget v1, p0, Landroid/graphics/PointF;->y:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 1783
    new-instance v1, Landroid/location/Location;

    const-string v2, "point B"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1784
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 1785
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 1786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " B "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    return v0
.end method

.method public static drawableToMediumBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/16 v1, 0x2d0

    const/4 v4, 0x0

    .line 347
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 348
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    .line 353
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 354
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 355
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 356
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lez v0, :cond_1

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v0, v1, :cond_1

    .line 357
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v0, p2

    .line 359
    :goto_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 361
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 362
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static encryptAndEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyCrypto;->encrypt(Ljava/lang/String;)[B

    move-result-object v0

    .line 211
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyCrypto;->encodeToBase64([B)Ljava/lang/String;

    move-result-object v0

    .line 213
    return-object v0
.end method

.method public static fileExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1293
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 1294
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1302
    :cond_0
    :goto_0
    return v0

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    const/4 v0, 0x0

    goto :goto_0

    .line 1298
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static fixActionModeTextColor(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1729
    new-instance v0, Lde/gdata/mobilesecurity/util/k;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/k;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1757
    return-void
.end method

.method public static getBoolFromCBox(Landroid/app/Activity;I)Z
    .locals 2

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 568
    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 569
    check-cast v0, Landroid/widget/CheckBox;

    .line 570
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 573
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContactItemsByQuery(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2072
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2074
    const-string v3, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 2075
    const-string v3, "phonenumber"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 2076
    const-string v3, "displaynumber"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 2077
    const-string v3, "permissions"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 2078
    const-string v3, "messagetypes"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 2079
    const-string v3, "status"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 2081
    if-eqz p0, :cond_1

    .line 2082
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2084
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2085
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2086
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2087
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2088
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2089
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2091
    new-instance v3, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v15}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;-><init>(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIJILandroid/graphics/Bitmap;)V

    .line 2092
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2094
    :cond_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 2096
    :cond_1
    return-object v2
.end method

.method public static getCurrentDay()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1791
    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 1793
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1794
    packed-switch v1, :pswitch_data_0

    .line 1817
    :goto_0
    :pswitch_0
    return v0

    .line 1799
    :pswitch_1
    const/4 v0, 0x1

    .line 1800
    goto :goto_0

    .line 1802
    :pswitch_2
    const/4 v0, 0x2

    .line 1803
    goto :goto_0

    .line 1805
    :pswitch_3
    const/4 v0, 0x3

    .line 1806
    goto :goto_0

    .line 1808
    :pswitch_4
    const/4 v0, 0x4

    .line 1809
    goto :goto_0

    .line 1811
    :pswitch_5
    const/4 v0, 0x5

    .line 1812
    goto :goto_0

    .line 1814
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 1794
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getDateDiff(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 1774
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1775
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDateTime(JIILjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 482
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 483
    invoke-static {p2, p3, p4}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 485
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 486
    return-object v0
.end method

.method public static getDefaultDateTimeForDefaultLocale(J)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 496
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v1, v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getDateTime(JIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableForProfile(Landroid/content/Context;Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)I
    .locals 3

    .prologue
    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 369
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getColor()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_RED:I

    if-ne v1, v2, :cond_1

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 388
    :cond_0
    :goto_0
    return v0

    .line 371
    :cond_1
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getColor()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_ORANGE:I

    if-ne v1, v2, :cond_2

    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getColor()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_GREEN:I

    if-ne v1, v2, :cond_3

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 375
    :cond_3
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getColor()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_LIGHTBLUE:I

    if-ne v1, v2, :cond_4

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 377
    :cond_4
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getColor()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_GOLD:I

    if-ne v1, v2, :cond_5

    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 379
    :cond_5
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getColor()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_BRONZE:I

    if-ne v1, v2, :cond_6

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 381
    :cond_6
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getColor()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_LIGHT_GREY:I

    if-ne v1, v2, :cond_7

    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 383
    :cond_7
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getColor()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_GREY:I

    if-ne v1, v2, :cond_8

    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 385
    :cond_8
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getColor()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->COLOR_BLACK:I

    if-ne v1, v2, :cond_0

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method public static getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 325
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getFirstRegisteredAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->getRegisteredAccountNames(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1489
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1490
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1492
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getFreeMemoryInBytes(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 1379
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1380
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1381
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1382
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getLastKnownLocation(Landroid/location/LocationManager;Landroid/net/ConnectivityManager;)Landroid/location/Location;
    .locals 3

    .prologue
    .line 1656
    const/4 v0, 0x0

    .line 1657
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1658
    const-string v2, "gps"

    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1659
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1661
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1662
    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1664
    :cond_1
    return-object v0
.end method

.method public static getListOfMockPermissionApps(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 1832
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1833
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1834
    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1836
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1838
    :try_start_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x1000

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1842
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1844
    if-eqz v5, :cond_0

    .line 1845
    const/4 v1, 0x0

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 1846
    aget-object v6, v5, v1

    const-string v7, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1848
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1845
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1855
    :cond_2
    return-object v2

    .line 1852
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 8

    .prologue
    .line 2007
    const/4 v6, 0x0

    .line 2009
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 2010
    new-instance v5, Lde/gdata/mobilesecurity/util/l;

    invoke-direct {v5}, Lde/gdata/mobilesecurity/util/l;-><init>()V

    .line 2033
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    .line 2036
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2038
    if-nez v7, :cond_0

    if-nez v1, :cond_0

    move-object v1, v6

    .line 2061
    :goto_0
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    .line 2065
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCATION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2067
    return-object v0

    .line 2041
    :cond_0
    if-eqz v1, :cond_1

    .line 2042
    :try_start_2
    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 2045
    if-eqz v0, :cond_1

    .line 2046
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 2050
    :cond_1
    if-eqz v7, :cond_3

    .line 2051
    if-nez v6, :cond_3

    .line 2052
    :try_start_3
    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 2055
    if-eqz v0, :cond_3

    .line 2056
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 2065
    :cond_2
    const-string v1, " NO DATA"

    goto :goto_2

    .line 2062
    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v6

    goto :goto_0
.end method

.method public static getLocationAdressFromAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1561
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 1564
    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1565
    if-nez v0, :cond_1

    .line 1566
    const-string v0, ""

    .line 1589
    :cond_0
    :goto_0
    return-object v0

    .line 1568
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "city"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "street"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "city2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, ""

    :goto_1
    const-string v1, "null"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1580
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1582
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getLocationAdressFromAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1578
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1589
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public static getLocationFromAddress(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/PointF;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    .line 1537
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 1542
    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1543
    if-nez v0, :cond_1

    .line 1544
    const/4 v0, 0x0

    .line 1557
    :cond_0
    :goto_0
    return-object v0

    .line 1546
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 1548
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    double-to-float v0, v4

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1554
    :goto_1
    if-nez v0, :cond_0

    .line 1555
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 1550
    :catch_0
    move-exception v0

    .line 1551
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1552
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1
.end method

.method public static getMaxLayoutWidth(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 940
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getNormalizedIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 979
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 980
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 982
    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "\\D"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNormalizedPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 966
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 967
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 969
    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "\\D"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRegisteredAccountNames(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1468
    const-string v0, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 1470
    const-string v0, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v3, "com.google"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 1473
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 1474
    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1475
    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1478
    :cond_1
    return-object v2
.end method

.method public static getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    const v0, 0x7f0d00f9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d00f4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 587
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 588
    check-cast v0, Landroid/widget/EditText;

    .line 589
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTaskOnTop(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 990
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 991
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 993
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 994
    return-object v0
.end method

.method public static getWeekdaysAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1682
    const-string v5, ""

    .line 1684
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v1

    .line 1685
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 1687
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    if-eqz v3, :cond_0

    .line 1689
    add-int/lit8 v2, v2, 0x1

    .line 1685
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1686
    goto :goto_1

    :cond_2
    move-object v3, v5

    move v5, v1

    .line 1693
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_a

    .line 1694
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1695
    add-int/lit8 v0, v1, 0x1

    .line 1696
    if-nez v5, :cond_4

    .line 1697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0d039d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1711
    :goto_3
    if-ge v0, v2, :cond_3

    .line 1712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1693
    :cond_3
    :goto_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v1

    move v1, v0

    goto :goto_2

    .line 1698
    :cond_4
    if-ne v5, v4, :cond_5

    .line 1699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0d0516

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1700
    :cond_5
    const/4 v1, 0x2

    if-ne v5, v1, :cond_6

    .line 1701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0d0554

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1702
    :cond_6
    const/4 v1, 0x3

    if-ne v5, v1, :cond_7

    .line 1703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0d0509

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1704
    :cond_7
    const/4 v1, 0x4

    if-ne v5, v1, :cond_8

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0d0286

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 1706
    :cond_8
    const/4 v1, 0x5

    if-ne v5, v1, :cond_9

    .line 1707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0d04b5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 1708
    :cond_9
    const/4 v1, 0x6

    if-ne v5, v1, :cond_d

    .line 1709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0d0500

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 1716
    :cond_a
    const/4 v0, 0x7

    if-ne v1, v0, :cond_c

    .line 1717
    const v0, 0x7f0d020f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1721
    :cond_b
    :goto_5
    return-object v3

    .line 1718
    :cond_c
    if-nez v1, :cond_b

    .line 1719
    const v0, 0x7f0d024a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_d
    move-object v1, v3

    goto/16 :goto_3

    :cond_e
    move v0, v1

    move-object v1, v3

    goto/16 :goto_4
.end method

.method public static gzipCompressString(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 1453
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1454
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1455
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 1456
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 1457
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1458
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1459
    return-object v1
.end method

.method public static hideKeyboard(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1396
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 1397
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1398
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1399
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1401
    :cond_0
    return-void
.end method

.method public static hoursToMs(J)J
    .locals 2

    .prologue
    .line 451
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, p0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->minToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isAntiVirusFree(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAvFreeDefaultUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAvFreeDefaultPwd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnectedViaWiFi(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->a(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isDebugMode(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1108
    const-string v2, "de.gdata.setdebugmode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1109
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1112
    :cond_0
    :goto_0
    return v0

    .line 1110
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isEmailValid(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 2145
    const/4 v0, 0x0

    .line 2146
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2147
    const-string v2, "^[A-Za-z0-9.!#$%&\'*+-/=?^_`{|}~]+(\\.[A-Za-z0-9.!#$%&\'*+-/=?^_`{|}~]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$"

    .line 2150
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 2151
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2152
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2153
    const/4 v0, 0x1

    .line 2155
    :cond_0
    return v0
.end method

.method public static isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1084
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1085
    :goto_0
    return v0

    .line 1084
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1085
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1095
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1096
    :goto_0
    return v0

    .line 1095
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1096
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isEsterInstall(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1163
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/gd_ester_8a941993d6f09ea59ecf197d58b10d9b748242c00186a35d2e609a9d972a7585"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGoogleMarketPackage(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v1, "de.gdata.mobilesecurity2g"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "de.gdata.mobilesecurity2gus"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMockLocationSettingsON(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1822
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mock_location"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1823
    const/4 v0, 0x0

    .line 1826
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1073
    if-nez p0, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->a(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isTimeBefore(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2169
    .line 2171
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2172
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2174
    array-length v4, v2

    if-ne v4, v5, :cond_3

    array-length v4, v3

    if-ne v4, v5, :cond_3

    .line 2176
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2177
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2179
    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2180
    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2182
    if-ge v4, v5, :cond_1

    .line 2192
    :cond_0
    :goto_0
    return v0

    .line 2184
    :cond_1
    if-le v4, v5, :cond_2

    move v0, v1

    .line 2185
    goto :goto_0

    .line 2186
    :cond_2
    if-ne v4, v5, :cond_3

    .line 2187
    if-le v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isValidOemGraphic(Landroid/app/Activity;I)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    .line 1312
    const-wide/16 v0, 0x0

    .line 1314
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1316
    const-wide/16 v4, 0x400

    :try_start_1
    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 1317
    :goto_0
    cmp-long v3, v0, v6

    if-gez v3, :cond_0

    .line 1318
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-ltz v3, :cond_0

    .line 1319
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 1323
    :catch_0
    move-exception v3

    .line 1325
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1328
    :goto_1
    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 1326
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static isWebServerEnabled(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1123
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1124
    const/4 v1, 0x0

    .line 1127
    :try_start_1
    const-string v3, "de.gdata.setdebugmode"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 1132
    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v3, :cond_3

    .line 1133
    :cond_0
    :try_start_3
    const-string v3, "de.gdata.enablewebserver"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1135
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v2, :cond_2

    .line 1154
    :cond_1
    :goto_1
    return v0

    .line 1137
    :cond_2
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 1138
    const-string v3, "classes.dex"

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 1139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1141
    const-wide/16 v4, 0xe

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 1146
    :cond_3
    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 1148
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v1

    .line 1149
    const v2, 0x31e90eb4

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 1151
    :catch_0
    move-exception v1

    .line 1152
    const-string v1, ""

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 1143
    :catch_1
    move-exception v2

    goto :goto_2

    .line 1129
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public static loadAllOldFilter(Landroid/content/Context;)V
    .locals 24

    .prologue
    .line 1880
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1882
    const-string v2, "loadAllOldFilter"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 1884
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1885
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1886
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1887
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1889
    new-instance v16, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 1890
    invoke-virtual/range {v16 .. v16}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v17

    .line 1892
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v17, v2, v3

    .line 1893
    const-string v3, "SELECT * FROM incomingwhitelist WHERE configuration = ?"

    invoke-virtual {v15, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getContactItemsByQuery(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1894
    const-string v4, "SELECT * FROM incomingblacklist WHERE configuration = ?"

    invoke-virtual {v15, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getContactItemsByQuery(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1895
    const-string v4, "SELECT * FROM outgoingwhitelist WHERE configuration = ?"

    invoke-virtual {v15, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getContactItemsByQuery(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1896
    const-string v4, "SELECT * FROM outgoingblacklist WHERE configuration = ?"

    invoke-virtual {v15, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getContactItemsByQuery(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1898
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1899
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1900
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1901
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1905
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;

    move-object v8, v0

    .line 1906
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getDisplayNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getFlags()I

    move-result v6

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getPermissions()I

    move-result v7

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getStatus()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1909
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1997
    :catch_0
    move-exception v2

    .line 1998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migration failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2001
    :goto_1
    const-string v2, "loadAllOldFilter"

    invoke-static {v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 2003
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCallFilterNeedsToMigrate(Z)V

    .line 2004
    return-void

    .line 1911
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;

    move-object v8, v0

    .line 1912
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getDisplayNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getFlags()I

    move-result v6

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getPermissions()I

    move-result v7

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getStatus()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1915
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1917
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;

    move-object v8, v0

    .line 1918
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getDisplayNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getFlags()I

    move-result v6

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getPermissions()I

    move-result v7

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getStatus()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1921
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1923
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;

    move-object v8, v0

    .line 1924
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getDisplayNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getFlags()I

    move-result v6

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getPermissions()I

    move-result v7

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getStatus()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1927
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1930
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBlockIncomingCalls()Ljava/lang/String;

    move-result-object v2

    const-string v3, "white"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v8, 0x1

    .line 1931
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBlockIncomingCalls()Ljava/lang/String;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move v11, v2

    .line 1933
    :goto_6
    invoke-virtual/range {v16 .. v16}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBlockOutgoingCalls()Ljava/lang/String;

    move-result-object v2

    const-string v3, "white"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    move v12, v2

    .line 1934
    :goto_7
    invoke-virtual/range {v16 .. v16}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBlockOutgoingCalls()Ljava/lang/String;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    move v13, v2

    .line 1936
    :goto_8
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const v3, 0x7f0d029a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v6, 0x5265c00

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "1111111"

    const/4 v9, 0x0

    move-object/from16 v4, v17

    invoke-direct/range {v2 .. v9}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    .line 1938
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsIncoming(Z)V

    .line 1939
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsOutgoing(Z)V

    .line 1940
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsSms(Z)V

    .line 1941
    invoke-virtual/range {v16 .. v16}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowUnknownNumbers()Z

    move-result v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setAllowAnonymousCalls(Z)V

    .line 1942
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsBlacklist(Z)V

    .line 1943
    invoke-virtual {v2, v11}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIncludesTB(Z)V

    .line 1944
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setContacts(Ljava/util/ArrayList;)V

    .line 1946
    new-instance v3, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const v4, 0x7f0d0299

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/32 v22, 0x5265c00

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v18, "1111111"

    if-nez v8, :cond_c

    const/4 v9, 0x1

    :goto_9
    const/4 v10, 0x1

    move-object/from16 v5, v17

    move-object/from16 v8, v18

    invoke-direct/range {v3 .. v10}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    .line 1948
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsIncoming(Z)V

    .line 1949
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsOutgoing(Z)V

    .line 1950
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsSms(Z)V

    .line 1951
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsBlacklist(Z)V

    .line 1952
    invoke-virtual {v3, v11}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIncludesTB(Z)V

    .line 1953
    invoke-virtual/range {v16 .. v16}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowUnknownNumbers()Z

    move-result v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setAllowAnonymousCalls(Z)V

    .line 1954
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setContacts(Ljava/util/ArrayList;)V

    .line 1956
    new-instance v4, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const v5, 0x7f0d03e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/32 v8, 0x5265c00

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "1111111"

    const/4 v11, 0x0

    move-object/from16 v6, v17

    move v10, v12

    invoke-direct/range {v4 .. v11}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    .line 1959
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsIncoming(Z)V

    .line 1960
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsOutgoing(Z)V

    .line 1961
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsSms(Z)V

    .line 1962
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsBlacklist(Z)V

    .line 1963
    invoke-virtual {v4, v13}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIncludesTB(Z)V

    .line 1964
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setContacts(Ljava/util/ArrayList;)V

    .line 1966
    new-instance v5, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const v6, 0x7f0d03e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-wide/32 v10, 0x5265c00

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "1111111"

    if-nez v12, :cond_d

    const/4 v11, 0x1

    :goto_a
    const/4 v12, 0x1

    move-object/from16 v7, v17

    invoke-direct/range {v5 .. v12}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    .line 1969
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsIncoming(Z)V

    .line 1970
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsOutgoing(Z)V

    .line 1971
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsSms(Z)V

    .line 1972
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsBlacklist(Z)V

    .line 1973
    invoke-virtual {v5, v13}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIncludesTB(Z)V

    .line 1974
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setContacts(Ljava/util/ArrayList;)V

    .line 1976
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getContacts()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 1977
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1979
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1980
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1982
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1983
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1986
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1988
    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 1989
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateInDB(Landroid/content/Context;)I

    goto :goto_b

    .line 1930
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 1931
    :cond_9
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_6

    .line 1933
    :cond_a
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_7

    .line 1934
    :cond_b
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_8

    .line 1946
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 1966
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 1992
    :cond_e
    const-string v2, "DROP TABLE IF EXISTS incomingwhitelist;"

    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1993
    const-string v2, "DROP TABLE IF EXISTS incomingblacklist;"

    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1994
    const-string v2, "DROP TABLE IF EXISTS outgoingwhitelist;"

    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1995
    const-string v2, "DROP TABLE IF EXISTS outgoingblacklist;"

    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static locationCouldBeSpoofed(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1859
    const/4 v0, 0x0

    .line 1861
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isMockLocationSettingsON(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1862
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->getListOfMockPermissionApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1863
    const/4 v0, 0x1

    .line 1867
    :cond_0
    return v0
.end method

.method public static locationServicesEnabled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2100
    const/4 v0, 0x0

    .line 2104
    if-nez v0, :cond_2

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    move-object v3, v0

    .line 2106
    :goto_0
    :try_start_0
    const-string v0, "gps"

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    .line 2110
    :goto_1
    :try_start_1
    const-string v0, "network"

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 2113
    :goto_2
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_3
    return v0

    .line 2107
    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_1

    .line 2111
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 2113
    goto :goto_3

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method

.method public static logFreeMemory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1391
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->getFreeMemoryInBytes(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB free ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1393
    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1502
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1503
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1504
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 1505
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1506
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1507
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1508
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1512
    :goto_1
    return-object v0

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1512
    const-string v0, ""

    goto :goto_1
.end method

.method public static md5Old(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1523
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1524
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1525
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 1526
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1527
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1528
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1529
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1533
    :goto_1
    return-object v0

    .line 1530
    :catch_0
    move-exception v0

    .line 1531
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1533
    const-string v0, ""

    goto :goto_1
.end method

.method public static minToMs(J)J
    .locals 2

    .prologue
    .line 460
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, p0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->secToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static moveTaskToBack(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 1040
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1043
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "moveTaskToBack"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1045
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    :goto_0
    return-void

    .line 1047
    :catch_0
    move-exception v0

    .line 1049
    :try_start_1
    const-string v0, "android.app.ActivityManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1050
    const-string v1, "android.app.IActivityManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1052
    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1053
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1056
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "moveTaskToBack"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1059
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1061
    :catch_1
    move-exception v0

    .line 1062
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static moveTaskToFront(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 1005
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1008
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "moveTaskToFront"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1010
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    return-void

    .line 1012
    :catch_0
    move-exception v0

    .line 1014
    :try_start_1
    const-string v0, "android.app.ActivityManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1015
    const-string v1, "android.app.IActivityManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1017
    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1018
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1021
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "moveTaskToFront"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1024
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1026
    :catch_1
    move-exception v0

    .line 1027
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static networkLocationServicesEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 2117
    const/4 v0, 0x0

    .line 2118
    const/4 v1, 0x0

    .line 2119
    if-nez v0, :cond_0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 2121
    :cond_0
    :try_start_0
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2124
    :goto_0
    return v0

    .line 2122
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static normalizePhoneNumber(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 951
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 956
    :goto_0
    return-object v0

    .line 953
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    const-string v0, "^(?:\\*|#).*#"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^0-9\\+\\.\\*]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 956
    :cond_1
    const-string v0, "^(?:\\*|#).*#"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^0-9\\+]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static openLocationSettings(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 422
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 426
    return-void
.end method

.method public static readStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1668
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1669
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 1671
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1672
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1674
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static replaceOemGraphic(Landroid/app/Activity;Landroid/widget/ImageView;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1340
    if-nez p1, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return v0

    .line 1341
    :cond_1
    invoke-static {p0, p2}, Lde/gdata/mobilesecurity/util/MyUtil;->isValidOemGraphic(Landroid/app/Activity;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1343
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1344
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static replaceOemGraphic(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1355
    if-nez p1, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return v0

    .line 1357
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1361
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 1362
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1363
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1369
    const/4 v0, 0x1

    goto :goto_0

    .line 1364
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static restrictButtonWidth(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    .line 837
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 838
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 840
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static restrictDialogLayoutWidth(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    .line 883
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 884
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 886
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static restrictDialogLayoutWidth(Landroid/app/Activity;F)Z
    .locals 2

    .prologue
    .line 896
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 897
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 899
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs sanityCheck([Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 552
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    .line 553
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    :cond_0
    :goto_1
    return v0

    .line 552
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static secToMs(J)J
    .locals 2

    .prologue
    .line 469
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static final setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1598
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1648
    :cond_0
    :goto_0
    return-void

    .line 1600
    :cond_1
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1601
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1602
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 1603
    :cond_2
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    move-object v0, p0

    .line 1604
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1605
    :goto_1
    if-gt v1, v2, :cond_0

    move-object v0, p0

    .line 1606
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1607
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 1609
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1605
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1610
    :cond_4
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 1612
    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    goto :goto_2

    .line 1615
    :cond_5
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    move-object v0, p0

    .line 1616
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    .line 1617
    :goto_3
    if-gt v1, v2, :cond_0

    move-object v0, p0

    .line 1618
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1619
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_7

    .line 1620
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1617
    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1621
    :cond_7
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    .line 1622
    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    goto :goto_4

    .line 1625
    :cond_8
    instance-of v0, p0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 1626
    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    .line 1627
    :goto_5
    if-gt v1, v2, :cond_0

    move-object v0, p0

    .line 1628
    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1629
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_a

    .line 1630
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1627
    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1631
    :cond_a
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_9

    .line 1632
    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    goto :goto_6

    .line 1637
    :cond_b
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 1638
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1639
    :goto_7
    if-gt v1, v2, :cond_0

    move-object v0, p0

    .line 1640
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1641
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_d

    .line 1642
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1639
    :cond_c
    :goto_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1643
    :cond_d
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_c

    .line 1644
    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    goto :goto_8
.end method

.method public static setButtonWidth(Landroid/app/Activity;II)V
    .locals 3

    .prologue
    .line 850
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 852
    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 854
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 856
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    :cond_0
    return-void
.end method

.method public static setButtonWidth(Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 867
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 869
    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 871
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 873
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    :cond_0
    return-void
.end method

.method public static setDialogLayoutWidth(Landroid/app/Activity;II)V
    .locals 3

    .prologue
    .line 908
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 910
    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 912
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 914
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    :cond_0
    return-void
.end method

.method public static setDialogLayoutWidth(Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 925
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 927
    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 929
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 931
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    :cond_0
    return-void
.end method

.method public static showDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/util/EulaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1223
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 1225
    new-instance v1, Landroid/widget/TextView;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f0e0008

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1226
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1229
    invoke-virtual {v7, v4, v4, v4, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 1230
    invoke-virtual {v7, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1232
    const v0, 0x7f0d0245

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d00f9

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d00f4

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_1

    new-instance v4, Lde/gdata/mobilesecurity/util/g;

    invoke-direct {v4, p1}, Lde/gdata/mobilesecurity/util/g;-><init>(Lde/gdata/mobilesecurity/util/EulaListener;)V

    :goto_0
    if-eqz p4, :cond_0

    new-instance v5, Lde/gdata/mobilesecurity/util/h;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/util/h;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    :cond_0
    new-instance v6, Lde/gdata/mobilesecurity/util/i;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/util/i;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v7}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 1254
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 1255
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1256
    const-string v2, "DIALOG_EULA"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1258
    return-object v0

    :cond_1
    move-object v4, v5

    .line 1232
    goto :goto_0
.end method

.method public static showEulaDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/util/EulaListener;)Landroid/support/v4/app/DialogFragment;
    .locals 8

    .prologue
    const/16 v4, 0x8

    .line 1173
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->convertStreamToSB(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 1176
    new-instance v1, Landroid/widget/TextView;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f0e0008

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1178
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1180
    invoke-virtual {v7, v4, v4, v4, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 1181
    invoke-virtual {v7, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1183
    const v0, 0x7f0d0245

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d00f9

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d00f4

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d0240

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d021e

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lde/gdata/mobilesecurity/util/d;

    invoke-direct {v4, p1}, Lde/gdata/mobilesecurity/util/d;-><init>(Lde/gdata/mobilesecurity/util/EulaListener;)V

    new-instance v5, Lde/gdata/mobilesecurity/util/e;

    invoke-direct {v5, p1}, Lde/gdata/mobilesecurity/util/e;-><init>(Lde/gdata/mobilesecurity/util/EulaListener;)V

    new-instance v6, Lde/gdata/mobilesecurity/util/f;

    invoke-direct {v6, p1}, Lde/gdata/mobilesecurity/util/f;-><init>(Lde/gdata/mobilesecurity/util/EulaListener;)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 1204
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 1205
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1206
    const-string v2, "DIALOG_EULA"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1208
    return-object v0
.end method

.method public static showLibDialog(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1263
    new-instance v0, Landroid/widget/TextView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0e0008

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1265
    const v1, 0x7f0d038d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1266
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1267
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 1268
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1270
    const v0, 0x7f0d0245

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0d00f9

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d00f4

    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0d0240

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lde/gdata/mobilesecurity/util/j;

    invoke-direct {v3}, Lde/gdata/mobilesecurity/util/j;-><init>()V

    invoke-static {p0, v0, v2, v3, v1}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 1279
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 1280
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1281
    const-string v2, "DIALOG_EULA"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1283
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 698
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 699
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 700
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 701
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 703
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 704
    return-void
.end method

.method public static startAndroidBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 813
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "text/html"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 816
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 817
    const-string v1, "com.android.browser.application_id"

    const-string v3, "com.android.browser"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 829
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v1

    .line 821
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 822
    const-string v1, "com.android.browser.application_id"

    const-string v2, "com.google.android.browser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 826
    :catch_1
    move-exception v0

    .line 827
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->startChromeBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startBrowser(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 713
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 714
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 715
    return-void
.end method

.method public static startChromeBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 767
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    const/high16 v1, 0x10000000

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 771
    const-string v1, "com.android.chrome/.Main"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 773
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    const-string v1, "com.android.browser.application_id"

    const-string v2, "com.android.chrome"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v0

    .line 780
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 783
    const-string v1, "com.android.chrome/com.google.android.apps.chrome.Main"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 786
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 788
    const-string v1, "com.android.browser.application_id"

    const-string v2, "com.android.chrome"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 792
    :catch_1
    move-exception v0

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startHtcBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 745
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    const/high16 v1, 0x10000000

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 749
    const-string v1, "com.htc.sense.browser/.BrowserActivity"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 751
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    const-string v1, "com.android.browser.application_id"

    const-string v2, "com.htc.sense.browser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_0
    return-void

    .line 756
    :catch_0
    move-exception v0

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startSamsungBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    const/high16 v1, 0x10000000

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 727
    const-string v1, "com.sec.android.app.sbrowser/.SBrowserMainActivity"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 729
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const-string v1, "com.android.browser.application_id"

    const-string v2, "com.sec.android.app.sbrowser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startVibrate(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 2140
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2141
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2142
    return-void
.end method

.method public static timeStringToDate(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 338
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 339
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 340
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 342
    return-object v0
.end method

.method public static updateAlarmReceiver(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 2159
    new-instance v0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;-><init>(Landroid/content/Context;)V

    .line 2160
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->enable()J

    .line 2161
    new-instance v0, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;-><init>(Landroid/content/Context;)V

    .line 2162
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/UpdateAlarmReceiver;->enable()J

    .line 2163
    new-instance v0, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;-><init>(Landroid/content/Context;)V

    .line 2164
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->enable()J

    .line 2165
    return-void
.end method
