.class Lcom/bitdefender/scanner/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
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


# instance fields
.field final synthetic a:Lcom/bitdefender/scanner/Scanner;


# direct methods
.method private constructor <init>(Lcom/bitdefender/scanner/Scanner;)V
    .locals 0

    .prologue
    .line 1753
    iput-object p1, p0, Lcom/bitdefender/scanner/g;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/d;)V
    .locals 0

    .prologue
    .line 1753
    invoke-direct {p0, p1}, Lcom/bitdefender/scanner/g;-><init>(Lcom/bitdefender/scanner/Scanner;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 18

    .prologue
    .line 1759
    const/4 v4, 0x0

    .line 1760
    const/4 v5, 0x0

    .line 1761
    const/4 v3, 0x0

    .line 1763
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1765
    const-string v2, "KATASTIF"

    const-string v6, "<<<< UploadTask doInBackground ENTERED>>>>"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bitdefender/scanner/g;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v2}, Lcom/bitdefender/scanner/Scanner;->g(Lcom/bitdefender/scanner/Scanner;)Lcom/bitdefender/scanner/DBHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bitdefender/scanner/DBHandler;->getAllPackages()Ljava/util/ArrayList;

    move-result-object v2

    .line 1769
    new-instance v6, Lcom/bd/android/shared/HTTPManager2$Builder;

    invoke-direct {v6}, Lcom/bd/android/shared/HTTPManager2$Builder;-><init>()V

    const-string v7, "https://nimbus.bitdefender.net/katastif/manager"

    invoke-virtual {v6, v7}, Lcom/bd/android/shared/HTTPManager2$Builder;->SetURL(Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bd/android/shared/HTTPManager2$Builder;->build()Lcom/bd/android/shared/HTTPManager2;

    move-result-object v7

    .line 1772
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 1774
    const-string v6, "KATASTIF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<<<< UploadTask list size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >>>>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_1
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 1781
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bitdefender/scanner/UploadData;

    .line 1784
    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getIsFile()I

    move-result v6

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bitdefender/scanner/g;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getPkgname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/bitdefender/scanner/Scanner;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1786
    :goto_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1791
    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1795
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1797
    const-string v11, "KATASTIF"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "++++UploadTask file upload : size delta: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/32 v14, 0x1900000

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ISFILE =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getIsFile()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " PKG NAME: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getPkgname()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bitdefender/scanner/g;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v11}, Lcom/bitdefender/scanner/Scanner;->c(Lcom/bitdefender/scanner/Scanner;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/bitdefender/scanner/l;->b(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bitdefender/scanner/g;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v11}, Lcom/bitdefender/scanner/Scanner;->c(Lcom/bitdefender/scanner/Scanner;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/bitdefender/scanner/l;->c(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1804
    const-string v11, "id"

    const-string v12, "1234"

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1806
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1807
    const-string v12, "md5"

    invoke-static {v6}, Lcom/bd/android/shared/BDHashing;->file_md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1808
    const-string v6, "file_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1809
    const-string v6, "service"

    const-string v12, "apk-reaper"

    invoke-virtual {v11, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1811
    const-string v6, "params"

    invoke-virtual {v9, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1812
    const-string v6, "method"

    const-string v11, "add"

    invoke-virtual {v9, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1814
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1816
    const-string v6, "KATASTIF"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UploadTask file upload START: ISFILE =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getIsFile()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " PKG NAME: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getPkgname()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_4
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/bd/android/shared/HTTPManager2;->PerformPOST(Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v6

    .line 1820
    iget v9, v6, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    const/16 v11, 0xc8

    if-ne v9, v11, :cond_9

    .line 1822
    new-instance v9, Lorg/json/JSONObject;

    iget-object v6, v6, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1824
    const-string v6, "result"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1825
    if-eqz v6, :cond_7

    .line 1827
    const-string v9, "uri"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1828
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_f

    .line 1830
    new-instance v9, Lcom/bd/android/shared/HTTPManager2$Builder;

    invoke-direct {v9}, Lcom/bd/android/shared/HTTPManager2$Builder;-><init>()V

    invoke-virtual {v9, v6}, Lcom/bd/android/shared/HTTPManager2$Builder;->SetURL(Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$Builder;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/bd/android/shared/HTTPManager2$Builder;->UseHTTPS(Z)Lcom/bd/android/shared/HTTPManager2$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bd/android/shared/HTTPManager2$Builder;->build()Lcom/bd/android/shared/HTTPManager2;

    move-result-object v6

    .line 1831
    invoke-virtual {v6, v10}, Lcom/bd/android/shared/HTTPManager2;->PerformPOST(Ljava/io/File;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v6

    .line 1832
    iget v6, v6, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    const/16 v9, 0xc8

    if-ne v6, v9, :cond_6

    .line 1835
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bitdefender/scanner/g;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v6}, Lcom/bitdefender/scanner/Scanner;->g(Lcom/bitdefender/scanner/Scanner;)Lcom/bitdefender/scanner/DBHandler;

    move-result-object v6

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getPkgname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/bitdefender/scanner/DBHandler;->deletePackage(Ljava/lang/String;)V

    .line 1836
    add-int/lit8 v4, v4, 0x1

    .line 1837
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1839
    const-string v6, "KATASTIF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UploadTask file upload COMPLETED: ISFILE =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getIsFile()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " PKG NAME: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getPkgname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    move v3, v4

    :goto_2
    move v4, v3

    move v3, v2

    move v2, v5

    :goto_3
    move v5, v2

    .line 1874
    goto/16 :goto_0

    .line 1784
    :cond_5
    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getPkgname()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1844
    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v4

    goto :goto_2

    .line 1851
    :cond_7
    :try_start_1
    const-string v6, "error"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1852
    if-eqz v6, :cond_8

    .line 1854
    const-string v9, "data"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1855
    if-eqz v6, :cond_8

    const-string v9, "file_exists"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1858
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bitdefender/scanner/g;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v6}, Lcom/bitdefender/scanner/Scanner;->g(Lcom/bitdefender/scanner/Scanner;)Lcom/bitdefender/scanner/DBHandler;

    move-result-object v6

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getPkgname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/bitdefender/scanner/DBHandler;->deletePackage(Ljava/lang/String;)V

    .line 1859
    add-int/lit8 v5, v5, 0x1

    .line 1860
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1862
    const-string v6, "KATASTIF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UploadTask file already EXISTS: ISFILE =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getIsFile()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " PKG NAME: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getPkgname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v2, v5

    goto :goto_3

    .line 1872
    :cond_9
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_3

    .line 1884
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bitdefender/scanner/g;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v6}, Lcom/bitdefender/scanner/Scanner;->g(Lcom/bitdefender/scanner/Scanner;)Lcom/bitdefender/scanner/DBHandler;

    move-result-object v6

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getPkgname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/bitdefender/scanner/DBHandler;->deletePackage(Ljava/lang/String;)V

    .line 1886
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1888
    const-string v6, "KATASTIF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UploadTask delete from DB - cannot access file: ISFILE =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getIsFile()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " PKG NAME: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/bitdefender/scanner/UploadData;->getPkgname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1893
    :catch_0
    move-exception v2

    .line 1894
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ScanSDK - uploadTask: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1900
    :cond_b
    if-nez v5, :cond_c

    if-nez v4, :cond_c

    if-eqz v3, :cond_d

    .line 1902
    :cond_c
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.bitdefender.scanner.KATASTIF_RESULT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1903
    const-string v6, "TOTAL_UPLOADED"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1904
    const-string v4, "TOTAL_EXISTS"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1905
    const-string v4, "TOTAL_FAILED"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bitdefender/scanner/g;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v3}, Lcom/bitdefender/scanner/Scanner;->c(Lcom/bitdefender/scanner/Scanner;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bitdefender/scanner/g;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v3}, Lcom/bitdefender/scanner/Scanner;->c(Lcom/bitdefender/scanner/Scanner;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1911
    :cond_d
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1913
    const-string v2, "KATASTIF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <<< UPLOAD TASK FINISHED LOCAL DATABASE REMAINING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bitdefender/scanner/g;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v4}, Lcom/bitdefender/scanner/Scanner;->g(Lcom/bitdefender/scanner/Scanner;)Lcom/bitdefender/scanner/DBHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bitdefender/scanner/DBHandler;->countPackages()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_e
    const/4 v2, 0x0

    return-object v2

    :cond_f
    move v2, v3

    move v3, v4

    goto/16 :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1753
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bitdefender/scanner/g;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
