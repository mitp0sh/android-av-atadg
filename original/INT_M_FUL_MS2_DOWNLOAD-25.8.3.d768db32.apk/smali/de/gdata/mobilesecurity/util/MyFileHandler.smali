.class public Lde/gdata/mobilesecurity/util/MyFileHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs cleanup([Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 160
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 161
    if-eqz v2, :cond_0

    .line 163
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v2

    goto :goto_1

    .line 169
    :cond_1
    return-void
.end method

.method public static varargs cleanup([Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 175
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 176
    if-eqz v2, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :catch_0
    move-exception v2

    goto :goto_1

    .line 184
    :cond_1
    return-void
.end method

.method public static varargs cleanup([Ljava/io/Reader;)V
    .locals 3

    .prologue
    .line 145
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 146
    if-eqz v2, :cond_0

    .line 148
    :try_start_0
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v2

    goto :goto_1

    .line 154
    :cond_1
    return-void
.end method

.method public static copyPrivateFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 242
    .line 250
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 251
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 253
    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 255
    const/16 v0, 0x400

    :try_start_4
    new-array v8, v0, [B

    .line 256
    invoke-virtual {v2, v8}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    move v5, v0

    move v0, v7

    :goto_0
    if-lez v5, :cond_0

    .line 257
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v4, v8, v9, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 258
    add-int/2addr v5, v0

    .line 256
    :try_start_6
    invoke-virtual {v2, v8}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result v0

    move v11, v0

    move v0, v5

    move v5, v11

    goto :goto_0

    .line 260
    :cond_0
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move v5, v6

    .line 265
    :goto_1
    new-array v8, v10, [Ljava/io/InputStream;

    aput-object v2, v8, v7

    aput-object v1, v8, v6

    invoke-static {v8}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V

    .line 266
    new-array v1, v10, [Ljava/io/OutputStream;

    aput-object v4, v1, v7

    aput-object v3, v1, v6

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/OutputStream;)V

    .line 268
    if-nez v5, :cond_1

    .line 269
    const/4 v0, -0x1

    .line 271
    :cond_1
    return v0

    .line 262
    :catch_0
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    move-object v5, v0

    move v0, v7

    .line 263
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move v5, v7

    goto :goto_1

    .line 262
    :catch_1
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v4, v5

    move-object v5, v0

    move v0, v7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v5, v0

    move v0, v7

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v5

    move-object v5, v0

    move v0, v7

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v5, v0

    move v0, v7

    goto :goto_2

    :catch_5
    move-exception v5

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v11, v0

    move v0, v5

    move-object v5, v11

    goto :goto_2
.end method

.method public static copyPrivateFileToExternalStoradeFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 196
    .line 204
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 209
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 217
    :try_start_3
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 219
    const/16 v4, 0x400

    :try_start_4
    new-array v7, v4, [B

    .line 220
    invoke-virtual {v1, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    :goto_0
    if-lez v4, :cond_1

    .line 221
    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 220
    invoke-virtual {v1, v7}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    goto :goto_0

    .line 212
    :cond_0
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "External Storage not available."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 224
    :catch_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    move-object v3, v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    .line 225
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move v4, v6

    .line 227
    :goto_2
    new-array v7, v9, [Ljava/io/InputStream;

    aput-object v1, v7, v6

    aput-object v0, v7, v5

    invoke-static {v7}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V

    .line 228
    new-array v0, v9, [Ljava/io/OutputStream;

    aput-object v3, v0, v6

    aput-object v2, v0, v5

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/OutputStream;)V

    .line 230
    return v4

    .line 222
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move v4, v5

    .line 226
    goto :goto_2

    .line 224
    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v3, v4

    move-object v10, v0

    move-object v0, v4

    move-object v4, v10

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v10, v1

    move-object v1, v4

    move-object v4, v10

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method public static copyRawResourceToPrivateFile(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 283
    .line 290
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 291
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 293
    :try_start_3
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 295
    const/16 v4, 0x400

    :try_start_4
    new-array v7, v4, [B

    .line 296
    invoke-virtual {v1, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    :goto_0
    if-lez v4, :cond_0

    .line 297
    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 296
    invoke-virtual {v1, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move v4, v5

    .line 303
    :goto_1
    new-array v7, v9, [Ljava/io/InputStream;

    aput-object v1, v7, v6

    aput-object v0, v7, v5

    invoke-static {v7}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V

    .line 304
    new-array v0, v9, [Ljava/io/OutputStream;

    aput-object v3, v0, v6

    aput-object v2, v0, v5

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/OutputStream;)V

    .line 306
    return v4

    .line 300
    :catch_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    move-object v3, v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    .line 301
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move v4, v6

    goto :goto_1

    .line 300
    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v3, v4

    move-object v10, v0

    move-object v0, v4

    move-object v4, v10

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v10, v1

    move-object v1, v4

    move-object v4, v10

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_2
.end method

.method public static writePrivateFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 100
    .line 108
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 111
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :try_start_2
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    const/16 v3, 0x400

    :try_start_3
    new-array v6, v3, [B

    .line 115
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    :goto_0
    if-lez v3, :cond_0

    .line 116
    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 115
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v3, v4

    .line 129
    :goto_1
    new-array v6, v8, [Ljava/io/InputStream;

    aput-object v0, v6, v5

    aput-object p1, v6, v4

    invoke-static {v6}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V

    .line 130
    new-array v0, v8, [Ljava/io/OutputStream;

    aput-object v2, v0, v5

    aput-object v1, v0, v4

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/OutputStream;)V

    .line 132
    if-eqz v3, :cond_1

    .line 133
    const-string v0, "MyFileHandler.writeSigFile() successful"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 137
    :goto_2
    return v4

    .line 124
    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    move-object v9, v0

    move-object v0, v3

    move-object v3, v9

    .line 125
    :goto_3
    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    move v3, v5

    goto :goto_1

    .line 136
    :cond_1
    const-string v0, "MyFileHandler.writeSigFile() failed"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move v4, v5

    .line 137
    goto :goto_2

    .line 124
    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v0, v3

    move-object v3, v9

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_3
.end method

.method public static writeToExternalStorageDownloadFolder(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 30
    .line 40
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 50
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    :try_start_3
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 66
    const/16 v6, 0x400

    :try_start_4
    new-array v8, v6, [B

    .line 67
    invoke-virtual {v0, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    :goto_0
    if-lez v6, :cond_1

    .line 68
    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 67
    invoke-virtual {v0, v8}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v6

    goto :goto_0

    .line 58
    :cond_0
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "External Storage not available."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 76
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    move-object v0, v7

    .line 77
    :goto_1
    invoke-static {v6}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    move-object v6, v3

    move v3, v5

    .line 81
    :goto_2
    new-array v8, v10, [Ljava/io/InputStream;

    aput-object v0, v8, v5

    aput-object p1, v8, v4

    invoke-static {v8}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V

    .line 82
    new-array v0, v10, [Ljava/io/OutputStream;

    aput-object v2, v0, v5

    aput-object v1, v0, v4

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/OutputStream;)V

    .line 84
    if-eqz v3, :cond_2

    .line 87
    :goto_3
    return-object v6

    .line 71
    :cond_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object v6, v3

    move v3, v4

    .line 78
    goto :goto_2

    :cond_2
    move-object v6, v7

    .line 87
    goto :goto_3

    .line 76
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v1, v7

    move-object v2, v7

    move-object v0, v7

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    move-object v0, v7

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v7

    goto :goto_1

    :catch_4
    move-exception v6

    goto :goto_1
.end method
