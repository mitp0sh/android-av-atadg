.class public Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

.field private b:Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->c:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->d:Ljava/lang/String;

    .line 67
    const-string v0, "ServiceHandler.create() new"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->b:Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;

    .line 69
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->b:Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;

    invoke-direct {v0, p1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->c:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->d:Ljava/lang/String;

    .line 45
    const-string v1, ""

    .line 46
    const-string v0, ""

    .line 49
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 51
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceHandler.create() u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->b:Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;

    .line 60
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->b:Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;

    invoke-direct {v0, p1, p2, p3, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    .line 62
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->c:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->d:Ljava/lang/String;

    .line 64
    return-void

    .line 54
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 192
    :try_start_0
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyCrypto;->getRsaPublicKeyFromWinCspBlob([B)Ljava/security/PublicKey;

    move-result-object v0

    .line 193
    const-string v1, "RSA/None/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 194
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 195
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 196
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 201
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected buy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 274
    const-string v0, "ServerHandler.buy()"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    if-nez v0, :cond_0

    const/4 v0, -0x2

    .line 283
    :goto_0
    return v0

    .line 281
    :cond_0
    invoke-static {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->checkStatus(Ljava/lang/StringBuilder;)I

    move-result v0

    goto :goto_0
.end method

.method public cancelSubscription(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->checkUpdateServerRegion(Landroid/content/Context;)V

    .line 384
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doTerminateSubscription()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 385
    invoke-static {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getSubscriptionState(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 386
    return v0
.end method

.method protected checkUpdateServerRegion(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 305
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 306
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getUpdateServerRegion()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->getUpdateServerRegion(Landroid/content/Context;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    invoke-static {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->checkStatus(Ljava/lang/StringBuilder;)I

    move-result v2

    if-nez v2, :cond_1

    .line 311
    const-string v2, "R="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 312
    if-lez v2, :cond_1

    .line 313
    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 315
    if-ltz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    const-string v0, "Empty update server region delivered -> use europ"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 319
    const-string v0, "europ"

    .line 323
    :goto_0
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setUpdateServerRegion(Ljava/lang/String;)V

    .line 326
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->c:Ljava/lang/String;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->d:Ljava/lang/String;

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->b:Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;

    invoke-direct {v0, p1, v1, v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    .line 330
    :cond_1
    return-void

    .line 321
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set update server region to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V
    .locals 4

    .prologue
    .line 209
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->isConfirmNecessary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->isUpdateProcessed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateComponent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getSessionKey()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doConfirm(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 213
    :cond_0
    return-void

    .line 210
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method protected confirmComputerIdChanged(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)I
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateComponent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->confirmComputerIdChanged(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    if-nez v0, :cond_0

    const/4 v0, -0x2

    .line 295
    :goto_0
    return v0

    .line 294
    :cond_0
    invoke-static {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->checkStatus(Ljava/lang/StringBuilder;)I

    move-result v0

    goto :goto_0
.end method

.method protected createCommandSession(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateComponent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doCreateCommandSession(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 339
    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setServerStatusAndKeyFromServerResponse(Ljava/lang/StringBuilder;)V

    .line 340
    return-void
.end method

.method protected getFileList(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateComponent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getSessionKey()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doGetFiles(Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setUpdateFileListFromServerResponse(Ljava/lang/StringBuilder;)V

    .line 117
    return-void
.end method

.method protected getRed()Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 257
    const-string v0, "ServerHandler.getRed()"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doGetRed()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    if-nez v0, :cond_0

    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    const/4 v1, -0x2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-object v0

    .line 263
    :cond_0
    invoke-static {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getRed(Ljava/lang/StringBuilder;)Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubscriptionState(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->checkUpdateServerRegion(Landroid/content/Context;)V

    .line 372
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doGetSubscriptionState()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 373
    invoke-static {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getSubscriptionState(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 374
    return v0
.end method

.method protected getUpdateActionContent(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateActionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doGetUpdateActionContent(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setUpdateActionContentFromServerResponse(Ljava/lang/StringBuilder;)V

    .line 107
    return-void
.end method

.method protected getUpdateActions(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->checkUpdateServerRegion(Landroid/content/Context;)V

    .line 95
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateComponent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doGetUpdateActionId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setUpdateActionFromServerResponse(Ljava/lang/StringBuilder;)V

    .line 97
    return-void
.end method

.method protected getUpdateInfo(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateComponent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getSessionKey()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, p2, v1, v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doGetFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->getHeader()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setServerStatusAndKeyFromServerResponse(Ljava/lang/StringBuilder;)V

    .line 225
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->getData()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->convertStreamToSB(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setUpdateInfoFromXmlFile(Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method protected getVersion(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->checkUpdateServerRegion(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateComponent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doGetVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setVersionInfoFromServerResponse(Ljava/lang/StringBuilder;)V

    .line 83
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getProductId()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProductId(I)V

    .line 85
    return-void
.end method

.method protected loadUpdateFile(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;
    .locals 9

    .prologue
    const/4 v8, -0x5

    const/16 v7, 0x165a

    const/4 v2, 0x0

    .line 134
    if-eqz p6, :cond_1

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getRsaPublicKeyBase64()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p2, v7}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setServerStatus(I)V

    .line 185
    :cond_0
    :goto_0
    return-object v2

    .line 140
    :cond_1
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 142
    const-string v0, ""

    .line 143
    if-eqz p6, :cond_6

    .line 145
    :try_start_0
    const-string v0, "DESede"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 146
    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 147
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 148
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "DESede"

    invoke-direct {v1, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getRsaPublicKeyBase64()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_1
    iget-object v4, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateComponent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getSessionKey()I

    move-result v6

    invoke-virtual {v4, p3, v5, v6, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doGetFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;

    move-result-object v4

    .line 160
    if-eqz p6, :cond_5

    .line 162
    :try_start_1
    const-string v0, "DESede/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 163
    const/4 v0, 0x2

    invoke-virtual {v5, v0, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 164
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->getData()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :goto_2
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->getHeader()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setServerStatusAndKeyFromServerResponse(Ljava/lang/StringBuilder;)V

    .line 172
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v1

    if-nez v1, :cond_0

    .line 175
    if-eqz p5, :cond_3

    .line 176
    if-eqz v0, :cond_2

    :goto_3
    invoke-static {p1, v0, p4}, Lde/gdata/mobilesecurity/util/MyFileHandler;->writeToExternalStorageDownloadFolder(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 178
    if-nez v2, :cond_0

    invoke-virtual {p2, v8}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setServerStatus(I)V

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {p2, v7}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setServerStatus(I)V

    goto :goto_0

    .line 165
    :catch_1
    move-exception v0

    .line 166
    invoke-virtual {p2, v7}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setServerStatus(I)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->getData()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_3

    .line 181
    :cond_3
    if-eqz v0, :cond_4

    :goto_4
    invoke-static {p1, v0, p4}, Lde/gdata/mobilesecurity/util/MyFileHandler;->writePrivateFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    .line 183
    if-nez v0, :cond_0

    invoke-virtual {p2, v8}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setServerStatus(I)V

    goto/16 :goto_0

    .line 181
    :cond_4
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->getData()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_1

    .line 140
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;
    .locals 12

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->checkUpdateServerRegion(Landroid/content/Context;)V

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerHandler.register() no="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v1 .. v11}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    if-nez v1, :cond_0

    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_0
    return-object v1

    .line 247
    :cond_0
    invoke-static {v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getAccountData(Ljava/lang/StringBuilder;)Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;

    move-result-object v1

    goto :goto_0
.end method

.method protected registerFreeVersion(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getSessionKey()I

    move-result v1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateComponent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doRegisterFreeVersion(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 362
    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setServerStatusAndKeyFromServerResponse(Ljava/lang/StringBuilder;)V

    .line 363
    return-void
.end method

.method protected sendMail(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 350
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getSessionKey()I

    move-result v4

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateComponent()Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->doSendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setServerStatusAndKeyFromServerResponse(Ljava/lang/StringBuilder;)V

    .line 353
    return-void
.end method
