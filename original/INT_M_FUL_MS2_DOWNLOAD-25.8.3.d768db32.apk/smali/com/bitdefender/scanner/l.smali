.class Lcom/bitdefender/scanner/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a()I
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v0, 0x2

    .line 73
    :goto_0
    return v0

    .line 64
    :cond_0
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static declared-synchronized a(Landroid/content/Context;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 124
    const-class v7, Lcom/bitdefender/scanner/l;

    monitor-enter v7

    const/4 v0, 0x1

    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getSDKversion()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    monitor-exit v7

    return v0

    .line 131
    :cond_1
    const/4 v8, 0x0

    .line 135
    :try_start_1
    const-string v1, "UEsDBAoAAAAAAOyFNEOLntnTAQAAAAEAAAAFAAAAYS50eHRBUEsDBAoAAAAAAAuGNEMxz9BKAQAAAAEAAAAFAAAAYi50eHRCUEsBAhQACgAAAAAA7IU0Q4ue2dMBAAAAAQAAAAUAAAAAAAAAAAAgAAAAAAAAAGEudHh0UEsBAhQACgAAAAAAC4Y0QzHP0EoBAAAAAQAAAAUAAAAAAAAAAAAgAAAAJAAAAGEudHh0UEsFBgAAAAACAAIAZgAAAEgAAAAAAA=="
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    const-string v2, "masterkey"

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 147
    const/4 v4, 0x0

    :try_start_3
    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 148
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 150
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 152
    const/16 v1, 0x400

    :try_start_5
    new-array v1, v1, [B

    .line 154
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 156
    const/4 v10, 0x0

    invoke-virtual {v4, v1, v10, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    .line 162
    :catch_0
    move-exception v1

    .line 164
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_2

    const-string v9, "Duplicate entry name"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v1

    if-eqz v1, :cond_2

    move v0, v6

    .line 172
    :cond_2
    if-eqz v3, :cond_3

    .line 176
    :try_start_7
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 185
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 189
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 196
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 200
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 207
    :cond_5
    :goto_5
    if-eqz v2, :cond_0

    .line 209
    :try_start_a
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 160
    :cond_6
    :try_start_b
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 172
    if-eqz v1, :cond_7

    .line 176
    :try_start_c
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 185
    :cond_7
    :goto_6
    if-eqz v5, :cond_8

    .line 189
    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 196
    :cond_8
    :goto_7
    if-eqz v4, :cond_9

    .line 200
    :try_start_e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 207
    :cond_9
    :goto_8
    if-eqz v2, :cond_0

    .line 209
    :try_start_f
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_0

    .line 172
    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    :goto_9
    if-eqz v3, :cond_a

    .line 176
    :try_start_10
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 185
    :cond_a
    :goto_a
    if-eqz v5, :cond_b

    .line 189
    :try_start_11
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 196
    :cond_b
    :goto_b
    if-eqz v4, :cond_c

    .line 200
    :try_start_12
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 207
    :cond_c
    :goto_c
    if-eqz v2, :cond_d

    .line 209
    :try_start_13
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_d
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 178
    :catch_1
    move-exception v1

    goto :goto_6

    .line 191
    :catch_2
    move-exception v1

    goto :goto_7

    .line 202
    :catch_3
    move-exception v1

    goto :goto_8

    .line 178
    :catch_4
    move-exception v1

    goto :goto_3

    .line 191
    :catch_5
    move-exception v1

    goto :goto_4

    .line 202
    :catch_6
    move-exception v1

    goto :goto_5

    .line 178
    :catch_7
    move-exception v1

    goto :goto_a

    .line 191
    :catch_8
    move-exception v1

    goto :goto_b

    .line 202
    :catch_9
    move-exception v1

    goto :goto_c

    .line 172
    :catchall_2
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_9

    .line 162
    :catch_a
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto :goto_2

    :catch_b
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    goto :goto_2

    :catch_c
    move-exception v1

    move-object v4, v3

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    if-nez p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static declared-synchronized a(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 79
    const-class v2, Lcom/bitdefender/scanner/l;

    monitor-enter v2

    .line 82
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v4, Ljava/util/jar/JarInputStream;

    invoke-direct {v4, v0}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    :cond_0
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 91
    if-eqz v5, :cond_0

    .line 96
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    .line 98
    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    const/4 v5, 0x2

    if-lt v0, v5, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 107
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :goto_2
    monitor-exit v2

    return v0

    .line 96
    :cond_1
    :try_start_3
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    .line 115
    :goto_3
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in Utils - hasClassesDexDuplicate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bd/android/shared/BDLogging;->Log_ERROR_NO_STACKTRACE(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 113
    :catch_1
    move-exception v1

    goto :goto_3

    .line 109
    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 219
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 220
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "KATASTIF"

    const-string v2, "WIFI CONNECTED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 233
    :goto_0
    return v0

    .line 229
    :cond_1
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    const-string v0, "KATASTIF"

    const-string v1, "WIFI NOT CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 238
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 239
    const-string v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 240
    const-string v2, "scale"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 242
    invoke-static {}, Lcom/bd/android/shared/BDUtils;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    const-string v2, "KATASTIF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BATTERY LEVEl: rawlevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    mul-int/lit8 v0, v0, 0x32

    div-int/lit8 v0, v0, 0x64

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
