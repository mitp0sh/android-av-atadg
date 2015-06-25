.class Lde/gdata/mobilesecurity/statistics/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;)V
    .locals 3

    .prologue
    .line 202
    iput-object p1, p0, Lde/gdata/mobilesecurity/statistics/b;->a:Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    .line 203
    const-class v0, Lde/gdata/mobilesecurity/statistics/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 204
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/b;->a:Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/b;->a:Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;Z)V

    .line 214
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/b;->a:Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 215
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, v5}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getUpdateServerRegion()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "europ"

    .line 219
    :cond_2
    const-string v3, "https://#region#-mobile-comchan-lab.gdatasoftware.com/mobile/"

    const-string v4, "#region#"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lde/gdata/mobilesecurity/statistics/b;->a:Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Lde/gdata/mobilesecurity/statistics/c;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/statistics/c;-><init>(Lde/gdata/mobilesecurity/statistics/b;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v7

    .line 231
    array-length v8, v7

    move v4, v2

    :goto_1
    if-ge v4, v8, :cond_8

    aget-object v9, v7, v4

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x240c8400

    cmp-long v0, v10, v12

    if-gez v0, :cond_7

    .line 235
    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    :cond_3
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 238
    new-instance v10, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;

    invoke-direct {v10, v0}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;-><init>(Ljava/net/URLConnection;)V

    .line 239
    const-string v3, "protocol"

    const-string v11, "1"

    invoke-virtual {v10, v3, v11}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v3, "product"

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v11

    invoke-virtual {v11}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersionName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "MSAPGM_"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v11, "debug"

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v11, v3}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    const-string v3, "xml"

    invoke-virtual {v5, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/io/File;)V

    .line 245
    iget-object v3, p0, Lde/gdata/mobilesecurity/statistics/b;->a:Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    invoke-virtual {v10}, Lde/gdata/mobilesecurity/statistics/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v3, v10}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;Ljava/io/InputStream;)Z

    .line 246
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    .line 248
    const/16 v0, 0xc8

    if-ne v3, v0, :cond_6

    move v0, v1

    .line 249
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Server response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 251
    if-eqz v0, :cond_4

    invoke-virtual {v5, v9}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 231
    :cond_4
    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_5
    move v3, v2

    .line 242
    goto :goto_2

    :cond_6
    move v0, v2

    .line 248
    goto :goto_3

    .line 254
    :cond_7
    invoke-virtual {v5, v9}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 256
    :catch_0
    move-exception v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while sending protocols: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 260
    :cond_8
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/b;->a:Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->a(Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;Z)V

    .line 261
    iget-object v0, p0, Lde/gdata/mobilesecurity/statistics/b;->a:Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->stopSelf()V

    goto/16 :goto_0
.end method
